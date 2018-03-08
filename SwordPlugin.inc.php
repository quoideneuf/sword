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

class SwordPlugin extends GenericPlugin {
	/**
	 * Register the plugin, if enabled
	 * @param $category string
	 * @param $path string
	 * @return boolean
	 */
	function register($category, $path) {
		if (parent::register($category, $path)) {
			if ($this->getEnabled()) {
				HookRegistry::register('Templates::Management::Settings::website', array($this, 'callbackSwordSettingsTab'));
			}
			return true;
		}
		return false;
	}

	/**
	 * Extend the website settings tabs to include sword settings
	 * @param $hookName string The name of the invoked hook
	 * @param $args array Hook parameters
	 * @return boolean Hook handling status
	 */
	public function callbackSwordSettingsTab($hookName, $args) {
		$output =& $args[2];
		$request =& Registry::get('request');
		$dispatcher = $request->getDispatcher();
		$output .= '<li><a name="sword" href="' . $dispatcher->url($request, ROUTE_PAGE, null, 'sword', 'settings') . '">' . __('plugins.generic.sword.settings') . '</a></li>';
		return false;
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.generic.sword.displayName');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.generic.sword.description');
	}

	/**
	 * @see Plugin::getActions()
	 */
	function getActions($request, $verb) {
		$router = $request->getRouter();
		$dispatcher = $request->getDispatcher();
		import('lib.pkp.classes.linkAction.request.AjaxModal');
		return array_merge(
			// Settings
			$this->getEnabled()?array(
				new LinkAction(
					'settings',
					new AjaxModal(
						$router->url($request, null, null, 'manage', null, array('verb' => 'settings', 'plugin' => $this->getName(), 'category' => 'generic')),
						$this->getDisplayName()
						),
					__('manager.plugins.settings'),
					null
				),
			):array(),
			// Deposit points
			$this->getEnabled()?array(
				new LinkAction(
					'depositPoints',
					new RedirectAction($dispatcher->url(
						$request, ROUTE_PAGE,
						null, 'management', 'settings', 'website',
						array('uid' => uniqid()),
						'depositPoints'
						)),
					__('plugins.generic.sword.settings.depositPoints'),
					null
					),
			):array(),
			parent::getActions($request, $verb)
		);
	}

	/**
	 * @see Plugin::manage()
	 */
	function manage($args, $request) {
		switch ($request->getUserVar('verb')) {
			case 'settings':
				$this->import('SwordSettingsForm');
				$settingsForm = new SwordSettingsForm($this, $request->getContext());
				$settingsForm->initData();
				return new JSONMessage(true, $settingsForm->fetch($request));
			case 'depositPoints':
				$this->import('DepositPointsForm');
				AppLocale::requireComponents(LOCALE_COMPONENT_APP_COMMON,  LOCALE_COMPONENT_PKP_MANAGER);
				$templateMgr = TemplateManager::getManager($request);
				$templateMgr->register_function('plugin_url', array($this, 'smartyPluginUrl'));
				$depositPointsForm = new DepositPointsForm($this, $request->getContext());
				return new JSONMessage(true, $depositPointsForm->fetch($request));
		}
		return parent::manage($args, $request);
	}

	/**
	 * Override the builtin to get the correct template path.
	 *
	 * @return string Plugin template path
	 */
	function getTemplatePath() {
		return parent::getTemplatePath() . 'templates/';
	}
}

