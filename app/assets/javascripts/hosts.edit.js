app.controller('HostEditController', ['$scope','$http', function($scope, $http) {
	$scope.host = {
		hosted_before: false
	};

	$scope.steps = ['stepOne', 'stepTwo', 'stepThree'];
	$scope.stepIndex = 0;
	$scope.dateFormat = 'dd-MMMM-yyyy';
	$scope.eventDate = {
		isOpen: false,
	}

	$scope.openDatepicker = function() {
		$scope.eventDate.isOpen = true;
	}

	$scope.autocomplete = new google.maps.places.Autocomplete($("#address")[0], { types: ['geocode'] });
	google.maps.event.addListener($scope.autocomplete, 'place_changed', getAddress);

	$scope.init = function(host) {
		$scope.host = JSON.parse(host);
		$scope.organization = !!$scope.host.org_name;
		$scope.host.event_date = new Date($scope.host.event_date);

	}

	$scope.orgChanged = function(value) {
    if (value === 'false') {
      $scope.host.org_name = $scope.host.org_role = null;
    }
  }

  $scope.submitStepOne = function() {
  	if ($scope.stepOne.$valid) {
  		$http.put('/hosts/' + $scope.host.id + '.json', {
	  		host: {
					hosted_before: $scope.host.hosted_before,
					org_name: $scope.host.org_name,
					org_role: $scope.host.org_role,
					phone: $scope.host.phone
				}
	  	}).then(function success(response) {
	  		$scope.stepIndex += 1; 
	  	})
  	}
  }

  $scope.submitStepTwo = function() {
  	if ($scope.stepTwo.$valid) {
  		$http.put('/hosts/' + $scope.host.id + '.json', {
	  		host: {
					address: $scope.host.address,
					lat: $scope.host.lat,
					lng: $scope.host.lng,
					city_name: $scope.host.city_name,
					floor: $scope.host.floor,
					elevator: $scope.host.elevator,
					event_date: $scope.host.event_date
				}
	  	}).then(function success(response) {
	  		$scope.stepIndex += 1; 
	  	})
  	}
  }

  $scope.submitStepThree = function() {
  	if ($scope.stepThree.$valid) {
  		$http.put('/hosts/' + $scope.host.id + '.json', {
	  		host: {
					event_language: $scope.host.event_language,
					survivor_needed: $scope.host.survivor_needed,
					strangers: $scope.host.strangers,
					max_guests: $scope.host.max_guests,
					free_text: $scope.host.free_text
				}
	  	}).then(function success(response) {
	  		alert('finished!');
	  	})
  	}
  }


  $scope.back = function() {
  	$scope.stepIndex -= 1;
  }



  function getAddress() {
  	try {
			$scope.result = $scope.autocomplete.getPlace();
			if($scope.result && $scope.result.geometry && $scope.result.geometry.location) {
				handleSuccessfullGeocoding($scope.result);
			} else {
				handleUnsuccessfullGeocoding();
			}
		} catch(e) {
			handleSeriouslyUnsuccesfullGeocoding();
		}
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

	function handleSuccessfullGeocoding(result) {
		var locality = getLocalityComponent(result);
		$scope.host.address = result.formatted_address;
		$scope.host.city_name = locality;
		$scope.host.lat = result.geometry.location.lat();
		$scope.host.lng = result.geometry.location.lng();	
	}


	function handleUnsuccessfullGeocoding() {
		var query_text = $scope.host.address;
		var geocoder = new google.maps.Geocoder();

		geocoder.geocode({address: query_text},function (results,status) {
			// Geocoding was successfull
			if(status == google.maps.GeocoderStatus.OK) {
				$scope.host.address = results[0].formatted_address;
				handleSuccessfullGeocoding(results[0]);
			}
			// Geocoding failed. Update with current map center
			else {
				handleSeriouslyUnsuccesfullGeocoding();
			}
		});
	}

	function handleSeriouslyUnsuccesfullGeocoding() {
		$scope.host.city_name = 'לא ידוע';
		$scope.host.lat = 0;
		$scope.host.lng = 0;
	}

}]);
