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

	$scope.init = function(witness) {
		if(witness.id) {
			delete witness.created_at;
			delete witness.updated_at;
			$scope.witness = witness;
			$scope.action = 'edit';
		}

    if(witness.city_id) {
      $scope.current_city = { name: $scope.witness.city_name, id: $scope.witness.city_id };
    }
	}

  $scope.onCitySet = function() {
    if (!$scope.loading_city) {
      if (typeof $scope.current_city === 'string') {
        $scope.current_city = '';
      } else {
        $scope.witness.city_id = $scope.current_city.id;
      }
    }
  }

  $scope.getCityLocation = function(query, country_id) {
    $scope.loading_city = true;
    return $http.get('/cities/autocomplete_city', {
      params: {
        city: {
          country_id: country_id,
          q: query
        }
      }
    }).then(function(response){
      $scope.loading_city = false;
      console.log(response.data)
      return response.data;
    });
  };

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

	function addAlert(alert) {
		$scope.alerts.push({ type: 'danger', msg: alert[0] });
	}

}]);
