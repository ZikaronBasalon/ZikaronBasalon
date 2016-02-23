//= require directives/compareTo
app.controller('UserSignupController', ['$scope', function($scope) {
	$scope.form = {};
	$scope.error = null;

	$scope.validate = function(event) {
		if (!$scope.signupForm.$valid) {
			event.preventDefault();
		}
	}

}]);