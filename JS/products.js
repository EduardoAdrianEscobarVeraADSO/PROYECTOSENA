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


        document.querySelectorAll('.image').forEach(function(image){
            image.onclick = function(){
                const bigImage = document.querySelector('.image1');
                bigImage.src = event.target.src;

                document.querySelectorAll(".image--select").forEach(function(select){
                    select.classList.remove("image--select")
                })

                image.classList.add("image--select");
            }
        })
    

    
        let mas = document.getElementById("masunid")
        let contador = document.getElementById("unidades")
        let menos = document.getElementById("menosunid")

        mas.addEventListener("click", function() {
            let unidades = parseInt(contador.innerText);
            contador.innerText = unidades + 1;
        });

        menos.addEventListener("click", function() {
            let unidades = parseInt(contador.innerText);
            if (unidades > 0) {
                contador.innerText = unidades - 1;
            }
        });
    

    
        const image1 = document.querySelector('.image1');
        const imagenes = document.querySelectorAll('.image');
        const modal = document.getElementById('miModal');
        const modalImage = document.getElementById('imagenEnModal');
        const cerrarModal = document.getElementById('cerrarModal');
        const anterior = document.getElementById('anterior');
        const siguiente = document.getElementById('siguiente');

        let indiceActual = 0;

        // Funcion para mostrar una imagen especifica en el modal
        function mostrarImagen(src) {
            modal.style.display = 'block';
            modalImage.src = src;
            // Buscar el indice de la imagen actual en el array de imágenes
            indiceActual = Array.from(imagenes).findIndex(img => img.src === src);
        }

        // Mostrar el modal al hacer clic en image1
        image1.addEventListener('click', () => mostrarImagen(image1.src));

        // Cerrar el modal
        cerrarModal.addEventListener('click', function() {
            modal.style.display = 'none';
        });

        // Cerrar el modal si se hace clic fuera de la imagen
        window.addEventListener('click', function(event) {
            if (event.target === modal) {
            modal.style.display = 'none';
            }
        });

        // Navegar a la imagen anterior
        anterior.addEventListener('click', function() {
            indiceActual = (indiceActual - 1 + imagenes.length) % imagenes.length;
            modalImage.src = imagenes[indiceActual].src;
        });

        // Navegar a la imagen siguiente
        siguiente.addEventListener('click', function() {
            indiceActual = (indiceActual + 1) % imagenes.length;
            modalImage.src = imagenes[indiceActual].src;
        });
    


