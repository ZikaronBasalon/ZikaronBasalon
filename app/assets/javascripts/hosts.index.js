//= require list
var hostList;
$(function(){
  var options = {
    valueNames: [ 'f_name', 'l_name', 'email','phone','address','region_name',
                  'city_name', 'max_guests','survivor_needed','strangers','status','created_at' ]
  };

  hostList = new List('hosts', options);

  $('select,input').change(function(event) {
    filter_hosts_list();
  });
});


function filter_hosts_list() {
  filters = get_filters();
  hostList.filter(function(item) {
    return is_in_filter_conditions(item,filters);
  }); 
}


function get_filters () {
  filters = {};

  sNeeded = $('#survivor_needed').val();
  if(sNeeded != "") {
    filters.survivor_needed = sNeeded;
  }
  
  region = $('#region_name').val();
  if(region != "") {
    filters.region_name = region;
  }

  city = $('#city_name').val();
  if(city != "") {
    filters.city_name = city;
  }

  strangers = $('#strangers').is(':checked');
  if(strangers){
    filters.strangers = strangers;
  }

  return filters;
}//End of get_filters

function is_in_filter_conditions (item,filters) {
  values = item.values();

  if(filters.survivor_needed){
    if(values.survivor_needed != filters.survivor_needed)
      return false;
  }

  if(filters.region_name){
    if(values.region_name != filters.region_name)
      return false;
  }

  if(filters.city_name){
    if(values.city_name != filters.city_name)
      return false;
  }

  if(filters.strangers){
    if(values.strangers == "false")
      return false;
  }
 
  return true;
}