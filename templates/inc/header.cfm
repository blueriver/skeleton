<!--- header.cfm --->
<cfoutput>
<cfinclude template="html_head.cfm" />
<body id="#$.getTopID()#" class="depth#arrayLen($.event('crumbdata'))#">
	<div class="container">
		<header>
			<div class="row">
				<div class="sixteen columns">
					<hgroup>
						<h1 class="remove-bottom" style="margin-top: 40px">#HTMLEditFormat($.siteConfig('site'))#</h1>
						<cfif len($.siteConfig('tagline'))><h5 class="tagline">#$.siteConfig('tagline')#</h5></cfif>
					</hgroup>
					<hr class="large">
					<!--- Standard Nav: displays when screen width is greater than 767 --->
					<nav id="navWide">
						<cf_CacheOMatic key="dspPrimaryNav#request.contentBean.getcontentID()#">
							#$.dspPrimaryNav(
								viewDepth=0
								,id='navPrimary'
								,displayHome='Always'
								,closePortals=true
								,showCurrentChildrenOnly=false
								,class=Iif(IsBoolean($.siteConfig('skeletonUseTabbedNav') and $.siteConfig('skeletonUseTabbedNav'), DE('tabs'), DE('clean'))
							)#
							<!---
								Optional named arguments for Primary Nav are:
									displayHome = 'Always/Never/Conditional'
									openPortals/closePortals = 'contentid,contentid'
									(i.e. show specific sub-content in dropdown nav)
							--->
						</cf_cacheomatic>
					</nav>
					<!--- Dropdown Nav: this will display when screen width is less than 768 --->
					<nav id="navNarrow">
						<cf_cacheOMatic key="customTopNav">
							<cfset home=$.getBean('content').loadBy(filename='')>
							<cfset iterator=home.getKidsIterator(aggregation=true)>
							<form id="responsive-nav" action="insert_action" method="post">
								<select class="chzn-select">
									<option value="#home.getURL()#">#HTMLEditFormat(home.getMenutitle())#</option>
									<cfloop condition="iterator.hasNext()">
										<cfset item=iterator.next()>
										<cfset selected=IIf($.content('url') eq item.getURL(),true,false)>
										<option value="#item.getURL()#"<cfif selected> selected="selected"</cfif>>#HTMLEditFormat(item.getMenutitle())#</option></cfloop>
								</select>
							</form>
							<hr>
						</cf_cacheOMatic>
					</nav>
				</div>
			</div>
		</header>
</cfoutput>