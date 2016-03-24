app.controller('GuestShowController', ['$scope', '$http', function($scope, $http) {
	$scope.init = function(guest) {
		$scope.guest = guest;
	}
}]);