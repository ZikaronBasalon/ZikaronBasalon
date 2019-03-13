app.controller('UserSigninController', ['$scope', '$http', '$uibModal', 'dialogFactory', function($scope, $http, $uibModal, dialogFactory) {
	$scope.form = {};
	$scope.error = false;

	$scope.submit = function(event) {
		$scope.error = false;

		$scope.locale = document.getElementById('locale').className;
		event.preventDefault();
		if ($scope.signinForm.$valid) {
			$http.post('/users/sign_in.json', {
				user: {
					email: $scope.form.email,
					password: $scope.form.password,
				}
			}).then(function(response) {
				if(response.status === 201) {
					dialogFactory.assignActiveUser(response.data);
					return;
				}
			}).catch(function(response) {
				if(response.status > 400) {
					$scope.error = true;
				}
			});
		}
	}
}]);

