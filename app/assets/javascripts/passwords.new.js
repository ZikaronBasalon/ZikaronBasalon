app.controller('ForgotPasswordController', ['$scope', '$http', function($scope, $http) {
	$scope.form = {};

	$scope.submit = function(event) {
		event.preventDefault();
		if ($scope.passwordForm.$valid) {
			$http.post('/users/password.json', {
				user: {
					email: $scope.form.email
				}
			}).then(function(response) {
				if(response.status === 201) {
					$scope.success = true;
				}
			}).catch(function(response) {
				if(response.status > 400) {
					$scope.error = true;
				}
			});
		}
	}
}]);