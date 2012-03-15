<cfoutput>
	<cfinclude template="inc/header.cfm" />
	<div class="row">
		<!--- main content --->
		<article class="sixteen columns">
			<cfinclude template="inc/page_title.cfm" />
			#$.dspBody(
				body=$.content('body')
				,pageTitle=''
				,crumbList=0
				,showMetaImage=1
			)#
			#$.dspObjects(2)#
		</article>
	</div>
	<cfinclude template="inc/footer.cfm" />
</cfoutput>