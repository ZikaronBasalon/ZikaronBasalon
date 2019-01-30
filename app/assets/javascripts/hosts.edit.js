//= require directives/datePicker
//= require directives/isPhone

app.controller('HostEditController', ['$scope','$http','$uibModal','$timeout',
	function($scope, $http, $uibModal, $timeout) {
	$scope.host = {
		hosted_before: false
	};

	$scope.steps = ['stepOne', 'stepTwo', 'stepThree'];
	$scope.submitted = [false, false, false];
	$scope.stepIndex = 0;
	$scope.dateFormat = 'dd-MMMM-yyyy';
	$scope.eventDate = {
		isOpen: false,
	}

	$scope.otherLanguageVisible = false;

	$scope.initAutocomplete = function(iso) {
		// var options = { types: ['(cities)'] };
		if(iso) {
			// options.componentRestrictions = { country: iso }
		}

    // $scope.autocomplete = new google.maps.places.Autocomplete($("#city")[0], options);
		$scope.autocomplete = new google.maps.places.Autocomplete($("#city")[0]);
    // $scope.autocomplete.setComponentRestrictions({'country': ['ps', 'il']});

		google.maps.event.addListener($scope.autocomplete, 'place_changed', getAddress);
	}

	$scope.openDatepicker = function() {
		$scope.eventDate.isOpen = true;
	}

	$scope.init = function() {
    $scope.host = JSON.parse(gon.host);
    $scope.organization = !!$scope.host.org_name;
    $scope.countries = gon.countries;
    $scope.cities = gon.cities;
		$scope.host.event_date = $scope.formatDate(new Date($scope.host.event_date));
		$scope.host.event_time = $scope.host.event_time ? new Date($scope.host.event_time): null;
		if($scope.host.city) {
			$scope.host.city_name = $scope.host.city.name;
			$scope.result = $scope.host.city_name;
		}

		$scope.cityFromList = false;

		if($scope.host.country) {
			$scope.initAutocomplete($scope.host.country.iso)
		} else {
			var locale = document.getElementById('locale').className;
			if(locale === 'he') {
				var israel = _.find($scope.countries, { iso: 'IL' });
				$scope.host.country_id = israel.id;
				$scope.initAutocomplete(israel.iso);
			} else {
				$scope.initAutocomplete();
			}
		}
	}

  $scope.formatDate = function (date) {
    function pad(n) {
      return n < 10 ? '0' + n : n;
    }

    var locale = document.getElementById('locale').className;
    if (locale == 'he') {
      return date && pad(date.getDate() + '-' +
      pad(date.getMonth() + 1)  + '-' +
      date.getFullYear());
    } else {
      return date && pad(date.getUTCDate() + '-' +
      pad(date.getUTCMonth() + 1)  + '-' +
      date.getUTCFullYear());
    }
  };

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
  	$timeout(function() {
  		if(!$scope.cityFromList) {
  			$scope.host.city_name = null;
  		}
  		$scope.cityFromList = false;
			$scope.$apply();
  	}, 1000);
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
  	if ($scope.stepTwo.$valid && $scope.result) {
  		$http.put('/hosts/' + $scope.host.id + '.json', {
	  		host: {
					address: $scope.host.address,
					city_name: $scope.host.city_name,
					floor: $scope.host.floor,
					elevator: $scope.host.elevator,
					event_date: $scope.host.event_date,
					event_time: $scope.host.event_time,
					country_id: $scope.host.country_id
				}
	  	}).then(function success(response) {
	  		$scope.stepIndex += 1;
	  	})
  	}
  }

  $scope.submitStepThree = function() {
  	$scope.submitted[2] = true;
  	if ($scope.stepThree.$valid) {
  		$http.put('/hosts/' + $scope.host.id + '.json', {
	  		host: {
					event_language: $scope.host.event_language,
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

  $scope.onCountrySelect = function() {
    var country = _.find($scope.countries, {id: $scope.host.country_id} )
    $scope.initAutocomplete(country.iso);
  }

  $scope.onCitySelect = function() {
  	var city = _.find($scope.cities, {id: $scope.host.city_id} )
  	$scope.initAutocomplete(city.name);
  }

  function getAddress() {
		$scope.result = $scope.autocomplete.getPlace();
		$scope.cityFromList = true;
		if($scope.result && $scope.result.vicinity && $scope.result.vicinity.indexOf(',') === -1) {
      // $scope.host.city_name = getAddressComponent($scope.result, "locality");
			$scope.host.city_name = $scope.result.vicinity;// getAddressComponent($scope.result, "locality");
		} else {
      alert('please select a city - אנא בחר עיר')
    }
		$scope.$apply();
  }

	function getAddressComponent(result, component){
	 // Function recieves a google PlacesResult and an array of address components
	 //   and returns the content of that address component
		locality = [];
		address_components = result.address_components;
		for(var i in address_components){
			type = address_components[i].types;
			for(var j in type){
				index = $.inArray(type[j],[component]);
				if(type[j] == component) {
					locality = address_components[i].long_name;
				}
			}
		}
		return locality;
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
  		window.location = 'http://www.zikaronbasalon.org/#!build-your-event/c1hap'
  	} else {
  		window.location = 'http://www.zikaronbasalon.com/#!eveningsetup/c1hap';
  	}
  };
}]);
