<?php

/**
 * @file plugins/generic/sword/SwordPlugin.inc.php
 *
 * Copyright (c) 2013-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class SwordPlugin
 * @ingroup plugins_generic_sword
 *
 * @brief SWORD deposit plugin class
 */

import('lib.pkp.classes.plugins.GenericPlugin');

define('SWORD_DEPOSIT_TYPE_AUTOMATIC',		1);
define('SWORD_DEPOSIT_TYPE_OPTIONAL_SELECTION',	2);
define('SWORD_DEPOSIT_TYPE_OPTIONAL_FIXED',	3);
define('SWORD_DEPOSIT_TYPE_MANAGER',		4);

define('SWORD_PASSWORD_SLUG', '******');

class SwordPlugin extends GenericPlugin {
	/**
	 * Register the plugin, if enabled
	 * @param $category string
	 * @param $path string
	 * @return boolean
	 */
	public function register($category, $path) {
		if (parent::register($category, $path)) {
			HookRegistry::register('PluginRegistry::loadCategory', array(&$this, 'callbackLoadCategory'));
			if ($this->getEnabled()) {
				$this->import('classes.DepositPointDAO');
				$depositPointDao = new DepositPointDAO($this);
				DAORegistry::registerDAO('DepositPointDAO', $depositPointDao);

				HookRegistry::register('LoadHandler', array($this, 'callbackSwordLoadHandler'));
				HookRegistry::register('Templates::Management::Settings::website', array($this, 'callbackSettingsTab'));
				HookRegistry::register('LoadComponentHandler', array($this, 'setupGridHandler'));
				HookRegistry::register('EditorAction::recordDecision', array($this, 'callbackAuthorDeposits'));
			}
			return true;
		}
		return false;
	}

	/**
	 * Performs automatic deposit on accept decision
	 * @param $hookName string
	 * @param $args array
	 */
	public function callbackAuthorDeposits($hookName, $args) {
		$submission =& $args[0];
		$editorDecision =& $args[1];
		$decision = $editorDecision['decision'];

		// Determine if the decision was an "Accept"
		if ($decision != SUBMISSION_EDITOR_DECISION_ACCEPT) return false;

		// Perform Automatic deposits
		$request =& Registry::get('request');
		$user = $request->getUser();
		$context = $request->getContext();
		$dispatcher = $request->getDispatcher();
		$this->import('classes.OJSSwordDeposit');
		$depositPointDao = DAORegistry::getDAO('DepositPointDAO');
		$depositPoints = $depositPointDao->getByContextId($context->getId());
		$sendDepositNotification = $this->getSetting($context->getId(), 'allowAuthorSpecify') ? true : false;
		while ($depositPoint = $depositPoints->next()) {
			$depositType = $depositPoint->getType();
			if (($depositType == SWORD_DEPOSIT_TYPE_OPTIONAL_SELECTION) 
				|| $depositType == SWORD_DEPOSIT_TYPE_OPTIONAL_FIXED) {
				$sendDepositNotification = true;
			}
			if ($depositType != SWORD_DEPOSIT_TYPE_AUTOMATIC) 
				continue;

			try {
				$deposit = new OJSSwordDeposit($submission);
				$deposit->setMetadata($request);
				$deposit->addEditorial();
				$deposit->createPackage();
				$deposit->deposit(
					$depositPoint->getSwordUrl(), 
					$depositPoint->getSwordUsername(), 
					$depositPoint->getSwordPassword()
				);
				$deposit->cleanup();
			}
			catch (Exception $e) {
				$contents = __('plugins.importexport.sword.depositFailed') . ': ' . $e->getMessage();
				$notificationMgr = new NotificationManager();
				$notificationManager->createTrivialNotification(
					$user->getId(),
					NOTIFICATION_TYPE_ERROR,
					array('contents' => $contents)
				);
				error_log($e->getTraceAsString());
			}

			$user = $request->getUser();
			$params = array(
				'itemTitle' => $submission->getLocalizedTitle(), 
				'repositoryName' => $depositPoint->getLocalizedName()
			);
			$notificationMgr = new NotificationManager();
			$notificationMgr->createTrivialNotification(
				$user->getId(),
				NOTIFICATION_TYPE_SUCCESS,
				array('contents' => __('plugins.generic.sword.automaticDepositComplete', $params))
			);
		}

		if ($sendDepositNotification) {
			$submittingUser = $submission->getPrimaryAuthor();  // TODO how to get submission user ?
			$contactName = $context->getSetting('contactName');
			$contactEmail = $context->getSetting('contactEmail');
			import('classes.mail.ArticleMailTemplate');
			$mail = new ArticleMailTemplate($submission, 'SWORD_DEPOSIT_NOTIFICATION', null, $context, true);
			$mail->setFrom($contactEmail, $contactName);
			$mail->addRecipient($submittingUser->getEmail(), $submittingUser->getFullName());

			$mail->assignParams(array(
				'journalName' => $context->getLocalizedName(),
				'articleTitle' => $submission->getLocalizedTitle(),
				'swordDepositUrl' => $dispatcher->url(
					$request, ROUTE_PAGE, null, 'sword', 'index', $submission->getId()
				)
			));

			$mail->send($request);
		}

		return false;
	}

