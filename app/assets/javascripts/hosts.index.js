//= require list
var hostList;
$(function(){
  var options = {
    valueNames: [ 'f_name', 'l_name', 'email','phone','address','region_name',
                  'city_name', 'max_guests','survivor_needed','strangers','status']
  };

  hostList = new List('hosts', options);

  $('select').change(function(event) {
    filter_hosts_list();
  });

  $('#export_to_excel').click(function(event) {
    tableToExcel('staff_table','Hosts');
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

  city = $('#city_name').val();
  if(city != "") {
    filters.city_name = city;
  }

  strangers = $('#strangers').val();
  if(strangers != "") {
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

  if(filters.city_name){
    if(values.city_name != filters.city_name)
      return false;
  }

  if(filters.city_name){
    if(values.city_name != filters.city_name)
      return false;
  }

  return true;
}

var tableToExcel = (function() {
  var uri = 'data:application/vnd.ms-excel;base64,'
    , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--><meta http-equiv="content-type" content="text/plain; charset=UTF-8"/></head><body><table>{table}</table></body></html>'
    , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
    , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
  return function(table, name) {
    if (!table.nodeType) table = document.getElementById(table)
    var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
    window.location.href = uri + base64(format(template, ctx))
  }
})()