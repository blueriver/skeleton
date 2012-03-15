<cfoutput>
	<cfinclude template="inc/header.cfm" />
	<div class="row">
		<!--- left col --->
		<aside class="three columns sidebar">
			#$.dspObjects(1)#
		</aside>
		<!--- main content --->
		<article class="twelve columns offset-by-one content">
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