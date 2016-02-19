var app = angular.module('zikaronbasalon',[
	'ui.bootstrap'
]).config(['$httpProvider', function ($httpProvider) {
	$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
}]);