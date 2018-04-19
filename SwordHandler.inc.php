<?php
/**
 * @file plugins/generic/sword/SwordHandler.inc.php
 *
 * Copyright (c) 2003-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class SwordHandler
 * @ingroup plugins_generic_sword
 *
 * @brief Handles request for sword plugin.
 */
import('classes.handler.Handler');
class SwordHandler extends Handler {
	/** @var SwordPlugin Sword plugin */
	protected $_parentPlugin = null;

	/**
	 * Constructor
	 */
	public function __construct() {
		parent::__construct();
		// set reference to markup plugin
		$this->_parentPlugin = PluginRegistry::getPlugin('generic', 'swordplugin');
		$this->addRoleAssignment(
			array(ROLE_ID_MANAGER),		// TODO validate with Alec which role to use
			array('depositPoints','performManagerOnlyDeposit')
		);
	}

	/**
	 * @copydoc PKPHandler::authorize()
	 */
	public function authorize($request, &$args, $roleAssignments) {
		$op = $request->getRouter()->getRequestedOp($request);
		return parent::authorize($request, $args, $roleAssignments);
	}

	/**
	 * Get reference to the sword plugin
	 * @return SwordPlugin
	 */
	public function getSwordPlugin() {
		return $this->_parentPlugin;
	}

	/**
	 * Returns deposit point details
	 * @param $args array
	 * @param $request PKPRequest
	 *
	 * @return JSONMessage
	 */
	public function depositPoints($args, $request) {
		$context = $request->getContext();
		$depositPointId = $request->getUserVar('depositPointId');
		$this->getSwordPlugin()->import('classes.DepositPoint');
		$depositPointDao = DAORegistry::getDAO('DepositPointDAO');
		$depositPoint = $depositPointDao->getById($depositPointId, $context->getId());
		if (!$depositPoint) {
			return new JSONMessage(false);
		}

		$this->getSwordPlugin()->import('classes.DepositPointsHelper');
		$depositPoints = DepositPointsHelper::loadDepositPointsFromServer(
			$depositPoint->getSwordUrl(),
			$depositPoint->getSwordUsername(),
			$depositPoint->getSwordPassword()
		);
		return new JSONMessage(true, array(
			'username' => $depositPoint->getSwordUsername(),
			'password' => SWORD_PASSWORD_SLUG,
			'depositPoints' => $depositPoints,
		));
	}

	/**
	 * Handles submission documents deposit in DSpace
	 * @param $args array
	 * @param $request PKPRequest
	 *
	 * @return JSONMessage
	 */
	public function performManagerOnlyDeposit($args, $request) {
// 		error_log(print_r($request->getUserVar('submissions'),true));

		// TODO Validate form. (use Form instead?)
		
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
			else {
				// TODO add notification
				return new JSONMessage(false);
			}
		}

		$swordDepositPoint = $request->getUserVar('swordDepositPoint');
		$depositEditorial = $request->getUserVar('depositEditorial');
		$depositGalleys = $request->getUserVar('depositGalleys');
		$username = $request->getUserVar('swordUsername');
		$depositIds = array();

		foreach ($request->getUserVar('articleId') as $articleId) {
			error_log('processing submission #'.$articleId);
			try {
				$publishedArticle = $publishedArticleDao->getByArticleId($articleId);
				$deposit = new OJSSwordDeposit($publishedArticle);
				$deposit->setMetadata($request);
// 				if ($depositGalleys) $deposit->addGalleys();
				if ($depositEditorial) {
					$result = $deposit->addEditorial();
					var_dump($result);
				}
				$deposit->createPackage();
				$response = $deposit->deposit($swordDepositPoint, $username, $password);
				$deposit->cleanup();
				$depositIds[] = $response->sac_id;
			
			}
			catch (Exception $e) {
				error_log((string)$e);
			}
		}
	}
}
