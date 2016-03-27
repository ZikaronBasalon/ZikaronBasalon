app.directive('inviteStatus', function () {
  return {
  	scope: { 
  		invite: '=',
  	},
  	controller: function() {
     this.statusToClass = function(invite) {
     	if(invite.confirmed === null) {
     		return 'danger';
     	}

     	return invite.confirmed ? 'success' : 'warning';
     }

     this.statusText = function(invite) {
      if(invite.confirmed === null) {
        return "הבקשה נדחתה";
      }

      var places = invite.plus_ones + 1;

      return invite.confirmed 
        ? places + " מקומות אושרו"
        : places + " מקומות ממתינים לאישור";
        
     }

     this.daysToCancelation = function(invite) {
      var date1 = new Date();
      var date2 = new Date(invite.created_at);
      var timeDiff = Math.abs(date2.getTime() - date1.getTime());
      var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24)); 
      
      return diffDays < 4 
        ? "הבקשה תבוטל אוטומטית בעוד " + (5 - diffDays) + " ימים"
        : "";
     }
  	},
  	controllerAs: 'ctrl',
  	bindToController: true,
    template: 
              '<div class="invite-status pull-left">' +
               '<span class="label label-{{ctrl.statusToClass(ctrl.invite)}}">' +
                  '{{ ctrl.statusText(ctrl.invite) }}' +
               '</span>' +
               '<div ng-if="ctrl.invite.confirmed === false">' +
                  '{{ ctrl.daysToCancelation(ctrl.invite) }}' +
               '</div>'+
              '</div>'
  };
});
