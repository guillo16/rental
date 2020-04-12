import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// First we define two variables that are going to grab our inputs field. You can check the ids of the inputs with the Chrome inspector.
const startDateInput = document.getElementById('range_start');
const endDateInput = document.getElementById('range_end');

// Check that the query selector id matches the one you put around your form.
if (startDateInput) {
  const unavailableDates = JSON.parse(document.querySelector('#product-booking-dates').dataset.unavailable)

  flatpickr(startDateInput, {
    altInput: true,
    minDate: "today",
    disable: unavailableDates,
    plugins: [new rangePlugin({ input: endDateInput})]
  });
};
