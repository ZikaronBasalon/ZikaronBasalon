app.controller('WitnessNewController', ['$scope','$http', function($scope, $http) {
	$scope.witness = {};

	$scope.typeOptions = [
		{ n: 'ניצול', v: 'survivor' }, 
		{ n: 'אקדמיה', v: 'academia' },
		{ n: 'דור שני', v: 'second_generation' },
		{ n: 'מטפל', v: 'therapist' }
	];
	
	$scope.autocomplete = new google.maps.places.Autocomplete($("#address")[0], { types: ['geocode'] });
	google.maps.event.addListener($scope.autocomplete, 'place_changed', getAddress);


	$scope.submit = function() {
		$http.post('/witnesses', {
			witness: $scope.witness
		}).then(function(response) {
			window.location = '/witnesses';
		});
	}

  function getAddress() {
		result = $scope.autocomplete.getPlace();
		var locality = getLocalityComponent(result);
		$scope.witness.address = result.formatted_address;
		$scope.witness.city_name = locality;
  }

	function getLocalityComponent(result){
	 // Function recieves a google PlacesResult and an array of address components
	 //   and returns the content of that address component
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

}]);
