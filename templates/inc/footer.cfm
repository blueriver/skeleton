<!--- footer.cfm --->
<cfoutput>
		<footer>
			<div class="row">
				<hr>	
				<div class="sixteen columns">
					<cf_cacheOMatic key="customFooterNav">
						<cfset home=$.getBean('content').loadBy(filename='')>
						<cfset iterator=home.getKidsIterator(aggregation=true)>
						<nav id="footerUtility">
							<ul class="navUtility">
								<li class="first"><a href="#home.getURL()#">#HTMLEditFormat(home.getMenutitle())#</a></li>
								<cfloop condition="iterator.hasNext()">
									<cfset item=iterator.next()>
									<cfset current=IIf($.content('url') eq item.getURL(),true,false)>
									<li<cfif not iterator.hasNext()> class="last"</cfif>><a href="#item.getURL()#"<cfif current> class="current"</cfif>>#HTMLEditFormat(item.getMenutitle())#</a></li>
								</cfloop>
							</ul>
						</nav>
					</cf_cacheOMatic>
					<p class="copyright">&copy; #year(now())# #HTMLEditFormat($.siteConfig('site'))#</p>
				</div>
			</div><!--- /row --->
		</footer>
	</div><!--- /container --->
	<div class="resize"></div>
	<!-- JS
	================================================== -->
	<script src="#$.siteConfig('themeAssetPath')#/js/tabs.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/assets/chosen/chosen.jquery.min.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/js/extended.js"></script>
</body>
</html>
</cfoutput>