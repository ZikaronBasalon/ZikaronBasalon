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
		$('#guest_host_id').val($(this).data('id'));
		$('#register').removeClass('hidden');
		$('#register').center();
		$('#mask').removeClass('hidden');
	});

	$('.x').click(function(event) {
		$('#register').addClass('hidden');
		$('#mask').addClass('hidden');
	});
    var pages = document.getElementsByClassName("reversed")[0];
    var i = pages.childNodes.length;
    while (i--)
        pages.appendChild(pages.childNodes[i]);
});
