const flatpickr = require("flatpickr");
const dateChoice = () => {
  const datePicked = document.querySelector(".flatpickr");
  let date = flatpickr(date, {});
}

export { dateChoice };
