<?php

/**
 * @file controllers/grid/SwordDepositPointsGridRow.inc.php
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class SwordDepositPointsGridRow
 * @ingroup controllers_grid_sword
 *
 * @brief Handle custom blocks grid row requests.
 */
import('lib.pkp.classes.controllers.grid.GridRow');

class SwordDepositPointsGridRow extends GridRow {
	/**
	 * @copydoc GridRow::initialize()
	 */
	function initialize($request, $template = null) {
		parent::initialize($request, $template);
	}
}