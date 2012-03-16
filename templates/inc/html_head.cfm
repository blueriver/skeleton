<cfoutput>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="#HTMLEditFormat($.getMetaDesc())#" />
	<meta name="keywords" content="#HTMLEditFormat($.getMetaKeywords())#" />
	<cfif request.contentBean.getCredits() neq ""><meta name="author" content="#HTMLEditFormat($.content('credits'))#" /></cfif>
	<meta name="generator" content="Mura CMS #$.globalConfig('version')#" />
	<!--- <meta name="robots" content="noindex, nofollow" /> ---><!--- use this to discourage search engines from indexing your site. (can be useful if developing on a live server for example) Delete if not needed. --->
	<title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>

	<!-- Mobile Specific Metas
	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- CSS
	================================================== -->
	<!--- Mura-Specific Styles --->	
	<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/reset.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.min.css" type="text/css" media="all" />

	<!--- Theme-Specific Styles --->
	<cf_CacheOMatic key="globalheadercss">
	#$.static(
		cssDirectory='assets'
		,jsDirectory='assets'
		,includeAllByDefault=false
	)
		.include('/assets/css/')
		.include('/assets/chosen/chosen.css')
		.renderIncludes('css')#
	</cf_CacheOMatic>

	<cfif cgi.http_user_agent contains 'msie'>
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	</cfif>

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="#$.siteConfig('themeAssetPath')#/images/favicon.ico">
	<link rel="apple-touch-icon" href="#$.siteConfig('themeAssetPath')#/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="#$.siteConfig('themeAssetPath')#/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="#$.siteConfig('themeAssetPath')#/images/apple-touch-icon-114x114.png">
	
	<!-- RSS
	================================================== -->
	<cfset rs=$.getBean('feedManager').getFeeds($.event('siteID'),'Local',true,true) />
	<cfloop query="rs">
	<link rel="alternate" type="application/rss+xml" title="#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat(rs.name)#" href="#XMLFormat('http://#listFirst(cgi.http_host,":")##$.globalConfig('context')#/tasks/feed/?feedID=#rs.feedID#')#" /></cfloop>

	<!-- jQuery
	================================================== -->
	<script type="text/javascript" src="#$.siteConfig('assetPath')#/jquery/jquery.js"></script>

</head>
</cfoutput>