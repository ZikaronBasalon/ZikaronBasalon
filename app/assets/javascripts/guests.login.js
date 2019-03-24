//= require lib/utils

app.controller('GuestSigninController', ['$scope', '$http', 'dialogFactory', function($scope, $http, dialogFactory) {
	$scope.form = {};
	$scope.error = false;

	$scope.submit = function(event) {
		$scope.error = false;
		event.preventDefault();
		if ($scope.signinForm.$valid) {
			var userSubmit = {
				user: {
					email: $scope.form.email,
					password: $scope.form.password
				}
			};
			return $http.post('/pages/missing_terms_agreement', userSubmit).then(function(response) {
				gon.redirectLink = response.data.redirectLink;
				if (getUrlParameter('invite', window.location)) {
					url = window.location;
				} else {
					url = window.location + '?invite=' + $scope.host.id;
				}
				gon.redirectLink = url;
				if (!!response.data.user.agreed_to_terms_at && !!response.data.user.subscribed_to_marketing) {
					window.location = url;
				} else {
					gon.guestMode = true;
					// the user wasn't signed in; needs to agree, then we resubmit the form
					dialogFactory.askTermsAgreement(response.data.user, userSubmit);
				}
			});
		}
	}
}]);