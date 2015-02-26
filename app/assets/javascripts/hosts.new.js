$(function(){
	// $("#host_city_name").autocomplete({
	// 	source: $('#host_city_name').data('autocomplete-source')
	// });

	autocomplete = new google.maps.places.Autocomplete($("#host_address")[0], { types: ['geocode'] });

	// bind autocomplete object to 'place_changed' event (user selects place from dropdown)
	google.maps.event.addListener(autocomplete, 'place_changed',function () { 
		var result = autocomplete.getPlace();
		var locality = getLocalityComponent(result);
		$('#host_city_name').val(locality);
		$('#host_lat').val(result.geometry.location.lat());
		$('#host_lng').val(result.geometry.location.lng());
	});

	$('#host_strangers').change(function(event) {
		if ($(this).val() == "true"){
			alert("סימון אפשרות זו אומר ששמך הפרטי וכתובתך יופיעו בעמוד חיפוש המארחים באתר.");
		}
	});

	function getLocalityComponent(result){
		/* Function recieves a google PlacesResult and an array of address components
		   and returns the content of that address component
		*/
		locality = [];
		address_components = result.address_components;
		for(var i in address_components){
			type = address_components[i].types;
			for(var j in type){
				index = $.inArray(type[j],["locality"]);
				if(type[j] == "locality") {
					locality = address_components[i].long_name;
				}
			}
		}
		return locality;
	}
});