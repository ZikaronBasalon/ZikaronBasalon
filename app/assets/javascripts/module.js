var app = angular.module('zikaronbasalon',[
	'ui.bootstrap',
	'angularSpinner',
  'ui.select',
  'ngSanitize',
  'mp.datePicker'
])
.factory('httpRequestInterceptor', function () {
  return {
    request: function (config) {
      config.headers.locale = document.getElementById('locale').className;

      return config;
    }
  };
})
.config(['$httpProvider', function ($httpProvider) {
	$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  $httpProvider.interceptors.push('httpRequestInterceptor');
}])
.factory('activeUsers', ['$http', 'activeDialog',
  function($http, activeDialog) {
    return {
      assignActiveUser: assignActiveUser
    };
    function assignActiveUser(data, optionalUrl) {
      var locale = document.getElementById('locale').className;
      if (!data.active_this_year && (data.meta_type == "Host" || data.meta_type == "Guest")) {//if role not set for this year yet and is not an admin
        var changerole = false;
        var last_years_role = data.meta_type;//the was last years role

        var translations = {en:{header:"Great to see you're back!",firstLine:"It's always nice to see people you know :)", secondLine:"",stay:"",change:""}, he:{header:"כיף שחזרתם!",firstLine:"תמיד כיף לראות פרצופים מוכרים :)", secondLine:"",stay:"",change:""}}
        if (last_years_role == "Host") {
          translations.he.secondLine = "תרצו להמשיך לארח גם השנה?";
          translations.he.stay = "כן! זו כבר מסורת";
          translations.he.change = "לא, רוצה להתארח";

          translations.en.secondLine = "Would you like to be a host this year too?";
          translations.en.stay = "Yes! It's tradition";
          translations.en.change = "No, I'll be a guest";
        } else if (last_years_role == "Guest") {
          translations.he.secondLine = "אולי השנה תרצו לארח זיכרון בסלון אצלכם?";
          translations.he.stay = "רוצה להתארח";
          translations.he.change = "כן, רוצה לארח";

          translations.en.secondLine = "Perhaps this year you would like to host Zikaron Basalon by you?";
          translations.en.stay = "I would like to be a guest";
          translations.en.change = "I would like to host";
        }
        data.translations = translations[locale];
        activeDialog.open(data);
      }
      else { //he already decided to be active this year or admin
        //regular login
        if (typeof optionalUrl !== 'undefined') {
          window.location = optionalUrl;
        } else {
          window.location = '/' + locale + '/' + data.meta_type.toLowerCase() + 's/' + data.meta_id;
        }
      }
    }

  }]);

app.factory('activeDialog', ['$http', '$uibModal',
  function($http, $uibModal) {
    return {
      open: open
    };
    function open(data, optionalUrl) {
      var modalInstance = $uibModal.open({
        animation: true,
        template: '<div class="modal-header"> <h3 class="modal-title"><center>{{modalData.translations.header}}</center></h3> </div> <div class="modal-body"> <center>{{modalData.translations.firstLine}}</center><br> <center>{{modalData.translations.secondLine}}</center><br> </div> <div class="modal-footer"> <button class="btn btn-primary" type="button" ng-click="ok()">{{modalData.translations.stay}}</button> <button class="btn btn-warning" type="button" ng-click="cancel()">{{modalData.translations.change}}</button> </div>',
        controller: 'ModalInstanceCtrl',
        data: data,
        resolve: {
          modalData: function () {
            return data;
          }
        }
      });
      modalInstance.result.then(function (selectedItem) {
        assignUserRole(data, false, optionalUrl); //the user clicked ok""
      }, function () {
        assignUserRole(data, true, optionalUrl);
      });
    }
    function assignUserRole(data, changerole, optionalUrl) {
      $http.put('/users/' + data.id + '/assignrole.json', {
        changerole: changerole
      })
      .then(function(role_response) {
        data = role_response.data
        if (typeof optionalUrl !== 'undefined') {
          window.location = optionalUrl;
        } else if (data.meta_type == "Host") {
          window.location = '/' + document.getElementById('locale').className + '/' + data.meta_type.toLowerCase() + 's/' + data.meta_id + '/edit';
        } else {
          window.location = '/' + document.getElementById('locale').className + '/' + data.meta_type.toLowerCase() + 's/' + data.meta_id;
        }
      })
      .catch(function(role_response) {

      });
    }

  }]);

angular.module('zikaronbasalon').controller('ModalInstanceCtrl', ['$scope', '$uibModalInstance', 'modalData', function ($scope, $uibModalInstance, modalData) {

  $scope.modalData = modalData;

  $scope.ok = function () {
    $uibModalInstance.close();
  };

  $scope.cancel = function () {
    $uibModalInstance.dismiss('cancel');
  };
}]);
