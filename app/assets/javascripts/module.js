var app = angular.module('zikaronbasalon',[
	'ui.bootstrap',
	'angularSpinner',
  'ui.select',
  'ngSanitize',
  'ngAutocomplete'
])
.factory('httpRequestInterceptor', function () {
  return {
    request: function (config) {
      config.headers.locale = document.getElementById('locale').className;
      
      return config;
    }
  };
})
.directive('disableTap', function($timeout) {
  return {
    link: function() {

      $timeout(function() {
        document.querySelector('.pac-container').setAttribute('data-tap-disabled', 'true')
      },500);
    }
  };
})
.config(['$httpProvider', function ($httpProvider) {
	$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  $httpProvider.interceptors.push('httpRequestInterceptor');
}]);