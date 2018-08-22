<?php

/**
 * @file plugins/generic/sword/classes/DepositPoint.inc.php
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class DepositPoint
 * @ingroup plugins_generic_sword_classes
 *
 * @brief Deposit point entity.
 */

class DepositPoint extends DataObject {
	/**
	 * Get the context ID of the deposit point.
	 * @return int
	 */
	public function getContextId() {
		return $this->getData('contextId');
	}
	
	/**
	 * Set the journal ID of the deposit point.
	 * @param $contextId int
	 */
	public function setContextId($contextId) {
		return $this->setData('contextId', $contextId);
	}

	/**
	 * Get deposit point display sequence.
	 * @return float
	 */
	public function getSequence() {
		return $this->getData('seq');
	}

	/**
	 * Set deposit point display sequence
	 * @param $seq float
	 */
	public function setSequence($seq) {
		return $this->setData('seq', $seq);
	}

	/**
	 * Get the localized name
	 * @return string
	 */
	public function getLocalizedName() {
		return $this->getLocalizedData('name');
	}

	/**
	 * Get deposit point name
	 * @param $locale string
	 * @return string
	 */
	public function getName($locale) {
		return $this->getData('name', $locale);
	}

	/**
	 * Set deposit point name
	 * @param $title string
	 * @param $locale string
	 */
	public function setName($name, $locale) {
		return $this->setData('name', $name, $locale);
	}

	/**
	 * Get SWORD username
	 * @return string
	 */
	public function getSwordUsername() {
		return $this->getData('swordUsername');
	}

	/**
	 * Set SWORD username
	 * @param $swordUsername string
	 */
	public function setSwordUsername($swordUsername) {
		return $this->setData('swordUsername', $swordUsername);
	}

	/**
	 * Get SWORD password
	 * @return string
	 */
	public function getSwordPassword() {
		return $this->getData('swordPassword');
	}

	/**
	 * Set SWORD password
	 * @param $swordUsername string
	 */
	public function setSwordPassword($swordPassword) {
		return $this->setData('swordPassword', $swordPassword);
	}

	/**
	 * Get SWORD url
	 * @return string
	 */
	public function getSwordUrl() {
		return $this->getData('url');
	}

	/**
	 * Set SWORD url
	 * @param $swordUrl string
	 */
	public function setSwordUrl($swordUrl) {
		return $this->setData('url', $swordUrl);
	}

	/**
	 * Get deposit point type
	 * @return int SWORD_DEPOSIT_TYPE_...
	 */
	public function getType() {
		return $this->getData('type');
	}

	/**
	 * Set deposit point type
	 * @param $type int SWORD_DEPOSIT_TYPE_...
	 */
	public function setType($type) {
		return $this->setData('type', $type);
	}
}
