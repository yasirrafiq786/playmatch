import flatpickr from "flatpickr";
import "flatpickr/dist/themes/dark.css";

const initFlatpickr = () => {
    $(".flat-pickr").flatpickr({
        altFormat: "true",
        dateFormat: "Y-m-d",
        defaultDate: "today",
    });
}

export { initFlatpickr };