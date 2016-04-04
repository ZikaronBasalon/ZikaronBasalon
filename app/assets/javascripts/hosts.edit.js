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

	$scope.openDatepicker = function() {
		$scope.eventDate.isOpen = true;
	}

	$scope.autocomplete = new google.maps.places.Autocomplete($("#city")[0], { types: ['(cities)'] });
	google.maps.event.addListener($scope.autocomplete, 'place_changed', getAddress);

	$scope.init = function(host) {
		$scope.host = host;
		$scope.organization = !!$scope.host.org_name;
		$scope.host.event_date = new Date($scope.host.event_date);
		$scope.host.event_time = $scope.host.event_time ? new Date($scope.host.event_time): null;
		if($scope.host.city) {
			$scope.host.city_name = $scope.host.city.name;
		}

		$scope.cityFromList = false;
	}

	$scope.orgChanged = function(value) {
    if (value === 'false') {
      $scope.host.org_name = $scope.host.org_role = null;
    }
  }

  $scope.languageChanged = function() {
  	if($scope.host.event_language === "other") {
  		$scope.otherLanguageVisible = true;
  		$scope.host.event_language = null;
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
  	if ($scope.stepTwo.$valid) {
  		$http.put('/hosts/' + $scope.host.id + '.json', {
	  		host: {
					address: $scope.host.address,
					city_name: $scope.host.city_name,
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
				finalStep: true
	  	}).then(function success(response) {
	  		var modalInstance = $uibModal.open({
		      templateUrl: 'host-signup-finished.html',
		      controller: 'HostSignupFinishedModal',
		      backdrop: false
		    });

	  		modalInstance.result.then(function () {
		      window.location = '/hosts/' + $scope.host.id;
		    }, function () {
		      window.location = '/hosts/' + $scope.host.id;
		    });
	  	})
  	}
  }


  $scope.back = function() {
  	$scope.stepIndex -= 1;
  }



  function getAddress() {
		$scope.result = $scope.autocomplete.getPlace();
		$scope.cityFromList = true;
		if($scope.result) {
			$scope.host.city_name = getAddressComponent($scope.result, "locality");
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


app.controller('HostSignupFinishedModal', ['$scope', '$uibModalInstance',
  function ($scope, $uibModalInstance) {

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

  $scope.buildEvening = function () {
   window.location = 'http://www.zikaronbasalon.com/#!eveningsetup/c1hap';
  };
}]);
