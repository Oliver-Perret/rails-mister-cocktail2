import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Share your favorite recipe cocktail.", "Take inspiration from other.","Enjoy."],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
