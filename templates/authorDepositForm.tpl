{**
 * plugins/generic/sword/templates/authorDepositForm.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display list of deposit points.
 *}
{include file="common/header.tpl"}

 <script type="text/javascript">
	$(function() {ldelim}
		$('#depositPointsTabs').pkpHandler('$.pkp.controllers.TabHandler');
	{rdelim});
</script>

<div id="depositPointsTabs">
	<ul>
		<li><a href="#authorDepositPoints-tab">{translate key="plugins.generic.sword.displayName"}</a></li>
	</ul>
	<div id="authorDepositPoints-tab">
		<form id="authDepositForm" class="pkp_form" method="post" action="{url path="index" path=$submission->getId()|to_array:"save"}">
			{csrf}
			{include file="controllers/notification/inPlaceNotification.tpl" notificationId="swordSettingsFormNotification"}

			{if !empty($depositPoints)}
				{translate key="plugins.generic.sword.authorDepositDescription" submissionTitle=$submission->getLocalizedTitle()}
				<div class="pkp_controllers_grid">
				<div class="header"><h4>Deposit Points</h4></div>
					<table style="width:100%">
						<colgroup>
								<col class="grid-column column-select" style="width: 10%;">
								<col class="grid-column column-name" style="width: 45%;">
								<col class="grid-column column-collections" style="width: 45%;">
						</colgroup>
						<thead>
						<tr>
							<th>&nbsp;</th>
							<th>{translate key="plugins.generic.sword.depositPoints.name"}</th>
							<th>{translate key="plugins.importexport.sword.depositPoint"}</th>
						</tr>
						</thead>
						{foreach from=$depositPoints item=depositPoint key=depositPointKey name="depositPoints"}
							<tr>
								<td><input type="checkbox" name="depositPoint[{$depositPointKey|escape}][enabled]" id="depositPoint-{$depositPointKey|escape}-enabled"></td>
								{if $depositPoint.type == $smarty.const.SWORD_DEPOSIT_TYPE_OPTIONAL_SELECTION}
									<td>
										{fieldLabel name="depositPoint-$depositPointKey-enabled" label=$depositPoint.name}
									</td>
									<td>
										<select name="depositPoint[{$depositPointKey|escape}][depositPoint]" id="depositPoint-{$depositPointKey|escape}-depositPoint" class="selectMenu">
											{html_options options=$depositPoint.depositPoints}
										</select>
									</td>
								{else}
									<td colspan="2">
										{fieldLabel name="depositPoint-$depositPointKey-enabled" label=$depositPoint.name}
									</td>
								{/if}{* $depositPoint.type *}
							</tr>
						{/foreach}
					</table>
				</div>
			{/if}{* !empty($depositPoints) *}
			&nbsp;
			{if $allowAuthorSpecify}
				{translate key="plugins.generic.sword.authorCustomDepositDescription" submissionTitle=$submission->getLocalizedTitle()}
				{fbvFormSection for="authorDepositUrl" title="plugins.importexport.sword.depositUrl"}
					{fbvElement type="text" id="authorDepositUrl" value=$authorDepositUrl}
				{/fbvFormSection}
				{fbvFormSection for="authorDepositUsername" title="user.username"}
					{fbvElement type="text" id="authorDepositUsername" value=$authorDepositUsername}
				{/fbvFormSection}
				{fbvFormSection for="authorDepositPassword" title="user.password"}
					{fbvElement type="text" password="true" id="authorDepositPassword"}
				{/fbvFormSection}
			{/if}{* $allowAuthorSpecify *}

			<br/>
			{fbvElement type="submit" label="plugins.importexport.sword.deposit" id="depositBtn" inline=true}
		</form>
	</div>
 </div>{* depositPoints *}
 
 {include file="common/footer.tpl"}