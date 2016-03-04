//= require lib/utils
//= require config/constants

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

  $scope.init = function(hosts, witnesses, cities) {
    $scope.hosts = _.map(hosts, function(host) {
      host.has_survivor = !!host.witness;
      return host;
    });

    $scope.witnesses = witnesses;
    
    $scope.cities = _.map(
      _.uniqBy($scope.hosts, function(host) { return host.city.name }),
      function(host) { return host.city }
    );
  }

  $scope.editHost = function(host) {
    window.open('/hosts/' + host.id, '_blank');
  }

  $scope.openWitnessPopup = function($event, host) {
    $scope.selectedHost = host;

    var modalInstance = $uibModal.open({
      templateUrl: 'witness-popup.html',
      controller: 'WitnessModalController',
      resolve: {
        witnesses: function () {
          return $scope.witnesses;
        }
      }
    });

    modalInstance.result.then(function (selectedWitness) {
      $http.put('/hosts/' + $scope.selectedHost.id + '.json', {
        host: {
          witness_id: selectedWitness.id
        }
      }).then(function() {
        location.reload();
      })
    });
    $event.stopPropagation();
  }

  $scope.filterHosts = function(hosts) {
    return _.filter(hosts, function(host) {

      if(activeFilter($scope.search.host.survivor_needed) &&
          $scope.search.host.survivor_needed !== host.survivor_needed) {
        return false;
      }

      if(activeFilter($scope.search.host.has_survivor) &&
          $scope.search.host.has_survivor !== host.has_survivor) {
        return false;
      }

      if(activeFilter($scope.search.host.contacted) &&
          $scope.search.host.contacted !== host.contacted) {
        return false;
      }

      if(activeFilter($scope.search.host.city_id) &&
         $scope.search.host.city_id !== host.city.id) {
        return false;
      }

      if ($scope.search.host.query) { 
        if (!_.includes(host.user.email, $scope.search.host.query) &&
            !_.includes(host.user.full_name, $scope.search.host.query) &&
            !_.includes(host.address, $scope.search.host.query) &&
            !_.includes(host.phone, $scope.search.host.query)
        ) {
          return false;
        }
      }

      return true;
    });
  }

  $scope.filterWitnesses = function(witnesses) {
    return witnesses;
  }

  $scope.isAccesible = function(host) {
    return host.floor === 0 || host.elevator;
  }

  $scope.onViewToggle = function(view) {
    $scope.activeView = view;
  }

  function activeFilter(filter) {
    return !_.isUndefined(filter) && !_.isNull(filter);
  }


}]);



app.controller('WitnessModalController', ['$scope', '$uibModalInstance', 'witnesses',
  function ($scope, $uibModalInstance, witnesses) {

  $scope.witnesses = witnesses;
  $scope.selected = {
    witness: {}
  };

  $scope.formatBool = function(value) {
    return value ? 'כן' : 'לא';
  };

  $scope.selectWitness = function(witness) {
    $scope.selected.witness = witness;
  }

  $scope.ok = function () {
    $uibModalInstance.close($scope.selected.witness);
  };

  $scope.cancel = function () {
    $uibModalInstance.dismiss('cancel');
  };
}]);
