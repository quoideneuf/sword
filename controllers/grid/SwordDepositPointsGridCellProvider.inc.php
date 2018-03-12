<?php
/**
 * @file controllers/grid/SwordDepositPointsGridCellProvider.inc.php
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2000-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class SwordDepositPointsGridCellProvider
 * @ingroup controllers_grid_sword
 *
 * @brief Class for a cell provider to display information about external feed
 */
import('lib.pkp.classes.controllers.grid.GridCellProvider');
import('lib.pkp.classes.linkAction.request.RedirectAction');

class SwordDepositPointsGridCellProvider extends GridCellProvider {
	/**
	 * Extracts variables for a given column from a data element
	 * so that they may be assigned to template before rendering.
	 * @param $row GridRow
	 * @param $column GridColumn
	 * @return array
	 */
	function getTemplateVarsFromRowColumn($row, $column) {
		$depositPoints = $row->getData();
// 		switch ($column->getId()) {
// 		}
		return parent::getTemplateVarsFromRowColumn($row, $column);
	}
}