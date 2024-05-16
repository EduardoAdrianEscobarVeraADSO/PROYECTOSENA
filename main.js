
// Función para abrir/cerrar el menú
function toggleMenu() {
    let menu = document.getElementById("myNav");
    if (menu.style.width === '250px') {
      menu.style.width = '0';
    } else {
      menu.style.width = '250px';
    }
}
  

  
// Función para ejecutar animacion scroll header superior

  window.addEventListener('scroll', function() {
    let header = document.querySelector('.header');
    let menuIcon = document.querySelector('.header__menu-icon');
    let logoImage = document.getElementById('logoImage');
    let headerItems = document.getElementById('header__items').children; // Selecciona todos los ítems dentro del div con ID 'header__items'
  
    if (window.scrollY > 10) {
      header.style.backgroundColor = 'white';
      menuIcon.style.color = 'black';
      logoImage.src = 'img/logo.png'; 
      Array.from(headerItems).forEach(item => item.style.color = 'black'); // Cambia el color de todos los ítems a negro
    } else {
      header.style.backgroundColor = 'transparent';
      menuIcon.style.color = 'white';
      logoImage.src = 'img/logoh2.png'; 
      Array.from(headerItems).forEach(item => item.style.color = 'white'); 
    }
  });
