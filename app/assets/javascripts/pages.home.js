//= require lib/utils
//= require request-invite
//= require directives/datePicker

app.controller('HomePageController', ['$scope','$http', '$uibModal', function($scope, $http, $uibModal) {
  $scope.hosts = [];
  $scope.search = {};
  $scope.search.reverseOrdering = false;
  $scope.currentPage = 1;

  $scope.formatBool = formatBool;
  $scope.formatTableDate = formatDate;
  $scope.formatAddress = formatAddress;
  $scope.formatLanguage = formatLanguage;
  $scope.formatAddressDisplay = formatAddressDisplay;
  $scope.formatCityDisplay = formatCityDisplay;
  $scope.sortProp = 'user.full_name';


    $scope.dateFormat = 'dd-MMMM-yyyy';
    $scope.eventDate = {
        isOpen: false,
    }

    $scope.openDatepicker = function() {
        $scope.eventDate.isOpen = true;
    }

    $scope.orgChanged = function(value) {
        if (value === 'false') {
            $scope.host.org_name = $scope.host.org_role = null;
        }
    }

  $scope.init = function(hosts, cities, regions, totalItems, currentUser, countries) {

    //  Make Israel default country on search
    $scope.search.country_id = 97;


    $scope.hosts = hosts;
    $scope.cities = cities;
    $scope.regions = regions;
    $scope.countries = countries;
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

    $scope.getHosts(1);

    $scope.$watch('search.query', _.throttle(function(oldVal, newVal) {
      if(newVal != oldVal) {
        $scope.filter();
      }
    }, 2000), true);
  }


    $scope.formatDate = function (date) {
        function pad(n) {
            return n < 10 ? '0' + n : n;
        }

        if (!date || !date.getDate) {
            return;
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
        region_id: $scope.search.region_id,
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
      $scope.regions = response.data.regions;
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
    });
  }

  $scope.setSortProp = function(prop) {
    $scope.search.reverseOrdering = !$scope.search.reverseOrdering;
    $scope.sortProp = prop;
    $scope.currentPage = 1;
    $scope.getHosts($scope.currentPage);
  }
  
}]);

