//= require directives/compareTo
// require directives/hasSpace

app.controller('UserSignupController', ['$scope', '$http', function($scope, $http) {
	$scope.form = {};
	$scope.errors = null;

	$scope.init = function(type) {
		$scope.form.type = type;
	}

	$scope.submit = function(event) {
		event.preventDefault();
		if ($scope.signupForm.$valid) {
			$http.post('/users.json', {
				user: {
					email: $scope.form.email,
					password: $scope.form.password,
					password_confirmation: $scope.form.passwordConfirmation,
					full_name: $scope.form.fullName,
					type: $scope.form.type
				}
			}).then(function(response) {
				if(response.data && response.data.success) {
					window.location = response.data.redirect_url
				} else if(response.data.errors) {
					$scope.errors = _.map(response.data.errors, function(error) {
						return error[0];
					})
				}
			});
		}
	}
}]);