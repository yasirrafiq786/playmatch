import Swiper from 'swiper';
import 'swiper/css/swiper.css';

const initSwiper = () => { 
    var mySwiper = new Swiper('.swiper-container', {
        pagination: {
            el: '.swiper-pagination',
            type: 'bullets',
          },
    });
};

export { initSwiper };