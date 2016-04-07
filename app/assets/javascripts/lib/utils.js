function formatDate(date) {
	var date = new Date(date);
  var day = date.getDate();
  var month= date.getMonth() + 1;
  var year = date.getFullYear();

  return day + '.' + month + '.' + year;
}

function formatTime(date) {
  if (!date) {
    return "";
  }
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
  var locale = getLocale();
  if(locale === "en") {
    return value ? 'Yes' : 'No';
  } else {
    return value ? 'כן' : 'לא';
  }
}

function formatElevatorBool(value) {
  var locale = getLocale();
  if(locale === "en") {
    return value ? 'with elevator' : 'no elevator';
  } else {
    return value ? 'יש מעלית' : 'אין מעלית';
  }
}

function formatStairs(value) {
  return value ? 'יכול לעלות מדרגות' : 'לא יכול לעלות מדרגות';
}


function getAccesability(host) {
  var locale = getLocale();
  var floor = locale === "en" ? "Floor" : "קומה";
  return floor + " " + host.floor + ", " + formatElevatorBool(host.elevator);
}

function formatStrangers(strangers) {
  var locale = getLocale();
  if(locale === "en") {
      return strangers ? 'Open salon' : 'Closed salon';
  } else {
    return strangers ? 'סלון פתוח' : 'סלון סגור';
  }
}

function formatFirstName(host) {
  return host.user 
    ? host.user.full_name.split(' ')[0]
    : ''
}

function getUrlParameter(name, url) {
  if (!url) url = location.href;
  name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
  var regexS = "[\\?&]"+name+"=([^&#]*)";
  var regex = new RegExp( regexS );
  var results = regex.exec( url );
  return results == null ? null : results[1];
}

function formatLanguage(language) {
  switch(language) {
    case 'hebrew':
      return 'עברית';
    case 'english':
      return 'English'
    case 'arabic':
      return 'العربية';
    case 'french':
      return 'Français';
    case 'russian':
      return 'русский'
    default:
        return language;
  }
}

function formatWitnessAvailabilityTime(witness) {
  if(witness.can_morning && witness.can_afternoon && witness.can_evening) {
    return 'ללא מגבלה'
  }

  var str = '';
  if(witness.can_morning) { str += "בוקר"}
  if(witness.can_afternoon) { str += ", צהריים"}
  if(witness.can_afternoon) { str += ", ערב"}
  return str;
}

function formatAddress(address, city) {
  return address + ", " + city;
}

function formatWitnessType(type) {
  var locale = getLocale();
  if (locale === "en") {
    switch(type) {
      case 'suvrivor':
        return 'Survivor';
      case 'academia':
        return 'Academia'
      case 'second_generation':
        return 'Second generation';
      case 'therapist':
        return 'Therapist';
      default:
          return 'Survivor';
    }
  } else {
    switch(type) {
      case 'suvrivor':
        return 'ניצול';
      case 'academia':
        return 'אקדמיה'
      case 'second_generation':
        return 'דור שני';
      case 'therapist':
        return 'מטפל';
      default:
          return 'ניצול';
    }
  }
}

function formatConcept(concept) {
  var locale = getLocale();
  if (locale === "en") {
    switch(concept) {
      case 'religious_and_secular':
        return 'Religious and Secular';
      case 'vetrans':
        return 'Vetrans'
      case 'eastern':
        return 'Eastern conversation';
      default:
          return '';
    }
  } else {
    switch(concept) {
      case 'religious_and_secular':
        return 'חרדים וחילונים';
      case 'vetrans':
        return 'וטרנים'
      case 'eastern':
        return 'בשיח המזרחי';
      default:
          return '';
    }
  }
  
}

function formatAddressDisplay(address) {
  if(!address) {
    return '';
  }

  return address.replace(/\d/g,'').replace('דירה', '');
}

function formatCityDisplay(host) {
  var str =  host.city.name;
  if (host.country) {
    str += ", " + host.country.printable_name;
  }

  return str;
}

function getLocale() {
  return document.getElementById('locale').className;
}