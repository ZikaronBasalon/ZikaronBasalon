var app = angular.module('zikaronbasalon',[
	'ui.bootstrap'
])
.factory('httpRequestInterceptor', function () {
  return {
    request: function (config) {
      config.headers.locale = document.getElementsByTagName('body')[0].className;
      
      return config;
    }
  };
})
.config(['$httpProvider', function ($httpProvider) {
	$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  $httpProvider.interceptors.push('httpRequestInterceptor');
}]);