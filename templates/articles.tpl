{**
 * plugins/generic/sword/templates/articles.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Deposit articles in remote repositories
 *}
{include file="common/header.tpl" pageTitle="plugins.importexport.sword.displayName"}
 
<script src="{$pluginJavaScriptURL}/SwordDepositPointsFormHandler.js"></script>
<script type="text/javascript">
	$(function() {ldelim}
		$('#importExportTabs').pkpHandler('$.pkp.controllers.TabHandler');
		$('#articlesForm').pkpHandler(
			'$.pkp.plugins.sword.js.SwordDepositPointsFormHandler'
		);
	{rdelim});
</script>

<div id="importExportTabs">
	<ul>
		<li><a href="#importExportDeposits-tab">{translate key="plugins.importexport.sword.displayName"}</a></li>
	</ul>
	<div id="importExportDeposits-tab">
		<form id="articlesForm" class="pkp_form" method="post" 
			action="{plugin_url path="deposit"}"
			data-depositpointurl="{url router=$smarty.const.ROUTE_PAGE page='sword' op="depositPoints"}">
			{csrf}
			{include file="controllers/notification/inPlaceNotification.tpl" notificationId="ArticlesNotification"}
			{fbvFormSection}
				{fbvFormSection title="plugins.importexport.sword.depositPoint"}
					{fbvElement type="select" id="depositPoint" from=$depositPoints selected=$selectedDepositPoint translate=false}
					<a href="{$swordSettingsPageUrl}">{translate key="plugins.importexport.sword.depositPoint.addRemove"}</a>
					<span id="depositPointsSpinner" class="pkp_spinner"></span>
				{/fbvFormSection}
				{fbvFormSection for="swordUsername" title="user.username"}
					{fbvElement type="text" id="swordUsername" value=$swordUsername|escape}
				{/fbvFormSection}
				{fbvFormSection for="swordPassword" title="user.password"}
					{fbvElement type="text" password="true" id="swordPassword" value=$swordPassword|escape}
				{/fbvFormSection}
				{fbvFormSection title="plugins.importexport.sword.depositPoint"}
					{fbvElement type="select" id="swordDepositPoint" translate=false}
					{fbvElement type="button" label="common.refresh" id="refreshBtn" inline=true}
				{/fbvFormSection}
			{/fbvFormSection}
			{fbvFormSection title="common.options" list=true}
				{fbvElement type="checkbox" id="depositGalleys" value="1" checked=$depositGalleys label="plugins.importexport.sword.depositGalleys"}
				{fbvElement type="checkbox" id="depositEditorial" value="1" checked=$depositEditorial label="plugins.importexport.sword.depositEditorial"}
			{/fbvFormSection}
			{assign var="uuid" value=""|uniqid|escape}
			<div id="select-submissions-list-handler-{$uuid}">
				<script type="text/javascript">
					pkp.registry.init('select-submissions-list-handler-{$uuid}', 'SelectSubmissionsListPanel', {$selectSubmissionsListData});
				</script>
			</div>
			{fbvElement type="submit" label="plugins.importexport.sword.deposit" id="depositBtn" inline=true}
			{fbvElement type="button" label="common.selectAll" id="selectAllBtn" inline=true}
		</form>
	</div>
</div>

{include file="common/footer.tpl"}
