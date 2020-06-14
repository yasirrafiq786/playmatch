import Swiper from 'swiper';
import 'swiper/css/swiper.css';

const initSwiper = () => { 
    var mySwiper = new Swiper('.swiper-container', {
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            type: 'bullets',
          },
        effect: 'coverflow',
        coverflowEffect: {
            rotate: 30,
            slideShadows: false,
          }
    });
};

export { initSwiper };