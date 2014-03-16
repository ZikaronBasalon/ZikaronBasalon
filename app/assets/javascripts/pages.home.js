$(function(){
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

	$('.send').click(function(event) {
		$('#register').removeClass('hidden');
		$('#mask').removeClass('hidden');
	});

	$('.x').click(function(event) {
		$('#register').addClass('hidden');
		$('#mask').addClass('hidden');
	});
});
