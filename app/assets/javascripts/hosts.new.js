$(function(){
	var result;
	autocomplete = new google.maps.places.Autocomplete($("#host_address")[0], { types: ['geocode'] });

	// bind autocomplete object to 'place_changed' event (user selects place from dropdown)
	google.maps.event.addListener(autocomplete, 'place_changed', getAddress);

	$('#host_address').focusout(function(event) {
		setTimeout(function(){
			getAddress();
		},500);
	});

	$('#host_strangers').change(function(event) {
		var $max_guests = $('#host_max_guests');
		if ($(this).val() == "true"){
			alert("סימון אפשרות זו אומר ששמך הפרטי וכתובתך יופיעו בעמוד חיפוש המארחים באתר.");
			$max_guests.parents('.control-group').show();
			if($max_guests.val() == 0) {
				$max_guests.val("");
			}
		} else {
			$max_guests.parents('.control-group').hide();
			$max_guests.val(0);
		}
	});

	function getAddress() {
		result = autocomplete.getPlace();
		if(result.geometry && result.geometry.location) {
			handleSuccessfullGeocoding(result);
		} else {
			handleUnsuccessfullGeocoding();
		}
	}

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

	function handleSuccessfullGeocoding(result) {
		$('#host_address').val(result.formatted_address);
		var locality = getLocalityComponent(result);
		$('#host_city_name').val(locality);
		$('#host_lat').val(result.geometry.location.lat());
		$('#host_lng').val(result.geometry.location.lng());	
	}


	function handleUnsuccessfullGeocoding() {
		var query_text = $('#host_address').val();
		var geocoder = new google.maps.Geocoder();

		geocoder.geocode({address: query_text},function (results,status) {
			// Geocoding was successfull
			if(status == google.maps.GeocoderStatus.OK) {
				handleSuccessfullGeocoding(results[0]);
			}
			// Geocoding failed. Update with current map center
			else {
				console.log("Geocoding failed");
			}
		});
	}
});




	