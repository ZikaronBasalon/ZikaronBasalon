function formatDate(date) {
	var date = new Date(date);
  var day = date.getUTCDate();
  var month= date.getUTCMonth() + 1;
  var year = date.getUTCFullYear();

  return day + '.' + month + '.' + year;
}

function formatTime(date) {
  if (!date) {
    return "";
  }
  var date = new Date(date);
  var hour = date.getUTCHours();
  var minutes = ('0'+ date.getUTCMinutes()).slice(-2)

  return hour + ':' + minutes;
}

function formatDateTime(date) {
  if(!date) { return null }
	var date = new Date(date);
  var day = date.getUTCDate();
  var month= date.getUTCMonth() + 1;
  var year = date.getUTCFullYear();
  var hour = date.getUTCHours();
  var minutes = ('0'+ date.getUTCMinutes()).slice(-2)

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

function getUrlParameter(name, url) {
  if (!url) url = location.href;
  name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
  var regexS = "[\\?&]"+name+"=([^&#]*)";
  var regex = new RegExp( regexS );
  var results = regex.exec( url );
  return results == null ? null : results[1];
}

function languageNamesDictionary() {
	return {
    'hebrew': 'עברית',
    'english': 'English',
    'arabic': 'العربية',
    'french': 'Français',
    'russian': 'русский' ,
    'spanish': 'Español'
  }
}

function formatLanguage(language) {
  if (!language) { return language };

  var dictionary = languageNamesDictionary();
  labels = _.map(_.split(language, ','), function(lang) { return dictionary[lang] || lang; });
  return _.join(labels, ',');
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
        return 'יוצאי צ. אפריקה';
      default:
          return '';
    }
  }

}

function formatAddressDisplay(address) {
  if(!address) {
    return '';
  }

  return address.replace(/\d/g,'').replace('דירה', '')
                .replace('/','').replace('\\','');
}

function formatCityDisplay(host) {
  var str = '';
  if (host.city) {
    str += host.city.name;
  }
  if (host.country) {
    str += ", " + host.country.printable_name;
  }

  return str;
}

function getLocale() {
  return document.getElementById('locale').className;
}
