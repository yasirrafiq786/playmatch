import flatpickr from "flatpickr";

const initFlatpickr = () => {
    $("#booking-date").flatpickr({
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d",
        defaultDate: "today"
    });
}

export { initFlatpickr };