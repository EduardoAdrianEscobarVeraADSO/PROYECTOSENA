
// Función para abrir/cerrar el menú
function toggleMenu() {
    let menu = document.getElementById("myNav");
    if (menu.style.width === '250px') {
      menu.style.width = '0';
    } else {
      menu.style.width = '250px';
    }
}
  
function toggleMenuSearch() {
  var menu = document.getElementById("searchNav");
    if (menu.style.width === '100vw') {
      menu.style.width = '0';
    } else {
      menu.style.width = '100vw';
  }
  if (menu.style.height === '50vh') {
        menu.style.height = '0';
    } else {
        menu.style.height = '50vh';
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

  // Función para abrir/cerrar la búsqueda emergente
function toggleSearch(show) {
  var searchPopup = document.getElementById("searchPopup");
  if (show) {
    searchPopup.classList.add('active');
  } else {
    searchPopup.classList.remove('active');
  }
}

// Función para ejecutar la búsqueda
function performSearch() {
  var query = document.querySelector('.search-input').value;
  console.log('Buscar:', query);
  // Aquí manejas la lógica de búsqueda o redirección.
}

// Modificar el evento click del ícono de búsqueda para abrir la búsqueda emergente
document.querySelector('.fa-search').addEventListener('click', function() {
  toggleSearch(true);
});
