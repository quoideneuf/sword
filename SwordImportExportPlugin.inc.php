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
		switch (array_shift($args)) {
			case 'index':
			case '':
				$this->getSwordPlugin()->import('classes.DepositPoint');
				$depositPointDao = DAORegistry::getDAO('DepositPointDAO');
				$depositPoints = $depositPointDao->getByContextId($context->getId(), null, SWORD_DEPOSIT_TYPE_MANAGER);
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

				import('lib.pkp.controllers.list.submissions.SelectSubmissionsListHandler');
				$selectSubmissionsListHandler = new SelectSubmissionsListHandler(array(
					'title' 	=> 'navigation.submissions',
					'count' 	=> 100,
					'inputName' 	=> 'articleId[]',
					'getParams' => array(
						'status'	=> STATUS_PUBLISHED,
					),
				));
				$selectSubmissionsConfig = json_encode($selectSubmissionsListHandler->getConfig());

				$templateMgr->assign(array(
					'selectedDepositPoint' 		=> $request->getUserVar('selectedDepositPoint'),
					'depositEditorial' 		=> $request->getUserVar('depositEditorial'),
					'depositGalleys' 		=> $request->getUserVar('depositGalleys'),
					'swordSettingsPageUrl' 		=> $settingUrl,
					'depositPoints' 		=> $depositPointsData,
					'pluginJavaScriptURL' 		=> $this->getSwordPlugin()->getJsUrl($request),
					'selectSubmissionsListData' 	=> $selectSubmissionsConfig,
				));
				$templateMgr->display($this->getTemplatePath() . 'articles.tpl');
				break;

			case 'deposit':
				$context = $request->getContext();
				$publishedArticleDao = DAORegistry::getDAO('PublishedArticleDAO');
				$this->getSwordPlugin()->import('classes.OJSSwordDeposit');

				$depositPointId = $request->getUserVar('depositPoint');
				$password = $request->getUserVar('swordPassword');
				if ($password == SWORD_PASSWORD_SLUG) {
					$depositPointDao = DAORegistry::getDAO('DepositPointDAO');
					$depositPoint = $depositPointDao->getById($depositPointId, $context->getId());
					if ($depositPoint) {
						$password = $depositPoint->getSwordPassword();
					}
				}

				$swordDepositPoint = $request->getUserVar('swordDepositPoint');
				$depositEditorial = $request->getUserVar('depositEditorial');
				$depositGalleys = $request->getUserVar('depositGalleys');
				$username = $request->getUserVar('swordUsername');
				$depositIds = array();

				$backLink = $request->url(
					null, null, null,
					array('plugin', $this->getName()),
					array(
						'selectedDepositPoint' => $depositPointId,
						'depositEditorial' => $depositEditorial,
						'depositGalleys' => $depositGalleys,
					)
				);

				$errors = array();
				// select at least one article
				$articleIds = $request->getUserVar('articleId');
				if (empty($articleIds)) {
					$errors[] = array(
						'title' => __('plugins.importexport.sword.requiredFieldErrorTitle'),
						'message' => __('plugins.importexport.sword.requiredFieldErrorMessage'),
					);
				}
				else {
					foreach ($articleIds as $articleId) {
						$publishedArticle = $publishedArticleDao->getByArticleId($articleId);
						try {
							$deposit = new OJSSwordDeposit($publishedArticle);
							$deposit->setMetadata($request);
							if ($depositGalleys) $deposit->addGalleys();
							if ($depositEditorial) $deposit->addEditorial();
							$deposit->createPackage();
							$response = $deposit->deposit($swordDepositPoint, $username, $password);
							$deposit->cleanup();
							$depositIds[] = $response->sac_id;
						}
						catch (Exception $e) {
							$errors[] = array(
								'title' => $publishedArticle->getLocalizedTitle(),
								'message' => $e->getMessage(),
							);
						}
					}
				}

				if (!empty($errors)) {
					$errorMessage = '<dl>';
					foreach ($errors as $error) {
						$errorMessage .= "<dt>" . htmlentities($error['title']) . "</dt>";
						$errorMessage .= "<dd>" . htmlentities($error['message']) . "</dd>";
					}
					$errorMessage .= '</dl>';
					$templateMgr->assign(array(
						'title' => __('plugins.importexport.sword.depositFailed'),
						'messageTranslated' => $errorMessage,
						'backLink' => $backLink,
						'backLinkLabel' => 'common.back'
					));
				}
				else {
					$templateMgr->assign(array(
						'title' => __('plugins.importexport.sword.depositSuccessful'),
						'message' => 'plugins.importexport.sword.depositSuccessfulDescription',
						'backLink' => $backLink,
						'backLinkLabel' => 'common.continue'
					));
				}
				$messageTemplateFile = $this->getSwordPlugin()->getTemplatePath() . 'message.tpl';
				$output = $templateMgr->fetch($messageTemplateFile);
				return new JSONMessage(true, $output);
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
		throw new Exception('SWORD plugin command-line import/export not yet implemented!');
	}

	/**
	 * @copydoc PKPImportExportPlugin::usage
	 */
	public function usage($scriptName) {
	}
}
