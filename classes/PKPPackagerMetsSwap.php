<?php

require_once dirname(__FILE__) . '/../libs/swordappv2/packager_mets_swap.php';

class PKPPackagerMetsSwap extends PackagerMetsSwap{

	public $sac_name_records = [];

	function writeFileGrp($fh) {
		if($this->sac_filecount) {
			parent::writeFileGrp($fh);
		}
	}

	function writeDmdSec($fh) {
		parent::writeDmdSec($fh);
		if (!empty($this->sac_name_records)) {
			fwrite($fh, "<dmdSec ID=\"sword-mets-dmd-2\" GROUPID=\"sword-mets-dmd-2_group-2\">\n");
			fwrite($fh, "<mdWrap LABEL=\"MODS Metadata\" MDTYPE=\"MODS\" MIMETYPE=\"text/xml\">\n");
			fwrite($fh, "<xmlData>\n");
			fwrite($fh, "<mods version=\"3.7\" xmlns=\"http://www.loc.gov/mods/v3\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"https://www.loc.gov/standards/mods/xml.xsd\">\n");
			foreach($this->sac_name_records as $name_record) {
				fwrite($fh, "<name type=\"personal\">\n");
				fwrite($fh, "<namePart type=\"given\">" . $name_record['given'] . "</namePart>");
				fwrite($fh, "<namePart type=\"family\">" . $name_record['family'] . "</namePart>");
				fwrite($fh, "<nameIdentifier type=\"email\">" . $name_record['email'] . "</nameIdentifier>");
				fwrite($fh, "<role><roleTerm>author</roleTerm></role>");
				if ($name_record['primary_contact']){
					fwrite($fh, "<role><roleTerm>pkp_primary_contact</roleTerm></role>");
				}
				fwrite($fh, "</name>\n");
			}
			fwrite($fh, "</mods>\n");
			fwrite($fh, "</xmlData>\n");
			fwrite($fh, "</mdWrap>\n");
			fwrite($fh, "</dmdSec>\n");
		}
	}

	function setPrimaryAuthor($author) {
		$this->primaryAuthor = $author;
	}
}
