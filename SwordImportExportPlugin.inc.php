<?php 

/**
 * @file plugins/generic/sword/SwordImportExportPlugin.inc.php
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class SwordImportExportPlugin
 * @ingroup plugins_generic_sword
 *
 * @brief Sword deposit plugin
 */

import('lib.pkp.classes.plugins.ImportExportPlugin');

class SwordImportExportPlugin extends ImportExportPlugin {
	/** @var SwordPlugin Parent plugin */
	protected $_parentPlugin = null; 

	/**
	 * Constructor
	 * @param $parentPlugin SwordPlugin
	 * 
	 */
	public function __construct($parentPlugin) {
		parent::__construct();
		$this->_parentPlugin = $parentPlugin;
	}

	/**
	 * Called as a plugin is registered to the registry
	 * @param $category String Name of category plugin was registered to
	 * @return boolean True if plugin initialized successfully; if false,
	 * 	the plugin will not be registered.
	 */
	public function register($category, $path) {
		$success = parent::register($category, $path);
		$this->addLocaleData();
		return $success;
	}

	/**
	 * Get reference to the sword plugin
	 * @return SwordPlugin
	 */
	public function getSwordPlugin() {
		return $this->_parentPlugin;
	}

	/**
	 * Get the name of this plugin. The name must be unique within
	 * its category.
	 * @return String name of plugin
	 */
	public function getName() {
		return 'SwordImportExportPlugin';
	}

	/**
	 * Get the display name.
	 * @return string
	 */
	public function getDisplayName() {
		return __('plugins.importexport.sword.displayName');
	}

	/**
	 * Get the display description.
	 * @return string
	 */
	public function getDescription() {
		return __('plugins.importexport.sword.description');
	}

	/**
	 * @copydoc Plugin::getTemplatePath($inCore)
	 */
	public function getTemplatePath($inCore = false) {
		return $this->getSwordPlugin()->getTemplatePath($inCore);
	}

	/**
	 * Display the plugin.
	 * @param $args array
	 * @param $request PKPRequest
	 */
	public function display($args, $request) {
		parent::display($args, $request);
		$templateMgr = TemplateManager::getManager($request);
		$context = $request->getContext();
		$journal = $request->getJournal();
		switch (array_shift($args)) {
			case 'index':
			case '':
				$this->getSwordPlugin()->import('classes.DepositPoint');
				$depositPointDao = DAORegistry::getDAO('DepositPointDAO');
				$depositPoints = $depositPointDao->getByContextId($context->getId());
				$depositPointsData = array('' => __('common.select'));
				while ($depositPoint = $depositPoints->next()) {
					$depositPointsData[$depositPoint->getId()] = $depositPoint->getLocalizedName();
				}
				$dispatcher = $request->getDispatcher();
				$settingUrl = $dispatcher->url(
					$request, ROUTE_PAGE,
					null, 'management', 'settings', 'website',
					array(),
					'swordSettings'
				);
				$templateMgr->assign('swordSettingsPageUrl', $settingUrl);
				$templateMgr->assign('depositPoints', $depositPointsData);
				$templateMgr->display($this->getTemplatePath() . 'articles.tpl');
				break;
			default:
				$dispatcher = $request->getDispatcher();
				$dispatcher->handle404();
		}
	}

	/**
	 * @copydoc PKPImportExportPlugin::executeCLI()
	 */
	public function executeCLI($scriptName, &$args) {
		throw new Exception('import/export tasks using the command-line not yet implemented!');
	}

	/**
	 * @copydoc PKPImportExportPlugin::usage
	 */
	public function usage($scriptName) {
		echo __('plugins.importexport.pubmed.cliUsage', array(
				'scriptName' => $scriptName,
				'pluginName' => $this->getName()
		)) . "\n";
	}
}
