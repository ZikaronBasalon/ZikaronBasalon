app.controller('ManagerIndexController', ['$scope','$http', function($scope, $http) {
  $scope.managers = [];
  $scope.city;

  $scope.init = function() {
    $scope.managers = JSON.parse(gon.managers);
    $scope.citiesWithoutManager = JSON.parse(gon.citiesWithoutManager);
  }

  $scope.createManager = function() {
  	$http.post('/managers', {
  		manager: {
  			temp_email: $scope.email,
  			city_name: $scope.city
  		}
  	}).then(function(response) {
  		var manager = response.data;
  		var i = _.findIndex($scope.managers, { temp_email: manager.temp_email });
  		if (i > -1) {
  			$scope.managers[i] = manager;
  		} else {
  			$scope.managers.push(manager);
  		}
  	});
  }

  $scope.removeCity = function(manager, city) {
    $http.post('/managers/' + manager.id + '/remove_city', {
      city_id: city.id
    }).then(function(response) {
      var manager = response.data;
      var i = _.findIndex($scope.managers, { temp_email: manager.temp_email });
      if (i > -1) {
        $scope.managers[i] = manager;
      }
    });
  }

  $scope.deleteManager = function(manager) {
    var dialog = confirm("בטוח בטוח??");
    if (dialog == true) {
        $http.delete('managers/' + manager.id)
        .then(function(response) {
          $scope.managers = _.filter($scope.managers, function(manager) {
            return manager.id !== response.data.id
          });
        });
    }
  }

  function getPlaceLocality(place) {
  	return _.filter(place.address_components, function(component) {
  		return _.includes(component.types, 'locality');
  	})[0].long_name;
  }

}]);