	/**
	 * @copydoc PluginRegistry::loadCategory()
	 */
	public function callbackLoadCategory($hookName, $args) {
		$category =& $args[0];
		$plugins =& $args[1];
		switch ($category) {
			case 'importexport':
				$this->import('SwordImportExportPlugin');
				$importExportPlugin = new SwordImportExportPlugin($this);
				$plugins[$importExportPlugin->getSeq()][$importExportPlugin->getPluginPath()] =& $importExportPlugin;
				break;
		}
		return false;
	}

	/**
	 * @see PKPPageRouter::route()
	 */
	public function callbackSwordLoadHandler($hookName, $args) {
		// Check the page.
		$page = $args[0];
		if ($page !== 'sword') return;

		// Check the operation.
		$op = $args[1];

		if ($op == 'swordSettings') { // settings tab
			define('HANDLER_CLASS', 'SwordSettingsTabHandler');
			$args[2] = $this->getPluginPath() . '/' . 'SwordSettingsTabHandler.inc.php';
		}
		else {
			$publicOps = array(
				'depositPoints',
				'performManagerOnlyDeposit',
				'index',
			);

			if (!in_array($op, $publicOps)) return;

			define('HANDLER_CLASS', 'SwordHandler');
			$args[2] = $this->getPluginPath() . '/' . 'SwordHandler.inc.php';
		}
	}

	/**
	 * Extend the website settings tabs to include sword settings
	 * @param $hookName string The name of the invoked hook
	 * @param $args array Hook parameters
	 * @return boolean Hook handling status
	 */
	public function callbackSettingsTab($hookName, $args) {
		$output =& $args[2];
		$request =& Registry::get('request');
		$dispatcher = $request->getDispatcher();
		$tabLabel = __('plugins.generic.sword.displayName') . ' ' . __('plugins.generic.sword.settings');
		$output .= '<li><a name="swordSettings" id="swordSettings" href="' . $dispatcher->url($request, ROUTE_PAGE, null, 'sword', 'swordSettings') . '">' . $tabLabel . '</a></li>';
		return false;
	}

	/**
	 * Permit requests to SWORD deposit points grid handler
	 * @param $hookName string The name of the hook being invoked
	 * @param $args array The parameters to the invoked hook
	 */
	public function setupGridHandler($hookName, $params) {
		$component = $params[0];
		if ($component == 'plugins.generic.sword.controllers.grid.SwordDepositPointsGridHandler') {
			import($component);
			SwordDepositPointsGridHandler::setPlugin($this);
			return true;
		}
		if ($component == 'plugins.generic.sword.controllers.grid.SubmissionListGridHandler') {
			import($component);
			SubmissionListGridHandler::setPlugin($this);
			return true;
		}
		return false;
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	public function getDisplayName() {
		return __('plugins.generic.sword.displayName');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	public function getDescription() {
		return __('plugins.generic.sword.description');
	}

	/**
	 * @see Plugin::getActions()
	 */
	public function getActions($request, $verb) {
		$router = $request->getRouter();
		$dispatcher = $request->getDispatcher();
		import('lib.pkp.classes.linkAction.request.RedirectAction');
		return array_merge(
			// Settings
			$this->getEnabled()?array(
				new LinkAction(
					'swordSettings',
					new RedirectAction($dispatcher->url(
						$request, ROUTE_PAGE,
						null, 'management', 'settings', 'website',
						array('uid' => uniqid()),
						'swordSettings'
						)),
					__('manager.plugins.settings'),
					null
					),
			):array(),
			parent::getActions($request, $verb)
		);
	}

	/**
	 * Override the builtin to get the correct template path.
	 *
	 * @return string Plugin template path
	 */
	public function getTemplatePath() {
		return parent::getTemplatePath() . 'templates/';
	}

	/**
	 * Get plugin JS URL
	 *
	 * @return string Public plugin JS URL
	 */
	public function getJsUrl($request) {
		return $request->getBaseUrl() . '/' . $this->getPluginPath() . '/js';
	}

	public function getTypeMap() {
		return array(
			SWORD_DEPOSIT_TYPE_AUTOMATIC 		=> __('plugins.generic.sword.depositPoints.type.automatic'),
			SWORD_DEPOSIT_TYPE_OPTIONAL_SELECTION 	=> __('plugins.generic.sword.depositPoints.type.optionalSelection'),
			SWORD_DEPOSIT_TYPE_OPTIONAL_FIXED 	=> __('plugins.generic.sword.depositPoints.type.optionalFixed'),
			SWORD_DEPOSIT_TYPE_MANAGER		=> __('plugins.generic.sword.depositPoints.type.manager'),
		);
	}

	/**
	 * Get the filename of the ADODB schema for this plugin.
	 */
	public function getInstallSchemaFile() {
		return $this->getPluginPath() . '/' . 'schema.xml';
	}
}

