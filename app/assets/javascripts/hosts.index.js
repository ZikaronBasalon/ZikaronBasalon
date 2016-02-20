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
  var day = date.getDate();
  var month= date.getMonth() + 1;
  var year = date.getFullYear();

  return day + '.' + month + '.' + year;
}


$scope.editHost = function(host) {
  window.open('/hosts/' + host.id + '/edit', '_blank');
}
}]);