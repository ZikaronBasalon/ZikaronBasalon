$(function() {
	// Change city
	$('#city_select').change(function(event) {
		id = $(this).val();
		$.ajax({
			url: '/pages/home.js',
			data: { city_id: id },
			error: function(e) {
				console.log(e.message);
				alert('Error!');
			}
		});
	});

	registerEndlessScroll();
	registerRequestPopup();
});

// Reverse the pagination (hebrew)
// var pages = document.getElementsByClassName("reversed")[0];
// var i = pages.childNodes.length;
// while (i--)
//     pages.appendChild(pages.childNodes[i]);

// Endelss scrolling
function registerEndlessScroll() {
	console.log("registered");
	$(window).scroll(function(){
  	url = $('.pagination a[rel="next"]').attr('href');
  	if(url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
      console.log("getting pafination");
      $('.pagination').text('טוען מארחים נוספים...')
      $.getScript(url);
  	}
  });
} 	

function registerRequestPopup() {
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
}



