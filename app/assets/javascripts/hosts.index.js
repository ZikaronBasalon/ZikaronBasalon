app.controller('HostIndexController', ['$scope', function($scope) {
$scope.hosts = [];

$scope.init = function(hosts) {
  $scope.hosts = JSON.parse(hosts);
}

$scope.formatBool = function(value) {
  return value ? 'כן' : 'לא';
}

$scope.formatDate = function(date) {
  var date = new Date(date);
  var day = date.getUTCDate();
  var month= date.getUTCMonth() + 1;
  var year = date.getUTCFullYear();

  return day + '.' + month + '.' + year;
}


$scope.editHost = function(host) {
  window.open('/hosts/' + host.id + '/edit', '_blank');
}
}]);