app.controller('ManagerIndexController', ['$scope','$http', function($scope, $http) {
  $scope.managers = [];
  $scope.cities = [];
  $scope.current_country = { id: 97, printable_name: 'Israel' };
  $scope.cities_list = [];

  $scope.init = function() {
    $scope.all_cities = gon.all_cities;
    $scope.managers = JSON.parse(gon.managers);
    $scope.citiesWithoutManager = JSON.parse(gon.citiesWithoutManager);
  }

  $scope.getCountryLocation = function(query) {
    return $http.get('/cities/autocomplete_country', {
      params: { q: query }
    }).then(function(response){
      return response.data;
    });
  };

  $scope.getCityLocation = function(query, country_id) {
    return $http.get('/cities/autocomplete_city', {
      params: {
        city: {
          country_id: country_id,
          q: query
        }
      }
    }).then(function(response){
      return response.data;
    });
  };

  $scope.addMovilCity = function(city) {
    $scope.current_city = '';
    $scope.cities_list.push(city);
  }

  $scope.removeMovilCity = function(city) {
    $scope.cities_list = $scope.cities_list.filter(function(city) {
      return city.id != city.id;
    });
  }

  $scope.createManager = function() {
  	$http.post('/managers', {
  		manager: {
  			temp_email: $scope.email,
  			cities: $scope.cities
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
