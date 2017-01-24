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
					var changerole = false;
					if (!data.active_this_year && !data.admin) {//if role not set for this year yet
						var last_years_role = data.meta_type;//the was last years role
						var next_years_role = last_years_role == "Host" ? "Guest" : "Host";
						var question_string = "Last year you were a " + last_years_role + 
																  ".\nPress Yes to continue being a " + last_years_role + " or No to become a " + next_years_role;
						if (confirm(question_string)) {
							//do nothing (just chenge active_this_year to true)
						} else {
							changerole = true;
						}
						$http.put('/users/' + data.id + '/assignrole.json', {
							changerole: changerole
						})
						.then(function(role_response) {
							data = role_response.data
							window.location = '/' + document.getElementById('locale').className + '/' + data.meta_type.toLowerCase() + 's/' + data.meta_id;
						})
						.catch(function(role_response) {
							$scope.error = true;
						});
					} else { //he already decided to be active this year
						//regular login
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