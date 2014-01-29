$(function(){
	$("#host_city_name").autocomplete({
		source: $('#host_city_name').data('autocomplete-source')
	});

  $('#host_strangers').change(function(event) {
    $('#max_guests_container').toggleClass('hidden');
    if($('#max_guests_container').hasClass('hidden')){
      $('#host_max_guests').val(0);
    }
  });
});