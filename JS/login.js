const btnSignIn = document.getElementById("sign-in"),
      btnSignUp = document.getElementById("sign-up"),
      containerFormRegister = document.querySelector(".register"),
      containerFormLogin = document.querySelector(".login");

btnSignIn.addEventListener("click", e => {
    containerFormRegister.classList.add("hide");
    containerFormLogin.classList.remove("hide")
})


btnSignUp.addEventListener("click", e => {
    containerFormLogin.classList.add("hide");
    containerFormRegister.classList.remove("hide")
})


const nombre = document.getElementById("userName");
const correoInput = document.querySelector("#userEmail");



const cantidad = (elemento) => {
    // Asignar un ID unico al span de error basado en el nombre del elemento
    const spanId = `spanError${elemento.id}`;
    const errorMessage = "Debe contener entre 3 a 40 caracteres";

    // Buscar si ya existe un span de error específico para este elemento
    let span = document.querySelector(`#${spanId}`);
    if (!span) {
        span = document.createElement("span");
        span.setAttribute("id", spanId);
        span.setAttribute("class", "ErrorSpan");
        span.textContent = errorMessage;
    }

    const padre = elemento.parentElement;

    if (elemento.value.length <= 40 && elemento.value.length >= 3) {
        elemento.classList.remove("incorrecto");
        elemento.classList.add("correcto");
        if (span.parentNode === padre) {
            padre.removeChild(span);
        }
    } else {
        elemento.classList.remove("correcto");
        elemento.classList.add("incorrecto");
        if (span.parentNode !== padre) {
            padre.appendChild(span);
        }
    }
};

// Función para validar el correo electrónico
const validarCorreo = (elemento) => {
    
    const spanId = `spanError${elemento.id}`;
    const errorMessage = "Correo inválido. Debe ser un correo electrónico válido.";

    // Expresion regular 
    const regexCorreo = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

  
    let span = document.querySelector(`#${spanId}`);
    if (!span) {
        span = document.createElement("span");
        span.setAttribute("id", spanId);
        span.setAttribute("class", "ErrorSpan");
        span.textContent = errorMessage;
    }

    const padre = elemento.parentElement;

    // Validar el correo electrónico
    if (regexCorreo.test(elemento.value)) {
        elemento.classList.remove("incorrecto");
        elemento.classList.add("correcto");
        if (span.parentNode === padre) {
            padre.removeChild(span);
        }
    } else {
        elemento.classList.remove("correcto");
        elemento.classList.add("incorrecto");
        if (span.parentNode !== padre) {
            padre.appendChild(span);
        }
    }
};


const SoloLetras = function(event) {
    const regexLetras = /^[a-zA-Z\ ]{0,}$/;
        
    if (!(regexLetras.test(event.key))) {
        event.preventDefault();
    }
}

nombre.addEventListener("keypress",(event)=> SoloLetras(event))
nombre.addEventListener("input",(event)=> cantidad(nombre))
apellido.addEventListener("keypress",(event)=> SoloLetras(event))
apellido.addEventListener("input", (event)=> cantidad(apellido))
Ndoc.addEventListener("keypress",(event) => SoloNumeros(event))
celular.addEventListener("keypress", (event) => SoloNumeros (event))
correoInput.addEventListener("input", () => validarCorreo(correoInput));
celular.addEventListener("input", () => validarNumeros(celular))
Ndoc.addEventListener("input", () => validarNumeros(Ndoc))




