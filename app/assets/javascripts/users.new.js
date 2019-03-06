//= require directives/compareTo
// require directives/hasSpace
//= require directives/isPhone

app.controller('UserSignupController', ['$scope', '$http', function($scope, $http) {
	$scope.form = {};
	$scope.errors = null;

	$scope.init = function(type) {
		$scope.form.type = type;
	}

	$scope.toggleRegisterAs = function(type) {
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
					agreed_to_terms_at: $scope.form.agreedToTermsAt ? (new Date()).toUTCString() : null,
					subscribed_to_marketing: $scope.form.subscribedToMarketing,
					full_name: $scope.form.fullName,
					type: $scope.form.type
				},
				phone: $scope.form.phone
			}).then(function(response) {
				if(response.data && response.data.success) {
					window.location = '/' + document.getElementById('locale').className + response.data.redirect_url
				} else if(response.data.errors) {
					$scope.errors = _.map(response.data.errors, function(error) {
						return error[0];
					})
				}
			});
		}
	}
}]);