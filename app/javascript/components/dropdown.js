import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2(); // (~ document.querySelectorAll)
  $(".select2").select2({
    theme: "classic"
  });
};

export { initSelect2 };
