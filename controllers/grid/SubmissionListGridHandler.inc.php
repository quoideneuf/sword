<?php

/**
 * @file controllers/grid/SubmissionListGridHandler.inc.php
 *
 * Copyright (c) 2013-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class SubmissionListGridHandler
 * @ingroup controllers_grid_sword
 *
 * @brief Handle submission list grid requests.
 */

import('lib.pkp.classes.controllers.grid.GridHandler');
//import('plugins.generic.sword.controllers.grid.SubmissionListGridRow');
import('lib.pkp.classes.controllers.grid.GridRow');
import('plugins.generic.sword.controllers.grid.SubmissionListGridCellProvider');

class SubmissionListGridHandler extends GridHandler {
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
			array('index', 'fetchGrid', 'fetchRow')
		);
	}

	/**
	 * @copydoc Gridhandler::initialize()
	 */
	public function initialize($request, $args = null) {
		parent::initialize($request);
		$context = $request->getContext();
		
		// Set the grid details.
		$this->setTitle('navigation.submissions');
		$this->setEmptyRowText('plugins.generic.sword.manager.noneCreated');
		
		$articlesList = array();
		$publishedArticleDao =& DAORegistry::getDAO('PublishedArticleDAO');
		$publishedArticles = $publishedArticleDao->getPublishedArticlesByJournalId($context->getId());
		while ($publishedArticle = $publishedArticles->next()) {
			$articlesList[] = $publishedArticle;
		}
		$this->setGridDataElements($articlesList);

		// Columns
		$cellProvider = new SubmissionListGridCellProvider();
		$this->addColumn(new GridColumn(
			'id',
			'',
			null,
			'controllers/grid/common/cell/selectStatusCell.tpl',
			$cellProvider
		));
		$this->addColumn(new GridColumn(
			'issue',
			'issue.issue',
			null,
			'controllers/grid/gridCell.tpl',
			$cellProvider
		));
		$this->addColumn(new GridColumn(
			'title',
			'article.title',
			null,
			'controllers/grid/gridCell.tpl',
			$cellProvider
		));
		$this->addColumn(new GridColumn(
			'authors',
			'article.authors',
			null,
			'controllers/grid/gridCell.tpl',
			$cellProvider
		));
	}

	/**
	 * @copydoc Gridhandler::getRowInstance()
	 */
	public function getRowInstance() {
		return new GridRow();
	}

	/**
	 * Display the grid's containing page.
	 * @param $args array
	 * @param $request PKPRequest
	 */
	public function index($args, $request) {
		$templateMgr = TemplateManager::getManager($request);
		$dispatcher = $request->getDispatcher();
		return $templateMgr->fetchAjax(
			'submissionListGridContainer',
			$dispatcher->url(
				$request, ROUTE_COMPONENT, null,
				'plugins.generic.sword.controllers.grid.SubmissionListGridHandler',
				'fetchGrid'
			)
		);
	}
}
