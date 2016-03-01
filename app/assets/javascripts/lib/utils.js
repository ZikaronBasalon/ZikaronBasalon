function formatDate(date) {
	var date = new Date(date);
  var day = date.getDate();
  var month= date.getMonth() + 1;
  var year = date.getFullYear();

  return day + '.' + month + '.' + year;
}

function formatDateTime(date) {
	var date = new Date(date);
  var day = date.getDate();
  var month= date.getMonth() + 1;
  var year = date.getFullYear();
  var hour = date.getHours();
  var minutes = date.getMinutes();

  return day + '.' + month + '.' + year + ',' + hour + ':' + minutes;
}

function formatBool(value) {
	return value ? 'כן' : 'לא';
}