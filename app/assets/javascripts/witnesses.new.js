//= require directives/isPhone
//= require lib/utils

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
	$scope.current_city_exist = true;

	$scope.typeOptions = [
		{ n: 'ניצול', v: 'survivor' },
		{ n: 'אקדמיה', v: 'academia' },
		{ n: 'דור שני', v: 'second_generation' },
		{ n: 'מטפל', v: 'therapist' }
	];

	$scope.knownLanguageOptions = _.map(languageNamesDictionary(), function(label, value) { return {value: value, label: label}; });
	$scope.languages = [];

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
		$scope.deserializeLanguage();
		this.languageOptions = _.map($scope.languages, $scope.tagToOption);

    if(witness.city_id) {
      $scope.current_city = { name: $scope.witness.city_name, id: $scope.witness.city_id };
    }
	}.bind(this)

	$scope.deserializeLanguage = function() {
		$scope.languages = $scope.witness.language ? _.map($scope.witness.language.split(',')) : []
	}

	$scope.serializeLanguage = function() {
		$scope.witness.language = $scope.languages.join(',');
	}

	$scope.tagToOption = function(newTag) {
		var knownOption = _.find($scope.knownLanguageOptions, function(option) {
			return _.includes([option.label, option.value], newTag);
		});

		return knownOption || { value: newTag, label: newTag };
	}

	$scope.optionToTag = function(option) {
		return option.value;
	}

  $scope.onCitySet = function() {
    if (!$scope.loading_city) {
      if (typeof $scope.current_city === 'string') {
				$scope.current_city = '';
				$scope.current_city_exist = false;
      } else {
				$scope.witness.city_id = $scope.current_city.id;
				$scope.current_city_exist = true;
      }
    }
  }

  $scope.getCityLocation = function(query, country_id) {
    $scope.loading_city = true;
    return $http.get('/cities/autocomplete_city', {
      params: {
        city: {
          country_id: country_id,
          q: query,
          witness_search: true
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
		$scope.languages = _.map(this.languageOptions, $scope.optionToTag);
		$scope.serializeLanguage();
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
	}.bind(this)

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
