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
  $scope.formatWitnessType = formatWitnessType;
  $scope.formatConcept = formatConcept;
  $scope.witnessTypes = witnessTypes;
  $scope.pagination = {
    currentPage: 1
  }

  $scope.sortProp = 'created_at';

  $scope.success = false;
  $scope.loading = false;

  $scope.init = function(currentUser, hosts, witnesses, cities, totalHosts, totalWitnesses, currentPage) {
    $scope.currentUser = currentUser;
    $scope.hosts = hosts;
    $scope.witnesses = witnesses;
    $scope.cities = cities;
    $scope.totalHosts = totalHosts;
    $scope.totalWitnesses = totalWitnesses;


    $scope.$watch("search", function(newVal, oldVal) {
      if(newVal != oldVal) {
        filter(1);
      }
    }, true);

    $scope.$watch('query', _.throttle(function(oldVal, newVal) {
      if(newVal != oldVal) {
        filter(1);
      }
    }, 2000), true);
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
      page: page,
      host_query: $scope.query.host,
      witness_query: $scope.query.witness,
      host_sort: $scope.sortProp,
      witness_sort: $scope.witnessSortProp,
      has_manager: $scope.search.has_manager,
      has_host: $scope.search.has_host,
      has_survivor: $scope.search.has_survivor,
      is_org: $scope.search.is_org,
      event_language: $scope.search.event_language
    };

    $scope.loading = true;

    $http.get('/managers/' + $scope.currentUser.meta.id + '.json' + '?' + $.param(params))
    .then(function(response) {
      $scope.hosts = JSON.parse(response.data.hosts);
      $scope.witnesses = JSON.parse(response.data.witnesses);
      $scope.pagination.currentPage = response.data.page;
      $scope.totalHosts = response.data.total_hosts;
      $scope.totalWitnesses = response.data.total_witnesses;
      $scope.loading = false;
    });
  }

  $scope.export = function() {
    var params = {
      filter: {
        host: getFilterKeys($scope.search.host)
      },
      host_query: $scope.query.host,
      host_sort: $scope.sortProp,
      has_manager: $scope.search.has_manager,
      has_host: $scope.search.has_host,
      has_survivor: $scope.search.has_survivor,
      is_org: $scope.search.is_org,
      event_language: $scope.search.event_language
    };

    window.open(
      '/managers/' + $scope.currentUser.meta.id + '/export' + '?' + $.param(params),
      '_blank' // <- This is what makes it open in a new window.
    );
    // .then(function(response) {
    //   $scope.loading = false;
    //   var encodedUri = encodeURI(response.data);
    //   var link = document.createElement("a");
    //   link.setAttribute("href", encodedUri);
    //   link.setAttribute("download", "data.csv");
    //   link.click();
    // });
  }

  function getFilterKeys(filterObj) {
    var filtered = {};
    _.mapKeys(filterObj, function(value, key) {
      if(!_.isNull(value) && value !== "") {
        filtered[key] = value;
      }
    });
    delete filtered.query;
    return filtered;
  }
    
  $scope.sort = function(arr) {
    //return _.sortBy(arr, $scope.sortProp).reverse();
  }

  $scope.isAccesible = function(host) {
    return host.floor === 0 || host.elevator;
  }

  $scope.onViewToggle = function(view) {
    $scope.activeView = view;
  }

  $scope.setSortProp = function(prop) {
    $scope.sortProp = prop;
    filter(1)
  }

  $scope.setSortPropWitness = function(prop) {
    $scope.witnessSortProp = prop;
    filter(1)
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

  $scope.contactWitnessDue = function(host) {
    return host.has_witness && !host.contacted_witness &&
    ((new Date() - new Date(host.assignment_time)) / (1000*60*60*24)) > 3
  }
}]);