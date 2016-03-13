//= require lib/utils
//= require config/constants
//= require directives/managerLink

app.controller('ManagerShowController', ['$scope','$uibModal', '$http', '$location', function($scope, $uibModal, $http, $location) {
  $scope.hosts = [];
  $scope.search = {
    host: {},
    witness: {}
  };
  $scope.activeView = 'hosts';
  $scope.formatBool = formatBool;
  $scope.formatDate = formatDate;
  $scope.formatDateTime = formatDateTime;
  $scope.witnessTypes = witnessTypes;
  $scope.pagination = {
    currentPage: 1
  }

  $scope.sortProp = 'created_at';

  $scope.init = function(currentUser, hosts, witnesses, cities, totalHosts, totalWitnesses, currentPage) {
    $scope.currentUser = currentUser;
    $scope.hosts = _.map(hosts, function(host) {
      host.has_survivor = !!host.witness;
      return host;
    });

    $scope.witnesses = witnesses;
    $scope.cities = cities;
    $scope.totalHosts = totalHosts;
    $scope.totalWitnesses = totalWitnesses;
    $scope.$watch("search", function(newVal, oldVal) {
      if(newVal != oldVal) {
        filter(1);
      }
    }, true);
  }

  $scope.editHost = function(host) {
    window.open('/hosts/' + host.id, '_blank');
  }

  $scope.editWitness = function(witness) {
    window.open('/witnesses/' + witness.id, '_blank');
  }

  $scope.pageChanged = function() {
    filter($scope.pagination.currentPage);
  }

  function filter(page) {
    var params = {
      filter: {
        host: getFilterKeys($scope.search.host),
        witness: getFilterKeys($scope.search.witness)
      },
      page: page
    };

    $http.get('/managers/' + $scope.currentUser.meta.id + '.json' + '?' + $.param(params))
    .then(function(response) {
      $scope.hosts = JSON.parse(response.data.hosts);
      $scope.witnesses = JSON.parse(response.data.witnesses);
      $scope.pagination.currentPage = response.data.page;
      $scope.totalHosts = response.data.total_hosts;
      $scope.totalWitnesses = response.data.total_witnesses;
    });
  }

  function getFilterKeys(filterObj) {
    var filtered = {};
    _.mapKeys(filterObj, function(value, key) {
      if(value && value !== "") {
        filtered[key] = value;
      }
    });
    return filtered;
  }
    

    // return _.filter(hosts, function(host) {

    //   if(activeFilter($scope.search.host.survivor_needed) &&
    //       $scope.search.host.survivor_needed !== host.survivor_needed) {
    //     return false;
    //   }

    //   if(activeFilter($scope.search.host.has_survivor) &&
    //       $scope.search.host.has_survivor !== host.has_survivor) {
    //     return false;
    //   }

    //   if(activeFilter($scope.search.host.contacted) &&
    //       $scope.search.host.contacted !== host.contacted) {
    //     return false;
    //   }

    //   if(activeFilter($scope.search.host.city_id) && 
    //     (!host.city || $scope.search.host.city_id !== host.city.id)) {
    //     return false;
    //   }

    //   if ($scope.search.host.query) { 
    //     if (!_.includes(host.user.email, $scope.search.host.query) &&
    //         !_.includes(host.user.full_name, $scope.search.host.query) &&
    //         !_.includes(host.address, $scope.search.host.query) &&
    //         !_.includes(host.phone, $scope.search.host.query)
    //     ) {
    //       return false;
    //     }
    //   }

    //   return true;
    // });

  $scope.sort = function(arr) {
    return _.sortBy(arr, $scope.sortProp);
  }

  $scope.filterWitnesses = function(witnesses) {
    return _.filter(witnesses, function(witness) {

      if(activeFilter($scope.search.witness.witness_type) &&
          $scope.search.witness.witness_type !== witness.witness_type) {
        return false;
      }

      if(activeFilter($scope.search.witness.stairs) &&
          $scope.search.witness.stairs !== witness.stairs) {
        return false;
      }

      if(activeFilter($scope.search.witness.seminar_required) &&
          $scope.search.witness.seminar_required !== witness.seminar_required) {
        return false;
      }

      if(activeFilter($scope.search.witness.concept) &&
         $scope.search.witness.concept !== witness.concept) {
        return false;
      }

      if ($scope.search.witness.query) { 
        if (!_.includes(witness.full_name, $scope.search.witness.query) &&
            !_.includes(witness.witness_type, $scope.search.witness.query) &&
            !_.includes(witness.concept, $scope.search.witness.query)
        ) {
          return false;
        }
      }

      return true;
    });
  }

  $scope.isAccesible = function(host) {
    return host.floor === 0 || host.elevator;
  }

  $scope.onViewToggle = function(view) {
    $scope.activeView = view;
  }

  $scope.setSortProp = function(prop) {
    $scope.sortProp = prop;
  }

  $scope.getManager = function(obj) {
    return obj.city && obj.city.managers
      ? obj.city.managers[0]
      : {};
  }

  function activeFilter(filter) {
    return !_.isUndefined(filter) && !_.isNull(filter);
  }
}]);