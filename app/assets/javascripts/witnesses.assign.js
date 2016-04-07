//= require lib/utils
app.controller('WitnessAssignController', ['$scope', '$http', '$uibModal',  
  function($scope, $http, $uibModal) {
	$scope.formatBool = formatBool;
	$scope.filter = {};
  $scope.success = false;

  $scope.init = function(witness, hosts, cities, cityId) {
    $scope.witness = witness;
    $scope.hosts = hosts;
    $scope.cities = cities;
    $scope.filter.city_id = cityId;

    $scope.$watch("filter", $scope.filterHosts, true);
  }

  $scope.filterHosts = function(oldVal, newVal) {
  	var params = {};

  	if($scope.filter.city_id) {
  		params.city_id = $scope.filter.city_id;
  	}

  	if(oldVal != newVal) {
  		$http.get('/witnesses/' + $scope.witness.id + '/assign.json'+ '?' + $.param(params))
  		.then(function(response) {
  			$scope.hosts = JSON.parse(response.data.hosts);
  		});
  	}
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