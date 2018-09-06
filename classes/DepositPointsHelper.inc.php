<?php 
/**
 * @file plugins/generic/sword/classes/DepositPointsHelper.inc.php
 *
 * Copyright (c) 2003-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class DepositPointsHelper
 * @ingroup plugins_generic_sword_classes
 *
 * @brief Deposit points Helper class
 *
 */

require_once dirname(__FILE__) . '/../libs/swordappv2/swordappclient.php';

class DepositPointsHelper {
	/**
	 * Connects to a DSpace server and return a list of deposit points
	 * @param $url string
	 * @param $username string
	 * @param $password string
	 * @return array|null
	 */
	public static function loadCollectionsFromServer($url, $username, $password) {
		if (empty($url) OR empty($username) OR empty($password)) {
			return null;
		}
		$depositPoints = array();
		$client = new SWORDAPPClient();
		$doc = $client->servicedocument($url, $username, $password, '');
		if (is_array($doc->sac_workspaces)) {
			foreach ($doc->sac_workspaces as $workspace) {
				if (is_array($workspace->sac_collections)) { 
					foreach ($workspace->sac_collections as $collection) {
						$depositPoints["$collection->sac_href"] = "$collection->sac_colltitle";
					}
				}
			}
		}
		return $depositPoints;
	}
}
