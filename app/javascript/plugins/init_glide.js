import Glide from '@glidejs/glide'

const initGlide = () => {
    new Glide('.glide', {
        type: 'carousel',
        startAt: 0,
        perView: 1
    }).mount()
};

export { initGlide };
