$(function(){
	// Change city
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

	// Open send reuqest popup
	$('.send').click(function(event) {
		$('#guest_host_id').val($(this).data('id'));
		$('#register').removeClass('hidden');
		$('#register').center();
		$('#mask').removeClass('hidden');
	});

	// Close send request popup
	$('.x').click(function(event) {
		$('#register').addClass('hidden');
		$('#mask').addClass('hidden');
	});

	// Reverse the pagination (hebrew)
  // var pages = document.getElementsByClassName("reversed")[0];
  // var i = pages.childNodes.length;
  // while (i--)
  //     pages.appendChild(pages.childNodes[i]);

  // Endelss scrolling
  $(window).scroll(function(){
  	url = $('.pagination a[rel="next"]').attr('href');
  	if(url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
       $('.pagination').text('טוען מארחים נוספים...')
      $.getScript(url);
  	}
  })
});
