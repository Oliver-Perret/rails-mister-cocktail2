function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('navbar');
  console.log(navbar);
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar_brown');
      } else {
        navbar.classList.remove('navbar_brown');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
