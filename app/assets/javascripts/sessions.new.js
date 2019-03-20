app.controller('UserSigninController', ['$scope', '$http', '$uibModal', 'dialogFactory', function($scope, $http, $uibModal, dialogFactory) {
	$scope.form = {};
	$scope.error = false;

	$scope.submit = function(event) {
		$scope.error = false;

		$scope.locale = document.getElementById('locale').className;
		event.preventDefault();
		if ($scope.signinForm.$valid) {
			return $http.post('/pages/missing_terms_agreement', {
				user: {
					email: $scope.form.email,
					password: $scope.form.password,
				}
			}).then(function(response) {
				gon.redirectLink = response.data.redirectLink;
				if (!!response.data.user.agreed_to_terms_at && !!response.data.user.subscribed_to_marketing) {
					dialogFactory.assignActiveUser(response.data.user);
				} else {
					dialogFactory.askTermsAgreement(response.data.user);
				}
			});
			// $http.post('/users/sign_in.json', {
			// 	user: {
			// 		email: $scope.form.email,
			// 		password: $scope.form.password,
			// 	}
			// }).then(function(response) {
			// 	if(response.status === 201) {
			// 		dialogFactory.askTermsAgreement(response.data);
			// 		return;
			// 	}
			// }).catch(function(response) {
			// 	if(response.status > 400) {
			// 		$scope.error = true;
			// 	}
			// });
		}
	}
}]);

