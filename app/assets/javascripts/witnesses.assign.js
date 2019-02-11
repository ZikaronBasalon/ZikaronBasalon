//= require lib/utils
app.controller('WitnessAssignController', ['$scope', '$http', '$uibModal',
  function($scope, $http, $uibModal) {
	$scope.formatBool = formatBool;
	$scope.filter = {};
  $scope.success = false;

  $scope.init = function(witness, cityId) {

    $scope.pagination = {
      currentPage: 1
    };

    $scope.witness = witness;
    $scope.hosts = [];
    $scope.filter.city_id = cityId;

    $scope.$watch("filter.city_id", $scope.filterHosts, true);

    $scope.$watch('filter.query', _.throttle(function(oldVal, newVal) {
      if(newVal != oldVal) {
        $scope.filterHosts();
      }
    }, 2000), true);

    // initial call when page loaded (to get initial host list)
    $scope.filterHosts();
  };

  $scope.pageChanged = function() {
    $scope.filterHosts();
  };

  $scope.onAssignCitySelect = function($item) {
    $scope.filter.city_id = $item.id;
  }

  // todo: move to service
  $scope.getCityLocation = function(query, country_id) {
    return $http.get('/cities/autocomplete_city', {
      params: {
        city: {
          country_id: country_id,
          q: query
        }
      }
    }).then(function(response){
      return response.data;
    });
  };

  $scope.filterHosts = function() {
  	var params = {};

  	if($scope.filter.city_id) {
  		params.city_id = $scope.filter.city_id;
  	}

    if($scope.filter.query) {
      params.query = $scope.filter.query;
    }

    params.page = $scope.pagination.currentPage;

    $http.get('/witnesses/' + $scope.witness.id + '/assign.json'+ '?' + $.param(params))
    .then(function(response) {
        $scope.hosts = JSON.parse(response.data.hosts);
        $scope.hosts_count = JSON.parse(response.data.hosts_count);
    });

  }

$scope.assignHost = function(host) {
  var modalInstance = $uibModal.open({
    templateUrl: 'assign-modal.html',
    controller: 'WitnessAssignModalController',
    resolve: {
      host: function () {
        return host;
      },
      witness: function () {
        return $scope.witness;
      }
    }
  });

  modalInstance.result.then(function () {
    $scope.success = true;
  });
}
}]);

app.controller('WitnessAssignModalController', ['$scope', '$http','$uibModalInstance', 'host', 'witness',
 function($scope, $http, $uibModalInstance, host, witness) {

  $scope.host = host;
  $scope.witness = witness;
  $scope.getAccesability = getAccesability;
  $scope.formatDate = formatDate;
  $scope.formatLanguage = formatLanguage;
  $scope.formatStairs = formatStairs;
  $scope.formatWitnessAvailabilityTime = formatWitnessAvailabilityTime;
  $scope.formatTime = formatTime;
  $scope.formatBool = formatBool;

  $scope.close = function () {
    $uibModalInstance.dismiss('close');
  };

  $scope.createAssignment = function() {
    $scope.error = false;

    $http.put('/witnesses/' + $scope.witness.id + '.json', {
      witness: {
        host_id: $scope.host.id
      }
    }).then(function(response) {
      if(response.status === 201 && response.data.host_id) {
        window.location = '/' + document.getElementById('locale').className + '/hosts/' + response.data.host_id;
      } else {
        $scope.error = true;
      }
    });
  }

}]);