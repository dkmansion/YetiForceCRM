{*<!--
/*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
* ("License"); You may not use this file except in compliance with the License
* The Original Code is:  vtiger CRM Open Source
* The Initial Developer of the Original Code is vtiger.
* Portions created by vtiger are Copyright (C) vtiger.
* All Rights Reserved.
*
********************************************************************************/
-->*}
{strip}
	{include file=\App\Layout::getTemplatePath('Header.tpl', $MODULE)}
	<div class="bodyContents">
		<div class="mainContainer">
			<div class="contentsDiv mx-md-0 dashboardContainer">
				{include file=\App\Layout::getTemplatePath('dashboards/DashBoardHeader.tpl', $MODULE_NAME) DASHBOARDHEADER_TITLE=\App\Language::translate($MODULE, $MODULE)}
				<div class="dashboardViewContainer">
					{if count($DASHBOARD_TYPES) > 1}
						<ul class="nav nav-tabs massEditTabs selectDashboard my-2 m-sm-2">
							{foreach from=$DASHBOARD_TYPES item=DASHBOARD}
								<li class="nav-item" data-id="{$DASHBOARD['dashboard_id']}">
									<a class="nav-link {if $CURRENT_DASHBOARD eq $DASHBOARD['dashboard_id']} active {/if}" href="#" data-toggle="tab"><strong>{\App\Language::translate($DASHBOARD['name'])}</strong></a>
								</li>
							{/foreach}
						</ul>
					{/if}
						{if count($MODULES_WITH_WIDGET) > 1}
							<ul class="nav nav-tabs massEditTabs selectDashboradView my-2 m-sm-2">
								{foreach from=$MODULES_WITH_WIDGET item=MODULE_WIDGET}
									<li class="nav-item" data-module="{$MODULE_WIDGET}">
										<a class="nav-link {if $MODULE_NAME eq $MODULE_WIDGET} active {/if}" href="#" data-toggle="tab">{\App\Language::translate($MODULE_WIDGET, $MODULE_WIDGET)}</a>
									</li>
										{/foreach}
							</ul>
						{/if}
					{/strip}
