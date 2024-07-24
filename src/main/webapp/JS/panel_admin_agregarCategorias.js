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
  
//funcion para obtener el id y en base a este editar
const url = new URL(window.location.href);

// Obtener el parámetro 'id'
const id = url.searchParams.get('id');

const inputId = document.getElementById('edit-category-id');
const IdUser = document.getElementById('edit-category-id');

if (id !== null) {
    inputId.value = id;
}
console.log(inputId);


document.addEventListener('DOMContentLoaded', () => {
    const categoryForm = document.querySelector('#add-category-form');
    const categoryName = categoryForm.querySelector('input[name="category-name"]');

    // Función para mostrar mensajes de error
    function showError(input, message) {
        const parent = input.parentElement;
        let error = parent.querySelector('small');
        if (!error) {
            error = document.createElement('small');
            parent.appendChild(error);
        }
        error.textContent = message;
        error.style.color = 'red';
        input.classList.add('error');
        input.classList.remove('success');
    }

    // Función para mostrar mensajes de éxito
    function showSuccess(input) {
        const parent = input.parentElement;
        let error = parent.querySelector('small');
        if (error) {
            error.textContent = '';
        }
        input.classList.add('success');
        input.classList.remove('error');
    }

    // Validar el nombre de la categoría
    function validateCategoryName() {
        const value = categoryName.value;
        if (!value) {
            showError(categoryName, 'El nombre de la categoría no puede estar vacío.');
        } else if (/\d/.test(value)) {
            showError(categoryName, 'El nombre de la categoría no puede contener números.');
        } else if (value.length < 3 || value.length > 40) {
            showError(categoryName, 'El nombre de la categoría debe tener entre 3 y 40 caracteres.');
        } else {
            showSuccess(categoryName);
        }
    }

    // Agregar eventos de entrada para validar en tiempo real
    categoryName.addEventListener('input', validateCategoryName);

    // Validar todos los campos antes de enviar el formulario
    categoryForm.addEventListener('submit', (event) => {
        validateCategoryName();

        if (categoryForm.querySelectorAll('.error').length > 0) {
            event.preventDefault(); // Evitar el envío del formulario si hay errores
        }
    });
});