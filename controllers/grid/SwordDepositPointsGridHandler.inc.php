<?php

/**
 * @file controllers/grid/SwordDepositPointsGridHandler.inc.php
 *
 * Copyright (c) 2013-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class SwordDepositPointsGridHandler
 * @ingroup controllers_grid_sword
 *
 * @brief Handle sword deposit points grid requests.
 */

import('lib.pkp.classes.controllers.grid.GridHandler');
import('plugins.generic.sword.controllers.grid.SwordDepositPointsGridRow');
import('plugins.generic.sword.controllers.grid.SwordDepositPointsGridCellProvider');

class SwordDepositPointsGridHandler extends GridHandler {
	/** @var SwordPlugin The SWORD plugin */
	public static $plugin;
	
	/**
	 * Set SWORD plugin.
	 * @param $plugin SwordPlugin
	 */
	static public function setPlugin($plugin) {
		self::$plugin = $plugin;
	}
	
	/**
	 * Constructor
	 */
	public function __construct() {
		parent::__construct();
		$this->addRoleAssignment(
			array(ROLE_ID_MANAGER),
			array('index', 'fetchGrid', 'fetchRow', 'addDepositPoints', 'editDepositPoints', 'updateDepositPoints', 'delete')
		);
	}

	/**
	 * @copydoc Gridhandler::initialize()
	 */
	public function initialize($request, $args = null) {
		parent::initialize($request);
		$context = $request->getContext();

		// Set the grid details.
		$this->setTitle('plugins.generic.sword.settings.depositPoints');
		$this->setEmptyRowText('plugins.generic.sword.manager.noneCreated');
		
		// Add grid-level actions
		$router = $request->getRouter();
		import('lib.pkp.classes.linkAction.request.AjaxModal');
		$this->addAction(
			new LinkAction(
				'addDepositPoints',
				new AjaxModal(
					$router->url($request, null, null, 'addDepositPoints'),
					__('plugins.generic.sword.depositPoints.create'),
					'modal_add_item'
					),
				__('plugins.generic.sword.depositPoints.create'),
				'add_item'
			)
		);
		
		// Columns
		$cellProvider = new SwordDepositPointsGridCellProvider();
		$this->addColumn(new GridColumn(
			'name',
			'plugins.generic.sword.depositPoints.name',
			null,
			'controllers/grid/gridCell.tpl',
			$cellProvider
		));
	}
	
	/**
	 * @copydoc Gridhandler::getRowInstance()
	 */
	function getRowInstance() {
		return new SwordDepositPointsGridRow();
	}

	/**
	 * Display the grid's containing page.
	 * @param $args array
	 * @param $request PKPRequest
	 */
	function index($args, $request) {
		$templateMgr = TemplateManager::getManager($request);
		$dispatcher = $request->getDispatcher();
		return $templateMgr->fetchAjax(
			'swordDepositPointsGridContainer',
			$dispatcher->url(
				$request, ROUTE_COMPONENT, null,
				'plugins.generic.sword.controllers.grid.SwordDepositPointsGridHandler',
				'fetchGrid'
				)
			);
	}
}
