<cfoutput>
	<cfinclude template="inc/header.cfm" />
	<div class="row">
		<!--- main content --->
		<article class="twelve columns content">
			<cfinclude template="inc/page_title.cfm" />
			#$.dspBody(
				body=$.content('body')
				,pageTitle=''
				,crumbList=0
				,showMetaImage=1
			)#
			#$.dspObjects(2)#
		</article>
		<!--- right col --->
		<aside class="three columns offset-by-one sidebar">
			#$.dspObjects(3)#
		</aside>
	</div>
	<cfinclude template="inc/footer.cfm" />
</cfoutput>