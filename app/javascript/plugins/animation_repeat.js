
const animateRepeat = () => {
    const element = document.querySelector('.animate__animated');

element.addEventListener('animationend', () => {
    element.classList.add('animate__animated', 'animate__wobble');
    
  });
};

export { animateRepeat };
