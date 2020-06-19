import flatpickr from "flatpickr";




const initFlatpickr = () => {
    flatpickr(".flat-pickr",{
        dateFormat: "Y-m-d",
        defaultDate: "today",
        disableMobile: true
    });
}

export { initFlatpickr };