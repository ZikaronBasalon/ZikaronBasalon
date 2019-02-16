app.controller('ManagerIndexController', ['$scope','$http', function($scope, $http) {
  $scope.managers = [];
  $scope.cities = [];
  $scope.current_manager = null;
  $scope.current_country = { id: 97, printable_name: 'Israel' };
  $scope.cities_list = [];

  $scope.init = function() {
    $scope.all_cities = gon.all_cities;
    $scope.managers = JSON.parse(gon.managers);
    $scope.citiesWithoutManager = JSON.parse(gon.citiesWithoutManager);
  }

  $scope.getManager = function(email) {
    return $http.get('/managers/find_movil', {
      params: { email: email }
    }).then(function(response){
      return response.data;
    });
  };

  $scope.loadMovil = function(manager) {
    // load cities and stuff for movil email
    return $http.get('/managers/' + manager.id + '/load_movil', {})
    .then(function(response){
      $scope.current_manager = response.data;
    })
    .catch(function(error) {
      // error.data - tell that not found...
    });
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
    }).then(function(response) {
      return response.data;
    });
  };

  $scope.addMovilCity = function(city) {
    $scope.current_city = '';
    $scope.cities_list.push(city);
  }

  $scope.removeMovilCity = function(city_to_remove) {
    $scope.cities_list.forEach(function(city, index, all) {
      if (city_to_remove.id == city.id) {
        all.splice(index, 1);
      }
    });
  }

  $scope.createManager = function() {
    $http.post('/managers', {
      manager: {
        temp_email: $scope.email,
        name: $scope.name,
        password: $scope.password
      }
  	}).then(function(response) {
      $scope.current_manager = response.data
    });
  }

  $scope.removeCity = function(manager, city) {
    $http.post('/managers/' + manager.id + '/remove_city', {
      city_id: city.id
    }).then(function(response) {
      $scope.current_manager = response.data
    });
  }

  $scope.deleteManager = function(manager) {
    if (confirm("בטוח בטוח??")) {
      $http.delete('managers/' + manager.id)
      .then(function(response) {
        $scope.current_manager = null;
      });
    }
  }
}]);
