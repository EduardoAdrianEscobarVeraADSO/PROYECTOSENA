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

document.addEventListener('DOMContentLoaded', () => {
    // Cargar el carrito desde el localStorage al iniciar la página
    loadCart();

    // Agregar evento para manejar clics en botones de añadir al carrito
    document.body.addEventListener('click', function(event) {
        if (event.target && event.target.classList.contains('add-to-cart')) {
            addToCart(event.target);
        }
    });

    // Función para agregar un producto al carrito
    function addToCart(button) {
        // Encontrar el contenedor del producto más cercano
        const productElement = button.closest('.products.item__container');
        if (!productElement) return; // Si no se encuentra el contenedor, salir

        // Extraer la información del producto desde el contenedor
        const id = productElement.querySelector('.product-id').textContent.trim();
        const nombre = productElement.querySelector('.products__title').textContent.trim();
        const talla = productElement.querySelector('.product__talla').textContent.replace('Talla: ', '').trim();
        const precio = parseFloat(productElement.querySelector('.products__price').textContent.replace('Precio: $', '').trim());

        // Obtener carrito actual del localStorage
        let cart = JSON.parse(localStorage.getItem('cart')) || [];

        // Verificar si el producto ya está en el carrito
        const existingProductIndex = cart.findIndex(item => item.id === id && item.talla === talla);
        if (existingProductIndex >= 0) {
            // Actualizar la cantidad del producto existente
            cart[existingProductIndex].cantidad += 1;
        } else {
            // Añadir un nuevo producto al carrito
            cart.push({
                id,
                nombre,
                talla,
                precio,
                cantidad: 1
            });
        }

        // Guardar el carrito actualizado en el localStorage
        localStorage.setItem('cart', JSON.stringify(cart));

        // Mostrar un mensaje o actualizar el estado del botón si es necesario
        alert('Producto añadido al carrito!');
    }

    // Función para cargar el carrito en la página del carrito
    function loadCart() {
        const cart = JSON.parse(localStorage.getItem('cart')) || [];
        const cartContainer = document.querySelector('.cart');

        if (cartContainer) {
            cartContainer.innerHTML = '<h2>Tu Carrito</h2>';
            let subtotal = 0;

            cart.forEach(item => {
                const total = item.precio * item.cantidad;
                subtotal += total;
                cartContainer.innerHTML += `
                    <div class="cart-item">
                        <div class="item-producto">Producto: ${item.nombre}</div>
                        <div class="item-precio">Precio: $${item.precio}</div>
                        <div class="item-cantidad">
                            Cantidad: <input type="number" value="${item.cantidad}" min="1" readonly>
                        </div>
                        <div class="item-total">Total: $${total.toFixed(2)}</div>
                        <div class="item-acciones">
                            <button class="remove-btn" data-id="${item.id}" data-talla="${item.talla}">Eliminar</button>
                        </div>
                    </div>
                `;
            });

            const envio = 5.00; // Costo de envío fijo, puede ser dinámico
            const total = subtotal + envio;

            cartContainer.innerHTML += `
                <div class="cart-summary">
                    <h3>Resumen del Pedido</h3>
                    <p>Subtotal: $${subtotal.toFixed(2)}</p>
                    <p>Envío: $${envio.toFixed(2)}</p>
                    <p>Total: $${total.toFixed(2)}</p>
                    <button class="checkout-btn">Proceder al Pago</button>
                </div>
            `;
        }
    }

    // Agregar evento para manejar clics en botones de eliminar del carrito
    document.body.addEventListener('click', function(event) {
        if (event.target && event.target.classList.contains('remove-btn')) {
            removeFromCart(event.target);
        }
    });

    // Función para eliminar un producto del carrito
    function removeFromCart(button) {
        const id = button.getAttribute('data-id');
        const talla = button.getAttribute('data-talla');

        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        cart = cart.filter(item => !(item.id === id && item.talla === talla));

        localStorage.setItem('cart', JSON.stringify(cart));
        loadCart(); // Actualiza la vista del carrito después de eliminar
    }
});
