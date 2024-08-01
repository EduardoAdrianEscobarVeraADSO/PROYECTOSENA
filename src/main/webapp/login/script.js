 /* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const btnSignIn = document.getElementById("sign-in"),
      btnSignUp = document.getElementById("sign-up"),
      containerFormRegister = document.querySelector(".register"),
      containerFormLogin = document.querySelector(".login");

btnSignIn.addEventListener("click", e => {
    containerFormRegister.classList.add("hide");
    containerFormLogin.classList.remove("hide");
});


btnSignUp.addEventListener("click", e => {
    containerFormLogin.classList.add("hide");
    containerFormRegister.classList.remove("hide");
});
document.addEventListener('DOMContentLoaded', (event) => {
    const nombreUsuarioInput = document.querySelector('input[name="userName"]');
    const correoElectronicoInput = document.querySelector('input[name="userEmail"]');
    
    if (nombreUsuarioInput) {
        nombreUsuarioInput.addEventListener('keypress', soloLetras);
    }
});

function soloLetras(event) {
    if (!event.key.match(/[A-Za-z\s]/) && !esTeclaPermitida(event)) {
        event.preventDefault();
    }
}

function esTeclaPermitida(event) {
    return [
        'Backspace', 'Delete', 'ArrowLeft', 'ArrowRight', 
        'ArrowUp', 'ArrowDown', 'Home', 'End'
    ].includes(event.key);
}

//validaciones formulario de envio
document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('.form-register');
    const userName = form.querySelector('input[name="userName"]');
    const userEmail = form.querySelector('input[name="userEmail"]');
    const userPassword = form.querySelector('input[name="userPassword"]');

    // Regex para validar el correo electrónico
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    // Funcion para mostrar mensajes de error
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

    // Funcion para mostrar mensajes de éxito
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

    // Validar el correo electronico
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

    // Agregar eventos de entrada para validar en tiempo real
    userName.addEventListener('input', validateUserName);
    userEmail.addEventListener('input', validateEmail);
    userPassword.addEventListener('input', validatePassword);

    // Validar todos los campos antes de enviar el formulario
    form.addEventListener('submit', (event) => {
        validateUserName();
        validateEmail();
        validatePassword();

        if (form.querySelectorAll('.error').length > 0) {
            event.preventDefault(); // Evitar el envío del formulario si hay errores
        }
    });
});
