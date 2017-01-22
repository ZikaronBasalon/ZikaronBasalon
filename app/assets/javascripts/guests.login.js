//= require lib/utils

app.controller('GuestSigninController', ['$scope', '$http', function($scope, $http) {
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
					/*SAMPLE response.data
						{
						  "admin": true,
						  "created_at": "2016-03-27T16:31:31Z",
						  "email": "zikaronbasalon@gmail.com",
						  "full_name": "אדמין בסלון",
						  "id": 415,
						  "meta_id": 1,
						  "meta_type": "Manager",
						  "phone": null,
						  "sub_admin": false,
						  "updated_at": "2017-01-22T09:54:42Z"
						}
					*/
						
					var url;
					if(getUrlParameter('invite', window.location)) {
						url = window.location;
					} else {
						url = window.location + '?invite=' + $scope.host.id;
					} 
					
					window.location = url;
				}
			}).catch(function(response) {
				if(response.status > 400) {
					$scope.error = true;
				}
			});
		}
	}
}]);