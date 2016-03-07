//= require lib/utils

app.controller('HomePageController', ['$scope','$http', function($scope, $http) {
  $scope.hosts = [];
  $scope.search = {};
  $scope.currentPage = 1;

  $scope.formatBool = formatBool;
  $scope.formatDate = formatDate;

  $scope.init = function(hosts, cities, totalItems) {
    $scope.hosts = hosts;
    $scope.cities = cities;
    $scope.totalItems = totalItems;
  }

  $scope.filter = function() {
    $scope.getHosts();
  }

  $scope.pageChanged = function() {
    $scope.getHosts($scope.currentPage);
  }

  $scope.getHosts = function(page) {
    $http.get('/pages/home.json', {
      params: {
        page: page,
        city_id: $scope.search.city_id
      }
    }).then(function(response) {
      $scope.cities = response.data.cities;
      $scope.hosts = response.data.hosts;
      $scope.totalItems = response.data.total_items;
    });
  }

  $scope.requestInvite = function(host) {
    
  }
}]);
