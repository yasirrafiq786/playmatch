import * as $ from 'jquery';
import 'owl.carousel.es6'


const initOwlCarousel = () => {
    $('.owl-carousel').owlCarousel({
        items:1,
        
    });
};

export { initOwlCarousel };