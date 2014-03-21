$(function(){
	$("#host_city_name").autocomplete({
		source: $('#host_city_name').data('autocomplete-source')
	});
});