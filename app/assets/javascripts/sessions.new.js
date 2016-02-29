app.controller('UserSigninController', ['$scope', '$http', function($scope, $http) {
	$scope.form = {};
	$scope.error = false;

	$scope.submit = function(event) {
		$scope.error = false;
		event.preventDefault();
		if ($scope.signinForm.$valid) {
			$http.post('/users/sign_in.json', {
				user: {
					email: $scope.form.email,
					password: $scope.form.password,
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