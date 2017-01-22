app.controller('UserWelcomeController', ['$scope', '$http', function($scope, $http) {
	$scope.init = function(type) {
		$scope.user_was = type;
	}

	$scope.create_meta = function(type) {
		if ($scope.user_was == 'Host' || $scope.user_was == 'Guest') {
			$http.post('/users/create_meta.json', {
				type: type
			}).then(function(response) {
				if (response.data && response.data.success) {
					window.location = response.data.redirect_url
				}
			});
		} else {

		}
	}
}]);