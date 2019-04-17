app.controller('UserSigninController', ['$scope', '$http', '$uibModal', 'dialogFactory', function($scope, $http, $uibModal, dialogFactory) {
	$scope.form = {};
	$scope.error = false;

	$scope.errorMessages = function(messages) {
		return messages.join('<br>');
	}

	$scope.submit = function(event) {
		$scope.error = false;

		$scope.locale = document.getElementById('locale').className;
		event.preventDefault();
		if ($scope.signinForm.$valid) {
			$scope.errors = null;
			var userSubmit = {
				user: {
					email: $scope.form.email,
					password: $scope.form.password,
				}
			};
			// this logs in the user if not missing terms agreement
			return $http.post('/pages/missing_terms_agreement', userSubmit).then(function(response) {
				gon.redirectLink = response.data.redirectLink;
				if (!!response.data.user.agreed_to_terms_at && !!response.data.user.subscribed_to_marketing) {
					// checks if user needs to be asked to be host/guest this year and displays dialog if needed
					dialogFactory.assignActiveUser(response.data.user);
				} else {
					// the user wasn't signed in; needs to agree, then we resubmit the form
					dialogFactory.askTermsAgreement(response.data.user, userSubmit);
				}
			}).catch(function(response) {
				if(response.status > 400) {
					$scope.errors = response.data && response.data.errors;
				}
			});
		}
	}
}]);

