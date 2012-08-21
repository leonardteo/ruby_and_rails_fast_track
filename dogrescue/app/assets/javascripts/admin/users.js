$(document).ready(function() {

	// Only run this on index
	if ( controller() == "users" && action() == "index" ) {
		// Load datatables
		$('.datatable').dataTable({
		  "sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
		  "sPaginationType": "bootstrap"
		});
	}

});