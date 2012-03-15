<cfoutput>
	<cfinclude template="inc/header.cfm" />
	<div class="row">
		<!--- left col --->
		<aside class="one-third column">
			#$.dspObjects(1)#
		</aside>
		<!--- main content --->
		<article class="one-third column">
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
		<aside class="one-third column">
			#$.dspObjects(3)#
		</aside>
	</div>
	<cfinclude template="inc/footer.cfm" />
</cfoutput>