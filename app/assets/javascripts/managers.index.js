app.controller('ManagerIndexController', ['$scope','$http', function($scope, $http) {
  $scope.managers = [];
  $scope.cities = [];
  $scope.current_manager = null;
  $scope.current_movil = null;
  if (document.getElementById('locale').className === 'he') {
    $scope.current_country = { id: 97, printable_name: 'Israel' };
  }

  $scope.init = function() {
    var current_manager_id = localStorage.getItem("current_manager_id");
    if (current_manager_id) {
      $scope.loadMovil(current_manager_id);
    }
  }

  $scope.setCurrentCountry = function(country) {
    $scope.current_country = country;
  }

  $scope.clearSelection = function() {
    localStorage.removeItem("current_manager_id");
    $scope.current_manager = null;
    $scope.current_movil = null;
  }

  $scope.getManager = function(email) {
    return $http.get('/managers/find_movil', {
      params: { email: email }
    }).then(function(response){
      return response.data;
    });
  };

  $scope.loadMovil = function(manager_id) {
    return $http.get('/managers/' + manager_id + '/load_movil', {})
    .then(function(response){
      $scope.current_manager = response.data;
      localStorage.setItem("current_manager_id", $scope.current_manager.id);
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
    $http.post('/managers/' + $scope.current_manager.id + '/add_city', {
      city_id: city.id
    }).then(function(response) {
      $scope.current_city = null;
      $scope.current_manager = response.data;
    });
  }

  $scope.createManager = function() {
    $http.post('/managers', {
      manager: {
        temp_email: $scope.current_movil,
        name: $scope.manager.full_name.$viewValue,
        password: $scope.manager.pwd.$viewValue
      }
  	}).then(function(response) {
      $scope.current_manager = response.data;
      localStorage.setItem("current_manager_id", $scope.current_manager.id);
    });
  }

  $scope.removeCity = function(city_id) {
    $http.post('/managers/' + $scope.current_manager.id + '/remove_city', {
      city_id: city_id
    }).then(function(response) {
      $scope.current_manager = response.data
    });
  }

  $scope.deleteManager = function() {
    if (confirm("בטוח בטוח??")) {
      $http.delete('managers/' + $scope.current_manager.id)
      .then(function(response) {
        $scope.current_manager = null;
        localStorage.removeItem("current_manager_id");
      });
    }
  }
}]);
