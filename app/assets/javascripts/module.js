var app = angular.module('zikaronbasalon',[
	'ui.bootstrap'
])
.factory('httpRequestInterceptor', function () {
  return {
    request: function (config) {
      config.params = config.params || {};
      config.params.locale = document.getElementsByTagName('body')[0].className;
      
      return config;
    }
  };
})
.config(['$httpProvider', function ($httpProvider) {
	$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  $httpProvider.interceptors.push('httpRequestInterceptor');
}]);