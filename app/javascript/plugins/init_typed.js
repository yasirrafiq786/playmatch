import Typed from 'typed.js';

const initTyped = () => {
    var typed = new Typed('#typed', 
    {
        strings: ['<strong>FEELING <u>BORED</u>?</strong>','<strong>STAY <u>HEALTHY</u>?</strong>','<strong>STAY <u>FIT</u>?</strong>', '<strong>HAVE <u>FUN</u>?</strong>', '<strong>DON\'T WAIT</strong>'],
        typeSpeed: 80,
        smartBackspace: true
      });
};

export { initTyped };