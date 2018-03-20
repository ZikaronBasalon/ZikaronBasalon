//= require lib/utils
//= require request-invite
//= require directives/datePicker

app.controller('HostsRegisterLinkController', ['$scope','$http', '$uibModal', function($scope, $http, $uibModal) {

    $scope.init = function(host, currentUser) {
        $scope.host = host;
        $scope.currentUser = currentUser;
        if ($scope.host.invites_pending_count + $scope.host.invites_confirmed_count >= $scope.host.max_guests) {
            alert("מצטערים, אך לעת עתה נגמרו המקומות בסלון שביקשת להרשם אליו. הינך מועבר לדף הבית.");
            window.location.href = '/pages/home';
        }
        else {
            $scope.requestInvite();
        }
    };

    $scope.requestInvite = function() {
        var modalInstance = $uibModal.open({
            templateUrl: 'request-invite.html',
            controller: 'RequestInviteController',
            resolve: {
                host: function () {
                    return $scope.host;
                },
                currentUser: function () {
                    return $scope.currentUser;
                }
            }
        });

        modalInstance.result.then(function () {
            window.history.pushState(null, null, '/pages/home');
            location.reload();
        }, function () {
            window.history.pushState(null, null, '/pages/home');
        });
    };

}]);

