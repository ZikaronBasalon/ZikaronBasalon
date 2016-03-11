app.directive('commentForm', function () {
  return {
  	scope: { 
  		obj: '=',
      resource: '@',
      userId: '@',
      callback: '='
  	},
  	controller: ['$http', function($http) {
      var self = this;
      this.text = '';
  		this.submit = function() {
        $http.post('/'+ this.resource + '/' + this.obj.id + '/comments', {
          comment: {
            content: this.text,
            user_id: this.userId
          }
        }).then(function(response) {
          self.callback(response);
          self.text = '';
        });
      };
  	}],
  	controllerAs: 'ctrl',
  	bindToController: true,
    template: '<style>' +
                'comment-form { width: 100%; } .comment-form textarea { width: 100%; height: 69px; border: none; resize: none; }' +
                '.comment-form button { float: left; }' +
              '</style>' +
              '<div class="comment-form">' +
                '<textarea placeholder="הוסף הערה לשימוש הצוות" ng-model="ctrl.text"></textarea>' +
                '<button class="btn btn-warning" ng-click="ctrl.submit()">שלח</button>' +
              '</div>'
  };
});
