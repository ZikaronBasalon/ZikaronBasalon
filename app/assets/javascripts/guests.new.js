//= require directives/compareTo

app.controller('GuestSignupController', ['$scope', '$http', function($scope, $http) {
	$scope.form = {};
	$scope.error = null;

	$scope.submit = function(event) {
		event.preventDefault();
		if ($scope.signupForm.$valid) {
			$http.post('/users.json', {
				user: {
					email: $scope.form.email,
					password: $scope.form.password,
					password_confirmation: $scope.form.passwordConfirmation,
					full_name: $scope.form.fullName,
					type: 'guest'
				}
			}).then(function(response) {
				if(response.data && response.data.success) {
					window.location = window.location + '?invite=' + $scope.host.id;
				} else if(response.data.errors) {
					$scope.errors = _.map(response.data.errors, function(error) {
						return error[0];
					})
				}
			});
		}
	}
}]);