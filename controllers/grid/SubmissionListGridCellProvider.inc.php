<?php
/**
 * @file controllers/grid/SubmissionListGridCellProvider.inc.php
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2000-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class SubmissionListGridCellProvider
 * @ingroup controllers_grid_sword
 *
 * @brief Class for a cell provider to display information about a submission
 */
import('lib.pkp.classes.controllers.grid.GridCellProvider');
import('lib.pkp.classes.linkAction.request.RedirectAction');

class SubmissionListGridCellProvider extends GridCellProvider {
	/**
	 * Extracts variables for a given column from a data element
	 * so that they may be assigned to template before rendering.
	 * @param $row GridRow
	 * @param $column GridColumn
	 * @return array
	 */
	public function getTemplateVarsFromRowColumn($row, $column) {
		$publishedArticle = $row->getData();
		switch ($column->getId()) {
			case 'id':
				return array(
					'id' => $publishedArticle->getId(), 
					'name' => 'articleId[]',
					'value' => $publishedArticle->getId(),
					'checked' => false,
				);
			case 'issue':
				$issueDao = DAORegistry::getDAO('IssueDAO');
				$issue = $issueDao->getById(
					$publishedArticle->getIssueId(),
					$publishedArticle->getJournalId(),
					true
				);
				return array('label' => $issue->getIssueIdentification());
			case 'title':
				return array('label' => $publishedArticle->getLocalizedTitle());
			case 'authors':
				return array('label' => $publishedArticle->getAuthorString());
		}
		return parent::getTemplateVarsFromRowColumn($row, $column);
	}
}