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
		$submission = $row->getData();
		switch ($column->getId()) {
			case 'id':
				return array(
					'id' => $submission->getId(), 
					'name' => 'submissions[]',
					'value' => $submission->getId(),
					'checked' => false,
				);
			case 'issue':
				$issue = '';
				$publishedArticleDao = DAORegistry::getDAO('PublishedArticleDAO');
				$publishedArticle = $publishedArticleDao->getPublishedArticleByBestArticleId(
					(int) $submission->getContextId(),
					$submission->getId(),
					true
				);
				if ($publishedArticle) {
					$issueDao = DAORegistry::getDAO('IssueDAO');
					$issueObject = $issueDao->getById(
						$publishedArticle->getIssueId(),
						$publishedArticle->getJournalId(),
						true
					);
					$issue = $issueObject->getIssueIdentification();
				}
				return array('label' => $issue);
			case 'title':
				return array('label' => $submission->getLocalizedTitle());
			case 'authors':
				return array('label' => $submission->getAuthorString());
		}
		return parent::getTemplateVarsFromRowColumn($row, $column);
	}
}