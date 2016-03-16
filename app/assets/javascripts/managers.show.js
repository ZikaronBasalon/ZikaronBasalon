//= require lib/utils
//= require config/constants
//= require directives/managerLink

app.controller('ManagerShowController', ['$scope','$uibModal', '$http', '$location', function($scope, $uibModal, $http, $location) {
  $scope.hosts = [];
  $scope.search = {
    host: {},
    witness: {}
  };

  $scope.query = {
    host: null
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

  $scope.success = false;

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
    
  $scope.sort = function(arr) {
    return _.sortBy(arr, $scope.sortProp).reverse();
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

  $scope.deleteHost = function(host) {
    var res = confirm("בטוח בטוח?");
    if (res) {
      $http.delete('/hosts/' + host.id + '.json').then(function(response) {
        if (response.data.success) {
          $scope.showSuccessMessage();
          $scope.success = true;
          $scope.hosts = _.filter($scope.hosts, function(host) {
            return host.id !== response.data.host.id;
          });
        }
      })
    }
  }

  $scope.deleteWitness = function(witness) {
    var res = confirm("בטוח בטוח?");
    if (res) {
      $http.delete('/witnesses/' + witness.id + '.json').then(function(response) {
        if (response.data.success) {
          $scope.showSuccessMessage();
          $scope.witnesses = _.filter($scope.witnesses, function(witness) {
            return witness.id !== response.data.witness.id;
          });
        }
      })
    }
  }

  $scope.showSuccessMessage = function() {
    $scope.success = true;
    setTimeout(function() {
      $scope.success = false;
      $scope.$apply();
    }, 3000);
  }

  function activeFilter(filter) {
    return !_.isUndefined(filter) && !_.isNull(filter);
  }
}]);