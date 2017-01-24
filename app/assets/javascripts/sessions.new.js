app.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, modalData) {

  $scope.modalData = modalData;

  $scope.ok = function () {
    $uibModalInstance.close();
  };

  $scope.cancel = function () {
    $uibModalInstance.dismiss('cancel');
  };
});

app.controller('UserSigninController', ['$scope', '$http', '$uibModal', function($scope, $http, $uibModal) {
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
					$scope.data = response.data;

					if (!$scope.data.active_this_year && !$scope.data.admin) {//if role not set for this year yet and is not an admin
						var changerole = false;
						var last_years_role = $scope.data.meta_type;//the was last years role
						
						// #TODO: move these translations to a translations service or back serverside
						var translations = {en:{header:"Great to see you're back!",firstLine:"It's always nice to see people you know :)", secondLine:"",stay:"",change:""}, he:{header:"כיף שחזרתם!",firstLine:"תמיד כיף לראות פרצופים מוכרים :)", secondLine:"",stay:"",change:""}}
						if (last_years_role == "Host") {
							translations.he.secondLine = "תרצו להמשיך לארח גם השנה?";
							translations.he.stay = "כן! זו כבר מסורת";
							translations.he.change = "לא, רוצה להתארח";
							
							translations.en.secondLine = "Would you like to be a host this year too?";
							translations.en.stay = "Yes! It's tradition";
							translations.en.change = "No, I'll be a guest";
						} else if (last_years_role == "Guest") {
							translations.he.secondLine = "אולי השנה תרצו לארח זכרון בסלון אצלכם?";
							translations.he.stay = "רוצה להתארח";
							translations.he.change = "כן, רוצה לארח";
							
							translations.en.secondLine = "Perhaps this year you would like to host Zikaron Basalon by you?";
							translations.en.stay = "I would like to be a guest";
							translations.en.change = "I would like to host";
						}
						$scope.data.translations = translations[$scope.locale];
						$scope.open($scope.data);
						return;
					} else { //he already decided to be active this year or admin
						//regular login
						window.location = '/' + document.getElementById('locale').className + '/' + $scope.data.meta_type.toLowerCase() + 's/' + $scope.data.meta_id;
					}
				}
			}).catch(function(response) {
				if(response.status > 400) {
					$scope.error = true;
				}
			});
		}
	}

  $scope.modalData = $scope.data;

  $scope.animationsEnabled = true;

  $scope.open = function (data) {

    var modalInstance = $uibModal.open({
      animation: $scope.animationsEnabled,
      templateUrl: 'myModalContent.html',
      controller: 'ModalInstanceCtrl',
      data: data,
      resolve: {
        modalData: function () {
          return data;
        }
      }
    });

    modalInstance.result.then(function (selectedItem) {
      $scope.sendUserChoice(data, false); //the user clicked ok""
    }, function () {
      $scope.sendUserChoice(data, true);
    });
  };

  $scope.toggleAnimation = function () {
    $scope.animationsEnabled = !$scope.animationsEnabled;
  };

  $scope.sendUserChoice = function (data, changerole) {
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
  }

}]);

