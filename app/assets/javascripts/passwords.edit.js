app.controller('UpdatePasswordController', ['$scope', '$http', function($scope, $http) {
	$scope.form = {};

	$scope.init = function (token) {
		$scope.token = token;
	}

	$scope.submit = function(event) {
		event.preventDefault();
		if ($scope.passwordForm.$valid) {
			$http.put('/users/password.json', {
				user: {
					password: $scope.form.password,
					password_confirmation: $scope.form.password_confirmation,
					reset_password_token: $scope.token
				}
			}).then(function(response) {
				if(response.status === 201) {
					window.location = '/';
				}
			}).catch(function(response) {
				if(response.status > 400) {
					$scope.error = true;
				}
			});
		}
	}
}]);