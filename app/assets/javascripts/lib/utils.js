function formatDate(date) {
	var date = new Date(date);
  var day = date.getDate();
  var month= date.getMonth() + 1;
  var year = date.getFullYear();

  return day + '.' + month + '.' + year;
}

function formatTime(date) {
  var date = new Date(date);
  var hour = date.getHours();
  var minutes = ('0'+ date.getMinutes()).slice(-2)

  return hour + ':' + minutes;
}

function formatDateTime(date) {
	var date = new Date(date);
  var day = date.getDate();
  var month= date.getMonth() + 1;
  var year = date.getFullYear();
  var hour = date.getHours();
  var minutes = ('0'+ date.getMinutes()).slice(-2)

  return day + '.' + month + '.' + year + ',' + hour + ':' + minutes;
}

function formatBool(value) {
	return value ? 'כן' : 'לא';
}


function getAccesability(host) {
  return "קומה " + host.floor + "," + formatBool(host.elevator);
}

function formatStrangers(strangers) {
  return strangers ? 'סלון פתוח' : 'סלון סגור';
}