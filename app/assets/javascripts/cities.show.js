$(function(){
	$(".request_invite").click(function(event) {
		// $.ajax({
		// 	url: '/hosts/send_request',
		// 	data: $("#guest_form").serialize() +"&id=" +$(this).data("id"),
		// 	error: function() {
		// 		alert('Error!');
		// 	}
		// });
		$('#guest_host_id').val($(this).data("id"));
	});
});