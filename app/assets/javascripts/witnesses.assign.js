//= require lib/utils
app.controller('WitnessAssignController', ['$scope', '$http', function($scope, $http) {
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
}]);