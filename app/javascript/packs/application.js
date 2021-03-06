// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { notificationOverlay } from '../components/notifications_overlay';
import { initAlgoliaSearch } from '../components/init_algolia_search';
import { initFlatpickr } from '../plugins/init_flatpickr';
import { initSwiper } from '../plugins/init_swiper';
import { initConversationCable } from '../channels/conversation_channel';
import { initTyped } from '../plugins/init_typed';
import { init_address_finder } from '../components/init_address_finder';




document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  notificationOverlay();
  initFlatpickr();
  initAlgoliaSearch();
  initSwiper();
  initConversationCable();
  initTyped();



});

// require("components/init_address_finder");
if (document.getElementById('user_address')) {
  init_address_finder();
}

