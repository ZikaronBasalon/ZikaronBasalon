$(function(){
	$("#host_city_name").autocomplete({
		source: $('#host_city_name').data('autocomplete-source')
	});

	$('#host_strangers').change(function(event) {
		if ($(this).val() == "true"){
			alert("סימון אפשרות זו אומר ששמך הפרטי וכתובתך יופיעו בעמוד חיפוש המארחים באתר.");
		}
	});
});