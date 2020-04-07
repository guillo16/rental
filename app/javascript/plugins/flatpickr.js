import flatpickr from "flatpickr";
import timepickr from "flatpickr";



flatpickr(".datepicker", {
  altInput: true,
  altFormat: "F j, Y",
  "disable": [
  function(date) {
            // return true to disable// This disable only sundays
            return (date.getDay() === 0 || date.getDay() === 7);

          }
          ],
          "locale": {
        "firstDayOfWeek": 1 // start week on Monday
      }

    });


timepickr(".timepicker", {
 enableTime: true,
 noCalendar: true,
 dateFormat: "H",
 time_24hr: true,
 minTime: "09:00",
 maxTime: "20:00",
});
