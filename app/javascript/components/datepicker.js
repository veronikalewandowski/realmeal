import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css';
flatpickr(".datepicker", {
  minDate: "today"
});

export default flatpickr;
