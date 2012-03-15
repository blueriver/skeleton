// Custom JS for Mura CMS

$(document).ready(function(){
	
	// customize the look + feel of selects
	$('.chzn-select').chosen();
	
	// primary nav on smaller screens
	$("#responsive-nav select").change(function() {
		window.location = $(this).find("option:selected").val();
	});

});