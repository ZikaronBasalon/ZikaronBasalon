//= require lib/utils
//= require request-invite
//= require directives/datePicker

app.controller('HomePageController', ['$scope','$http', '$uibModal', function($scope, $http, $uibModal) {
  $scope.hosts = [];
  $scope.search = {};
  $scope.search.reverseOrdering = false;
  $scope.currentPage = 1;

  $scope.formatBool = formatBool;
  $scope.formatDate = formatDate;
  $scope.formatAddress = formatAddress;
  $scope.formatLanguage = formatLanguage;
  $scope.formatAddressDisplay = formatAddressDisplay;
  $scope.formatCityDisplay = formatCityDisplay;
  $scope.sortProp = 'user.full_name';

  $scope.init = function(hosts, cities, totalItems, currentUser, countries) {
    $scope.hosts = hosts;
    $scope.cities = cities;
    $scope.countries = countries
    $scope.totalItems = totalItems;
    $scope.currentUser = currentUser;

    var hostId = getUrlParameter('invite', window.location);
    if(hostId) {
      var host = _.find($scope.hosts, { id: parseInt(hostId) });
      if (host) {
        $scope.requestInvite(host);
      } else {
        $http.get('/hosts/'+hostId+'.json').then(function(response) {
          if(response.data.host) {
            $scope.requestInvite(JSON.parse(response.data.host));
          } else {
            window.location = '/pages/home';
          }
        });
      }
    }

    $scope.$watch('search.query', _.throttle(function(oldVal, newVal) {
      if(newVal != oldVal) {
        $scope.filter();
      }
    }, 2000), true);
  }

  $scope.filter = function() {
    $scope.getHosts();
  }

  $scope.pageChanged = function() {
    $scope.getHosts($scope.currentPage);
  }

  $scope.getHosts = function(page) {
    $scope.loading = true;
    $http.get('/pages/home.json', {
      params: {
        page: page,
        'city_ids[]': _.map($scope.search.cities, 'id'),
        country_id: $scope.search.country_id,
        event_language: $scope.search.event_language,
        event_date: $scope.search.event_date,
        query: $scope.search.query,
        sort: $scope.sortProp,
        reverse_ordering: +$scope.search.reverseOrdering,
        vetrans: $scope.search.vetrans || null
      }
    }).then(function(response) {
      $scope.loading = false;
      $scope.cities = response.data.cities;
      $scope.hosts = JSON.parse(response.data.hosts);
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
        },
        currentUser: function () {
          return $scope.currentUser;
        }
      }
    });

    modalInstance.result.then(function () {
      window.history.pushState(null, null, '/pages/home');
      location.reload();
    }, function () {
      window.history.pushState(null, null, '/pages/home');
      location.reload();
    });
  }

  $scope.setSortProp = function(prop) {
    $scope.search.reverseOrdering = !$scope.search.reverseOrdering;
    $scope.sortProp = prop;
    $scope.currentPage = 1;
    $scope.getHosts($scope.currentPage);
  }

  
}]);

