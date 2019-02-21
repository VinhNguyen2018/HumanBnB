import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  enableTime: true
})
// import "flatpickr/dist/l10n/fr.js"// Note this is important!

flatpickr(".flatpickr", {
  dateFormat: "d.m.Y",
  mode: "single",
  maxDate: "today",
  locale: {
    firstDayOfWeek: 1,
    weekdays: {
      shorthand: ["dim", "lun", "mar", "mer", "jeu", "ven", "sam"],
      longhand: ["dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"],
    },
    months: {
      shorthand: ["janv","févr", "mars", "avr", "mai", "juin", "juil", "août", "sept", "oct", "nov", "déc",],
      longhand: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
    },
  },
})


flatpickr(".flatpickrform", {
  dateFormat: "d.m.Y",
  mode: "single",
  defaultDate: "today",
  locale: {
    firstDayOfWeek: 1,
    weekdays: {
      shorthand: ["dim", "lun", "mar", "mer", "jeu", "ven", "sam"],
      longhand: ["dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"],
    },
    months: {
      shorthand: ["janv","févr", "mars", "avr", "mai", "juin", "juil", "août", "sept", "oct", "nov", "déc",],
      longhand: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
    },
  },
})
