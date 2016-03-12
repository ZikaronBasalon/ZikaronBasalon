app.directive('managerLink', function () {
  return {
  	scope: { 
  		obj: '=' 
  	},
  	controller: ['$scope', function($scope) {
  		this.manager = $scope.ctrl.obj.city && $scope.ctrl.obj.city.managers
  			? $scope.ctrl.obj.city.managers[0]
  			: null;
  	}],
  	controllerAs: 'ctrl',
  	bindToController: true,
    template: '<a ng-if="ctrl.manager" ng-href="/managers/{{ctrl.manager.id}}">' +
    					'{{ ctrl.manager.temp_email }}</a>'
  };
});
