//= require directives/compareTo
//= require directives/isPhone
//= require lib/utils

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
					agreed_to_terms_at: $scope.form.agreedToTermsAt ? (new Date()).toUTCString() : null,
					full_name: $scope.form.fullName,
					type: 'guest'
				},
				phone: $scope.form.phone
			}).then(function(response) {
				if(response.data && response.data.success) {
					var url;
					if(getUrlParameter('invite', window.location)) {
						url = window.location;
					} else {
						url = window.location + '?invite=' + $scope.host.id;
					}

					window.location = url;
				} else if(response.data.errors) {
					$scope.errors = _.map(response.data.errors, function(error) {
						return error[0];
					})
				}
			});
		}
	}
}]);