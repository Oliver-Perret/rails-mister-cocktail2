

function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100) {
        navbar.classList.add('navbar_brown');
      } else {
        navbar.classList.remove('navbar_brown');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
