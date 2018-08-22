{**
 * plugins/generic/sword/templates/editDepositPointForm.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Form for editing a deposit point
 *}
 
 <script type="text/javascript">
	$(function() {ldelim}
		// Attach the form handler.
		$('#depositPointForm').pkpHandler(
			'$.pkp.controllers.form.AjaxFormHandler'
		);
	{rdelim});
</script>

<form id="depositPointForm" class="pkp_form" method="post" action="{url router=$smarty.const.ROUTE_COMPONENT component="plugins.generic.sword.controllers.grid.SwordDepositPointsGridHandler" op="updateDepositPoint" existingPageName=$blockName escape=false}">
	{csrf}

	{if $depositPointId}
		<input type="hidden" name="depositPointId" value="{$depositPointId|escape}" />
	{/if}

	{include file="controllers/notification/inPlaceNotification.tpl" notificationId="DepositPointFormNotification"}

	{fbvFormSection}
		{fbvFormSection for="name" title="plugins.generic.sword.depositPoints.name"}
			{assign var="formLocale" value=$formLocale|escape}
			{fbvElement type="text" id="name" name=name[$formLocale] value=$name}
		{/fbvFormSection}
		
		{fbvFormSection for="swordUrl" title="plugins.importexport.sword.depositUrl"}
			{fbvElement type="text" id="swordUrl" value=$swordUrl}
		{/fbvFormSection}
		
		{fbvFormSection for="swordUsername" title="user.username"}
			{fbvElement type="text" id="swordUsername" value=$swordUsername}
		{/fbvFormSection}
		
		{fbvFormSection for="swordPassword" title="user.password"}
			{fbvElement type="text" password="true" id="swordPassword" value=$swordPassword}
		{/fbvFormSection}
		
		{fbvFormSection title="common.type"}
			{fbvElement type="select" id="depositPointType" from=$depositPointTypes selected=$selectedType translate=false}
		{/fbvFormSection}
		
		{fbvFormSection description="plugins.generic.sword.depositPoints.type.description"}{/fbvFormSection}
	{/fbvFormSection}
	
	{fbvFormButtons id="depositPointSubmit" submitText="common.save"}
</form>