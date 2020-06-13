import flatpickr from "flatpickr";
import "flatpickr/dist/themes/dark.css";



const initFlatpickr = () => {
    flatpickr(".flat-pickr",{
        dateFormat: "Y-m-d",
        defaultDate: "today",
        disableMobile: true
    });
}

export { initFlatpickr };