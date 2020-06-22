import Typed from 'typed.js';

const initTyped = () => {
    var typed = new Typed('#typed', 
    {
        strings: ['<strong>PLAY<u>TENNIS</u></strong><br>','<strong>PLAY<u>SQUASH</u></strong>','<strong>PLAY<u>MATCH</u></strong>'],
        typeSpeed: 80,
        smartBackspace: true
      });
};

export { initTyped };