<!--- Be sure to reload Mura after adding methods here. A site's local eventHandler.cfc does not need to be init'd via appreload, only theme-specific ones (like this) --->
<cfcomponent extends="mura.cfobject" output="false">
	<cffunction name="onRenderStart" output="false" returntype="any">
		<cfargument name="$" required="true" />
		<cfscript>
			$.getContentRenderer().jslib = 'jquery';
			$.getContentRenderer().jsLibLoaded = true;
			$.getContentRenderer().headline = 'h3';
		</cfscript>
	</cffunction>
</cfcomponent>