<!--- page_title.cfm --->
<cfoutput>
	<!--- don't show page title if viewing home page. --->
	<cfif $.content('contentid') neq '00000000000000000000000000000000001'>
		<nav>#$.dspCrumbListLinks('crumbList','&nbsp;&raquo;&nbsp;')#</nav>
		<#$.getHeaderTag('headline')#>#HTMLEditFormat($.content('title'))#</#$.getHeaderTag('headline')#>
	</cfif>
</cfoutput>