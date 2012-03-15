<!--- page_title.cfm --->
<cfoutput>
	<!--- don't show page title if viewing home page. --->
	<cfif $.content('contentid') neq '00000000000000000000000000000000001' and $.event('display') neq 'login'>
		<div class="row">
			<nav>#$.dspCrumbListLinks('crumbList','&nbsp;&raquo;&nbsp;')#</nav>
			<#$.getHeaderTag('headline')#>#HTMLEditFormat($.content('title'))#</#$.getHeaderTag('headline')#>
			
			<cfif len(trim($.content('credits')))>
				<#$.getHeaderTag('subhead3')#>By #HTMLEditFormat($.content('credits'))#</#$.getHeaderTag('subhead3')#>
			</cfif>
			<cfif IsDate($.content('releasedate'))>
				<#$.getHeaderTag('subhead4')#>#LSDateFormat($.content('releaseDate'),$.getLongDateFormat())#</#$.getHeaderTag('subhead4')#>
			</cfif>
		</div>
	</cfif>
</cfoutput>