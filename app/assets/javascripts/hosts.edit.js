//= require directives/datePicker
//= require directives/isPhone

app.controller('HostEditController', ['$scope','$http','$uibModal','$timeout',
	function($scope, $http, $uibModal, $timeout) {
	$scope.host = {
		hosted_before: false,
    city_id: null
	};

  $scope.current_city = '';
  if (document.getElementById('locale').className === 'he') {
    $scope.current_country = { id: 97, printable_name: 'Israel' };
  }
  $scope.current_city_exist = true;

	$scope.steps = ['stepOne', 'stepTwo', 'stepThree'];
	$scope.submitted = [false, false, false];
	$scope.stepIndex = 0;
	$scope.dateFormat = 'dd-MMMM-yyyy';
	$scope.eventDate = {
		isOpen: false,
	}

	$scope.otherLanguageVisible = false;

	$scope.openDatepicker = function() {
		$scope.eventDate.isOpen = true;
	}

  // TODO: move these out to to a service
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
      return response.data;
    });
  };

  $scope.getCountryLocation = function(query) {
    $scope.loading_country = true;
    return $http.get('/cities/autocomplete_country', {
      params: { q: query }
    }).then(function(response){
      $scope.loading_country = false;
      return response.data;
    });
  };

	$scope.init = function() {
    $scope.host = JSON.parse(gon.host);
    $scope.organization = !!$scope.host.org_name;
    $scope.host.event_date = new Date($scope.host.event_date);
		$scope.host.event_time = $scope.host.event_time ? new Date($scope.host.event_time): null;

    if($scope.host.city) {
      $scope.current_city = { name: $scope.host.city.name, id: $scope.host.city_id };
    } else {
      $scope.host.city_id = null;
    }

    if($scope.host.country) {
      $scope.current_country = { printable_name: $scope.host.country.printable_name, id: $scope.host.country_id };
    } else {
      $scope.host.country_id = null;
    }
	}

  $scope.parseDate = function (s) {
      var tokens = /^(\d{2})-(\d{2})-(\d{4})$/.exec(s);

      return tokens && new Date(tokens[3], tokens[2] - 1, tokens[1]);
  };

	$scope.orgChanged = function(value) {
    if (value === 'false') {
      $scope.host.org_name = $scope.host.org_role = null;
    }
  }

  $scope.languageChanged = function() {
  	if($scope.host.event_language === "other") {
  		$scope.otherLanguageVisible = true;
  		$scope.host.event_language = null;
  	} else {
		$scope.otherLanguageVisible = false;
	}
  }

  $scope.onCityNameBlur = function() {
  }

  $scope.submitStepOne = function() {
  	$scope.submitted[0] = true;
  	if ($scope.stepOne.$valid) {
      $http.put('/hosts/' + $scope.host.id + '.json', {
        host: {
          hosted_before: $scope.host.hosted_before,
          org_name: $scope.host.org_name,
          phone: $scope.host.phone
        }
      }).then(function success(response) {
        $scope.stepIndex += 1;
      })
    }
  }

  $scope.submitStepTwo = function() {
    $scope.submitted[1] = true;
  	if ($scope.stepTwo.$valid) {
  		$http.put('/hosts/' + $scope.host.id + '.json', {
	  		host: {
					address: $scope.host.address,
          city_id: $scope.current_city.id,
					country_id: $scope.current_country.id,
					floor: $scope.host.floor,
					elevator: $scope.host.elevator,
					event_date: $scope.host.event_date,
					event_time: $scope.host.event_time
				}
	  	}).then(function success(response) {
	  		$scope.stepIndex += 1;
	  	})
  	}
  }

  $scope.submitStepThree = function() {
  $scope.submitted[2] = true;
  if ($scope.stepThree.preparationWantedGroup) {
    $scope.stepThree.preparationWantedGroup.$setDirty();
  }
  	if ($scope.stepThree.$valid) {
  		$http.put('/hosts/' + $scope.host.id + '.json', {
	  		host: {
				        event_language: $scope.host.event_language,
				        preparation_wanted: $scope.host.preparation_wanted,
					survivor_needed: $scope.host.survivor_needed,
					strangers: $scope.host.strangers,
					max_guests: $scope.host.max_guests,
					public_text: $scope.host.public_text,
					free_text: $scope.host.free_text
				},
				finalStep: true,
				locale: document.getElementById('locale').className
	  	}).then(function success(response) {
	  		var modalInstance = $uibModal.open({
		      templateUrl: 'host-signup-finished.html',
		      controller: 'HostSignupFinishedModal',
		      backdrop: false,
		      resolve: {
		      	host: function() {
		      		return $scope.host;
		      	}
		      }
		    });

	  		modalInstance.result.then(function () {
		      window.location = '/' + document.getElementById('locale').className + '/hosts/' + $scope.host.id;
		    }, function () {
		      window.location = '/' + document.getElementById('locale').className + '/hosts/' + $scope.host.id;
		    });
	  	})
  	}
  }

  $scope.onCountrySet = function() {
    if (!$scope.loading_country) {
      $scope.current_city = '';
      if (typeof $scope.current_country === 'string') {
        $scope.current_country = '';
        $scope.host.country_id = null;
      } else {
        $scope.host.country_id = $scope.current_country.id;
      }
    }
  }

  $scope.onCitySet = function() {
    if (!$scope.loading_city) {
      if (typeof $scope.current_city === 'string') {
        $scope.current_city = '';
        $scope.host.city_id = null;
        $scope.current_city_exist = false;
      } else {
        $scope.host.city_id = $scope.current_city.id;
        $scope.current_city_exist = true;
      }
    }
  }


  $scope.back = function() {
  	$scope.stepIndex -= 1;
  }

  $scope.getProgressBarSrc = function() {
  	var index = document.getElementById('locale').className === 'he'
  		? $scope.stepIndex + 1
  		: 3 - $scope.stepIndex;

  	return '/assets/progress_bar_' + index + '.png';
  }

  $scope.formatAutocompleteCountry = function(model) {
  	var country = _.find($scope.countries, { id: model });
  	if (country) { return country.printable_name };
  	return '';
  }
}]);


app.controller('HostSignupFinishedModal', ['$scope', '$uibModalInstance', 'host',
  function ($scope, $uibModalInstance, host) {

  $scope.cancel = function () {
    $uibModalInstance.dismiss('cancel');
  };

  $scope.fbShare = function () {
  	FB.ui({
		  method: 'share',
		  href: 'http://www.zikaronbasalon.com/'
		}, function(response){

		});
  };


  // $scope.fbShare = function () {
  //   var base = window.location.origin;
  //   var link = encodeURIComponent(base + '/' + document.getElementById('locale').className + '/pages/home/'  + '?invite=' + $scope.host.id);
  //   window.open(
  //     'https://www.facebook.com/dialog/share?app_id=1425545090852355&display=popup&href=' + link,
  //     '_blank' // <- This is what makes it open in a new window.
  //   );
  // };

  // $scope.fbShare = function () {
  //   FB.ui({
  //     method: 'share',
  //     href: 'http://zikaronbasalon.herokuapp.com/' + document.getElementById('locale').className + '/pages/home/'  + '?invite=' + host.id
  //   }, function(response){
  //   });
  // };

  $scope.buildEvening = function () {
  	var locale = document.getElementById('locale').className;
  	if (locale == "en") {
  		window.location = 'https://www.zikaronbasalon.org/build-your-event'
  	} else {
  		window.location = 'https://www.zikaronbasalon.com/eveningsetup';
  	}
  };
}]);
