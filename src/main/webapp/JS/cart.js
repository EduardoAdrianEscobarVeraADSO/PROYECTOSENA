/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// Función para abrir/cerrar el menú
document.addEventListener("DOMContentLoaded", function() {
  const menuIcon = document.querySelector('.header__menu-icon');
  const closeIcon = document.querySelector('.header__menu-icon--close');
  const menu = document.getElementById("myNav");

  menuIcon.addEventListener('click', toggleMenu);
  closeIcon.addEventListener('click', toggleMenu);

  function toggleMenu() {
    if (menu.style.width === '250px') {
      menu.style.width = '0';
    } else {
      menu.style.width = '250px';
    }
  }
});
  
  // Guarda los dos títulos alternativos
const title1 = '🔥🔥🔥 ¡Regresa! 🔥🔥🔥' ;
const title2 = '¡Vuelve aqui!';
const originalTitle = document.title;

// Función para alternar entre los dos títulos
function alternateTitles() {
  if (document.title === title1) {
    document.title = title2;
  } else {
    document.title = title1;
  }
}

// Variable para almacenar el temporizador
let intervalId;

// Función para manejar el cambio de visibilidad de la pestaña
function handleVisibilityChange() {
  if (document.hidden) {
    // Si la pestaña está oculta, comienza a alternar los títulos
    intervalId = setInterval(alternateTitles, 200); // Cambia cada 2 segundos (2000 milisegundos)
  } else {
    // Si la pestaña vuelve a estar visible, detén la alternancia de títulos y restaura el título original
    clearInterval(intervalId);
    document.title = originalTitle;
  }
}

// Agrega un evento para detectar cambios de visibilidad de la pestaña
document.addEventListener('visibilitychange', handleVisibilityChange);