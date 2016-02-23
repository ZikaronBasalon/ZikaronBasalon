app.controller('ManagerShowController', ['$scope','$uibModal', '$http', function($scope, $uibModal, $http) {
  $scope.hosts = [];
  $scope.search = {};

  $scope.init = function(hosts, witnesses) {
    $scope.hosts = hosts;
    $scope.witnesses = witnesses;
  }

  $scope.formatBool = function(value) {
    return value ? 'כן' : 'לא';
  }

  $scope.formatDate = function(date) {
    var date = new Date(date);
    var day = date.getDate();
    var month= date.getMonth() + 1;
    var year = date.getFullYear();

    return day + '.' + month + '.' + year;
  }

  $scope.editHost = function(host) {
    window.open('/hosts/' + host.id + '/edit', '_blank');
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

      if(activeFilter($scope.search.survivor_needed) &&
         $scope.search.survivor_needed !== host.survivor_needed) {
        return false;
      }

      if(activeFilter($scope.search.has_survivor)) {
        if($scope.search.has_survivor && !host.witness.id) {
          return false;
        }

        if(!$scope.search.has_survivor && host.witness.id) {
          return false;
        }
      }

      if(activeFilter($scope.search.strangers) &&
         $scope.search.strangers !== host.strangers ) {
        return false;
      }

      if ($scope.search.query) { 
        if (!_.includes(host.user.email, $scope.search.query) &&
            !_.includes(host.user.full_name, $scope.search.query) &&
            !_.includes(host.address, $scope.search.query) &&
            !_.includes(host.phone, $scope.search.query)
        ) {
          return false;
        }
      }

      return true;
    });
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
