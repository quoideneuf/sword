<?php

/**
 * @file tests/PKPSwordDepositTest.php
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2000-2020 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class PKPSwordDepositTest
 * @see PKPSwordDeposit
 *
 * @brief Tests for the PKPSwordDeposit class.
 */

require_once __DIR__ . '/../classes/PKPSwordDeposit.inc.php';

class MockSessionManager {
	function getUserSession() {
		return new class {
			function getSessionVar($__) {
				return 'en_US';
			}
		};
	}
}

class MockRequest {
	function getUserVar($param) {
		return null;
	}

	function getJournal() {
		return null;
	}

	function getSite() {
		return new class {
			function getSupportedLocaleNames() {
				return ['en_US'];
			}

			function getPrimaryLocale() {
				return 'en_US';
			}
		};
	}

	function getCookieVar($param) {
		return 'en_US';
	}
}

class TestablePKPSwordDeposit extends PKPSwordDeposit {

	function getPackage (){
		return $this->_package;
	}

	function getOutPath () {
		return $this->_outPath;
	}
}

class PKPSwordDepositTest extends PHPUnit\Framework\TestCase {

	static $metsDocPaths = [];

	public static function setUpBeforeClass(): void {
		define('INDEX_FILE_LOCATION', 'foo');
		define('BASE_SYS_DIR', dirname(INDEX_FILE_LOCATION));
		require(BASE_SYS_DIR . '/lib/pkp/includes/functions.inc.php');
		import('classes.core.Application');
		$application = new Application();
		$mockSessionManager = new MockSessionManager();
		Registry::set('sessionManager', $mockSessionManager);
		$submissionDAO = $application->getSubmissionDAO();
		AppLocale::initialize(new MockRequest);
		foreach ([9, 17] as $submissionId) {
			$submission = $submissionDAO->getById($submissionId);
			$deposit = new TestablePKPSwordDeposit($submission);
			$deposit->setMetadata(null);
			$deposit->addGalleys();
			$deposit->createPackage();
			$sdir = dirname(__FILE__);
			self::$metsDocPaths[$submissionId] = $deposit->getOutPath() . "/files/mets.xml";
			copy($deposit->getOutPath() . "/deposit.zip", dirname(__FILE__) . '/submission-' . $submissionId . '-deposit.zip');
		}
	}

	public function testMetsCompliance() {
		foreach ([9, 17] as $submissionId) {
			$xml = new DOMDocument();
			$xml->load(self::$metsDocPaths[$submissionId]);
			$this->assertTrue($xml->schemaValidate(dirname(__FILE__) . '/mets.xsd'));
		}
	}

	public function testModsCompliance() {
		foreach ([9, 17] as $submissionId) {
			$xml = new DOMDocument();
			$xml->load(self::$metsDocPaths[$submissionId]);
			$mods = new DOMDocument();
			$mods->loadXML($xml->saveXML($xml->getElementsByTagName("mods")[0]));
			$this->assertTrue($mods->schemaValidate(dirname(__FILE__) . '/mods-3-7.xsd'));
		}
	}

	public function testPackageContents() {
		$metsDoc = simplexml_load_file(self::$metsDocPaths[9]);
		$metsDoc->registerXPathNamespace("mets", 'http://www.loc.gov/METS/');
		$metsDoc->registerXPathNamespace("epdcx", "http://purl.org/eprint/epdcx/2006-11-16/");
		$metsDoc->registerXPathNamespace("xlink", "http://www.w3.org/1999/xlink");

		$creatorString = $metsDoc->xpath("//epdcx:statement[@epdcx:propertyURI='http://purl.org/dc/elements/1.1/creator']/epdcx:valueString/text()")[0]->__toString();
		$this->assertEquals($creatorString, "June Forcht; Colorado State University");

		$titleString = $metsDoc->xpath("//epdcx:statement[@epdcx:propertyURI='http://purl.org/dc/elements/1.1/title']/epdcx:valueString/text()")[0]->__toString();
		$this->assertEquals($titleString, "Cyclomatic Complexity: theme and variations");

		$filename = $metsDoc->xpath("//mets:fileSec/mets:fileGrp/mets:file/mets:FLocat/@xlink:href")[0]->__toString();
		$this->assertEquals($filename, "cyclomaticcomplexitythemeandvariations.pdf");
	}

	public function testModsAuthors() {	
		$metsDoc = simplexml_load_file(self::$metsDocPaths[17]);
		$metsDoc->registerXPathNamespace("mets", "http://www.loc.gov/METS/");
		$metsDoc->registerXPathNamespace("mods", "http://www.loc.gov/mods/v3");
		$metsDoc->registerXPathNamespace("xlink", "http://www.w3.org/1999/xlink");

		echo $metsDoc->saveXML();
		$primaryContactFamilyName = $metsDoc->xpath("//mods:name[mods:role/mods:roleTerm='pkp_primary_contact']/mods:namePart[@type='family']")[0]->__toString();
		$this->assertEquals($primaryContactFamilyName, 'Al-Khafaji');
	}
}
