app.controller('UpdatePasswordController', ['$scope', '$http', function($scope, $http) {
	$scope.form = {};

	$scope.init = function (token) {
		$scope.token = token;
	}

	$scope.errorMessages = function(errors) {
		return _.map(_.keys(errors), function(field) { return field + ': ' + errors[field].join('; ') }).join('<br>');
	}

	$scope.submit = function(event) {
		event.preventDefault();
		if ($scope.passwordForm.$valid) {
			$scope.errors = null;
			$http.put('/users/password.json', {
				user: {
					password: $scope.form.password,
					password_confirmation: $scope.form.password_confirmation,
					reset_password_token: $scope.token
				}
			}).then(function(response) {
				window.location = '/';
			}).catch(function(response) {
				if(response.status > 400) {
					$scope.errors = response.data && response.data.errors
				}
			});
		}
	}
}]);
