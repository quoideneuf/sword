<?php

/**
* @file plugins/generic/sword/DepositPointsForm.inc.php
*
* Copyright (c) 2003-2018 Simon Fraser University
* Copyright (c) 2003-2018 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* @class DepositPointsForm
* @ingroup plugins_generic_sword
*
* @brief Form for SWORD plugin deposits points management
*/

import('lib.pkp.classes.form.Form');

class DepositPointsForm extends Form {
	/** @var $_context Context */
	protected $_context = null;
	
	/** @var $_plugin SwordPlugin */
	protected $_plugin = null;
	
	/**
	 * Constructor
	 * @param $plugin SwordPlugin
	 * @param $context Context
	 */
	public function __construct(SwordPlugin $plugin, Context $context) {
		$this->_plugin = $plugin;
		$this->_context = $context;
		parent::__construct($plugin->getTemplatePath() . 'depositPoints.tpl');
	}
}
