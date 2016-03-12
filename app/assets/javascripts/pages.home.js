//= require lib/utils
//= require request-invite

app.controller('HomePageController', ['$scope','$http', '$uibModal', function($scope, $http, $uibModal) {
  $scope.hosts = [];
  $scope.search = {};
  $scope.currentPage = 1;

  $scope.formatBool = formatBool;
  $scope.formatDate = formatDate;
  $scope.formatAddress = formatAddress;

  $scope.init = function(hosts, cities, totalItems) {
    $scope.hosts = hosts;
    $scope.cities = cities;
    $scope.totalItems = totalItems;

    var hostId = getUrlParameter('invite', window.location);
    if(hostId) {
      var host = _.find($scope.hosts, { id: parseInt(hostId) });
      if (host) {
        $scope.requestInvite(host);
      }
    }
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
    var modalInstance = $uibModal.open({
      templateUrl: 'request-invite.html',
      controller: 'RequestInviteController',
      resolve: {
        host: function () {
          return host;
        }
      }
    });
  }
}]);

