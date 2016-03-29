app.controller('WitnessIndexController', ['$scope', function($scope) {
  $scope.witnesses = [];

  $scope.init = function(witnesses) {
    $scope.witnesses = witnesses;
  }

  $scope.formatBool = function(value) {
    return value ? 'כן' : 'לא';
  }
}]);