$(function(){
	// $("#q").autocomplete({
	// 	source: $('#q').data('autocomplete-source')
	// });
	$('#city_select').change(function(event) {
		id = $(this).val();
		$.ajax({
			url: '/hosts/search',
			data: { id: id },
			error: function() {
				alert('Error!');
			}
		});
	});
});
