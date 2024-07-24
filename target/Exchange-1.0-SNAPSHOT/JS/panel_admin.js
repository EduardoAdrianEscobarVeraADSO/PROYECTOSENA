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

// script.js

document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('#add-user-form');
    const userName = form.querySelector('input[name="user-name"]');
    const userEmail = form.querySelector('input[name="user-email"]');
    const userPassword = form.querySelector('input[name="user-password"]');
    const userRol = form.querySelector('input[name="rol-user"]');

    // Regex para validar el correo electrónico
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

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

    // Validar el nombre de usuario
    function validateUserName() {
        const value = userName.value;
        if (!value) {
            showError(userName, 'El nombre de usuario no puede estar vacío.');
        } else if (/\d/.test(value)) {
            showError(userName, 'El nombre de usuario no puede contener números.');
        } else if (value.length < 3 || value.length > 40) {
            showError(userName, 'El nombre de usuario debe tener entre 3 y 40 caracteres.');
        } else {
            showSuccess(userName);
        }
    }

    // Validar el correo electrónico
    function validateEmail() {
        const value = userEmail.value;
        if (!value) {
            showError(userEmail, 'El correo electrónico no puede estar vacío.');
        } else if (!emailRegex.test(value)) {
            showError(userEmail, 'El correo electrónico no es válido.');
        } else {
            showSuccess(userEmail);
        }
    }

    // Validar la contraseña
    function validatePassword() {
        const value = userPassword.value;
        const hasUpperCase = /[A-Z]/.test(value);
        const hasNumber = /\d/.test(value);
        if (!value) {
            showError(userPassword, 'La contraseña no puede estar vacía.');
        } else if (value.length < 8 || !hasUpperCase || !hasNumber) {
            showError(userPassword, 'La contraseña debe tener al menos 8 caracteres, una mayúscula y un número.');
        } else {
            showSuccess(userPassword);
        }
    }

    // Validar el rol de usuario
    function validateUserRol() {
        const value = userRol.value;
        if (!value) {
            showError(userRol, 'El rol no puede estar vacío.');
        } else {
            showSuccess(userRol);
        }
    }

    // Agregar eventos de entrada para validar en tiempo real
    userName.addEventListener('input', validateUserName);
    userEmail.addEventListener('input', validateEmail);
    userPassword.addEventListener('input', validatePassword);
    userRol.addEventListener('input', validateUserRol);

    // Validar todos los campos antes de enviar el formulario
    form.addEventListener('submit', (event) => {
        validateUserName();
        validateEmail();
        validatePassword();
        validateUserRol();

        if (form.querySelectorAll('.error').length > 0) {
            event.preventDefault(); // Evitar el envío del formulario si hay errores
        }
    });
});
