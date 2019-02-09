//= require directives/isPhone

app.controller('WitnessNewController', ['$scope','$http','$timeout', function($scope, $http, $timeout) {
	$scope.witness = {
		can_morning: false,
		can_afternoon: false,
		can_evening: false,
		free_on_day: true,
		special_population: false,
    available_day1: false,
    available_day2: false,
    available_day3: false,
    available_day4: false,
    available_day5: false,
    available_day6: false,
    available_day7: false,
    available_day8: false,
    available_day9: false
	};

	$scope.otherLanguageVisible = false;

	$scope.typeOptions = [
		{ n: 'ניצול', v: 'survivor' },
		{ n: 'אקדמיה', v: 'academia' },
		{ n: 'דור שני', v: 'second_generation' },
		{ n: 'מטפל', v: 'therapist' }
	];

	$scope.submitted = false;
	$scope.alerts = [];
	$scope.action = 'new';

	// $scope.autocomplete = new google.maps.places.Autocomplete($("#city_name")[0], { types: ['(cities)'] });
  // $scope.autocomplete.setComponentRestrictions({'country': ['ps', 'il']});


	// $scope.autocomplete = new google.maps.places.Autocomplete($("#city_name")[0]);
	// google.maps.event.addListener($scope.autocomplete, 'place_changed', getAddress);

	$scope.init = function(witness) {
    $scope.cities = gon.cities;
		if(witness.id) {
			delete witness.created_at;
			delete witness.updated_at;
			$scope.witness = witness;
			$scope.action = 'edit';
		}
    if(witness.city_id) {
      $scope.current_city = _.find($scope.cities, { city_id: witness.city_id });
      if ($scope.current_city === null) {
        $scope.current_city = {
          name: witness.city_name,
          city_id: witness.city_id,
          not_found: true
        };
      }
    }
	}

  $scope.onCitySet = function() {
    if (typeof $scope.current_city === 'string') {
      $scope.current_city = '';
    } else {
      $scope.witness.city_id = $scope.current_city.city_id;
    }
  }

	$scope.submit = function() {
		$scope.submitted = true;
		if($scope.form.$valid) {

			submitWitness()
			.then(function(response) {
				if(response.status === 201) {
					window.location = '/' + document.getElementById('locale').className + '/witnesses/' + response.data.id;
				} else {
					_.each(response.data, addAlert);
					$("html, body").animate({ scrollTop: 0 }, "slow");
				}
			}).catch(function(response) {
				console.log(response);
				_.each(response.data, addAlert);
				$("html, body").animate({ scrollTop: 0 }, "slow");
			});

		} else {
				$("html, body").animate({ scrollTop: 0 }, "slow");
			}
	}

	$scope.onCityNameBlur = function() {
  	$timeout(function() {
  		if(!$scope.cityFromList) {
  			$scope.witness.city_name = null;
  		}
  		$scope.cityFromList = false;
			$scope.$apply();
  	}, 1000);
  }

	function submitWitness() {
		if($scope.action === 'new') {
			return $http.post('/witnesses.json', {
				witness: $scope.witness
			});
		} else {
			return $http.put('/witnesses/' + $scope.witness.id + '.json', {
				witness: $scope.witness
			});
		}
	}

	$scope.languageChanged = function() {
  	if($scope.witness.language === "other") {
  		$scope.otherLanguageVisible = true;
  		$scope.witness.language = null;
  	}
  }

  function getAddress() {
		$scope.result = $scope.autocomplete.getPlace();
		$scope.cityFromList = true;
		if($scope.result && $scope.result.vicinity && $scope.result.vicinity.indexOf(',') === -1) {
			$scope.witness.city_name = $scope.result.vicinity;
			// $scope.witness.city_name = getLocalityComponent($scope.result);
		} else {
      alert('please select a city - אנא בחר עיר')
    }
		$scope.$apply();
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

	function addAlert(alert) {
		$scope.alerts.push({ type: 'danger', msg: alert[0] });
	}

}]);
