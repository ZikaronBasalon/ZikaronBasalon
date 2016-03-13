//= require lib/utils
app.controller('WitnessAssignController', ['$scope', '$http', '$uibModal',  
  function($scope, $http, $uibModal) {
	$scope.formatBool = formatBool;
	$scope.filter = {};

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
  $scope.getAccesability = getAccesability;
  $scope.formatDate = formatDate; 
  $scope.formatLanguage = formatLanguage;
  $scope.formatStairs = formatStairs;

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
}
}]);

app.controller('WitnessAssignModalController', ['$scope', '$http','$uibModalInstance', 'host', 'witness', 
 function($scope, $http, $uibModalInstance, host, witness) {
  
  $scope.host = host;
  $scope.witness = witness;

  $scope.close = function () {
    $uibModalInstance.dismiss('close');
  };

}]);