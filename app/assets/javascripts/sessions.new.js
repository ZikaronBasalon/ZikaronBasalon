app.controller('UserSigninController', ['$scope', '$http', function($scope, $http) {
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
				if(response.status === 201 || response.status === 200) {
					var data = response.data;
					var newrole = data.previous_meta_type;
					var oldrole = data.meta_type;
					var changerole = false;
					if (newrole == null && data.meta_type == "Guest") {
						if (confirm("Last year you were a Guest.\nPress Yes to continue being a guest or No to become a host")) {
							newrole = oldrole;
						} else {
							newrole = "Host";
							changerole = true;
						}
					}
					else if (newrole == null && data.meta_type == "Host") {
						if (confirm("Last year you were a Host.\nPress Yes to continue being a host or No to become a guest")) {
							newrole = oldrole;
						} else {
							newrole = "Guest";
							changerole = true;
						}
					}
					if (changerole) {
							$http.put('/users/' + data.id + '/assignrole.json', {
							newrole: newrole,
							oldrole: oldrole
						})
						.then(function(role_response) {
							data = role_response.data
							window.location = '/' + document.getElementById('locale').className + '/' + data.meta_type.toLowerCase() + 's/' + data.meta_id;
						})
						.catch(function(role_response) {
							$scope.error = true;
						});
					}
					if (!changerole) {
						window.location = '/' + document.getElementById('locale').className + '/' + data.meta_type.toLowerCase() + 's/' + data.meta_id;
					}
				}
			}).catch(function(response) {
				if(response.status > 400) {
					$scope.error = true;
				}
			});
		}
	}
}]);