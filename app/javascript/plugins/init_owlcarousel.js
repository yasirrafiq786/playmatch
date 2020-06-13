import * as $ from 'jquery';
import 'owl.carousel.es6'
import "owl.carousel.es6/dist/assets/owl.carousel.css";

const initOwlCarousel = () => {
    $('.owl-carousel').owlCarousel({
        items:1,
        
    });
};

export { initOwlCarousel };