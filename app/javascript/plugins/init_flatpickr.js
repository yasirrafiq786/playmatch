import flatpickr from "flatpickr";

const initFlatpickr = () => {
    $(".flat-pickr").flatpickr({
        altFormat: "true",
        dateFormat: "Y-m-d",
        defaultDate: "today",
    });
}

export { initFlatpickr };