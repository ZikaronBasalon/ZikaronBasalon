//= require lib/utils

app.directive('commentList', function () {
  return {
  	scope: { 
  		comments: '=',
  	},
  	controller: function() {
     this.formatDateTime = formatDateTime;
  	},
  	controllerAs: 'ctrl',
  	bindToController: true,
    template: 
              '<div class="comment-list">' +
               '<div ng-repeat="comment in ctrl.comments" class="comment well">' +
                   '<div class="comment-body">' +
                      '<div class="text">' +
                        '<p>{{ comment.content }}</p>' +
                      '</div>' +
                    '<p class="attribution">ע"י {{ comment.user.full_name }} ב {{ ctrl.formatDateTime(comment.created_at) }}</p>' +
                  '</div>' +
               '</div>' +
              '</div>'

             
  };
});
