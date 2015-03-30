//= require list
var inviteList;
$(function(){
  var options = {
    valueNames: ['city_name', 'guest_name', 'guest_email', 'host_name','host_email', 'display_status'],
    page: 5000
  };

  inviteList = new List('invites', options);
});
