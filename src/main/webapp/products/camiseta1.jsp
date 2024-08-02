<%-- 
    Document   : camiseta1
    Created on : 27/06/2024, 12:56:55 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Camisas</title>
        <link rel="stylesheet" href="../Css/styles-products.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="icon" type="image" href="../img/logopage.jpg">
    </head>
    <body>
        <header class="header">
            <!-- Icono para abrir el menú -->
            <div class="header__menu-icon">
              <i class="fas fa-bars"></i>
            </div>

            <!-- Logo -->
            <div class="header__logo">
              <a href="../index.jsp"><img src="../img/logo.png" alt="Logo" id="logoImage"></a>
            </div>

            <!-- Items de navegación -->
            <div class="header__items" id="header__items">
                <a href="../Like-Cart/likes.jsp" class="fas fa-heart"></a>
                <a href="../login/inicio_sesion.jsp" class="fas fa-user"></a>
                <a href="../Like-Cart/cart.jsp" class="fas fa-shopping-cart"></a>
              </div>

            <!-- Menú desplegable -->

          <div id="myNav" class="header__menu">

            <!-- Botón para cerrar el menú -->

              <i class="fas fa-times header__menu-icon--close"></i>
              <a class="products__item" href="../sections/jeans.jsp">Jeans</a>
              <a class="products__item" href="../sections/oversizes.jsp">Oversizes</a>
              <a class="products__item" href="../sections/camisetas.jsp">Camisetas</a>
              <a class="products__item" href="../sections/camisas.jsp">Camisas</a>
              <a class="products__item" href="../sections/polos.jsp">Polos</a>
              <a class="products__item" href="../sections/shorts.jsp">Shorts</a>
              <a class="products__item" href="../sections/sudaderas.jsp">Sudaderas</a>
              <a class="products__item" href="../sections/chaquetas.jsp">Chaquetas</a>
              <a class="products__item" href="../sections/gorras.jsp">Gorras</a>

            <!-- Redes sociales -->

              <ul class="header__menu-redes">
                <li><a href="https://www.instagram.com" class="fab fa-instagram fa-2x"></a></li>
                <li><a href="https://www.facebook.com" class="fab fa-facebook fa-2x" ></a></li>
                <li><a href="https://www.whatsapp.com" class="fab fa-whatsapp fa-2x"></a></li>
                <li><a href="../Like-Cart/likes.jsp" class="fas fa-heart fa-2x"></a></li>
                <li><a href="../login/inicio_sesion.jsp" class="fas fa-user fa-2x"></a></li>
                <li><a href="../Like-Cart/cart.jsp" class="fas fa-shopping-cart fa-2x"></a></li>
              </ul>
            </div>
          </header>

        <main>
            <div class="container">
                <section class="images">
                    <img src="../img/buzos.webp" alt="calzado" class="image1">
                    <div class="images__container">
                        <img src="../img/buzos.webp" alt="calzado" class="image image--select">
                        <img src="../img/buzos.webp" alt="calzado" class="image">
                        <img src="https://img.freepik.com/foto-gratis/lagarto-animal-naturaleza-multicolor-ia-generativa-primer-plano_188544-9072.jpg?w=1380&t=st=1717714783~exp=1717715383~hmac=55cf10e2cf159df8a58a3e6a9fcd98cf5a6a6fc284fa215563ad14cb4ebd1449" alt="calzado" class="image">
                        <img src="https://img.freepik.com/foto-gratis/leon-melena-arcoiris-ojos-azules_1340-39421.jpg?w=740&t=st=1717714772~exp=1717715372~hmac=d4fc869c5ae17f0db4f81611b41a8378b7092959056416048887034ed928390a" alt="calzado" class="image">
                        <img src="https://img.freepik.com/foto-gratis/loro-colorido-fondo-negro-fondo-negro_1340-28854.jpg?w=740&t=st=1717714757~exp=1717715357~hmac=6e7604b4e21bc7568384d64a34e41b9c32fe8aedd14a3021af048a237ff9ccb4" alt="calzado" class="image">
                    </div>
                </section>

                <!-- CONTENEDOR DEL MODAL -->
                <div id="miModal" class="modal">
                    <span id="cerrarModal" class="close">&times;</span>
                    <div id="contenedorImagen">
                      <button id="anterior" class="navegacion"><i class="bi bi-chevron-left"></i></button>
                      <img id="imagenEnModal">
                      <button id="siguiente" class="navegacion"><i class="bi bi-chevron-right"></i></button>
                    </div>
                </div>

                <section class="content">
                    <article class="description">Exchange originals</span>
                        <h2 class="description__title">CAMISETA ORIGINAL EXCHANGE EXCLUSIVE</h2>
                        <p class="description__description">Prepárate para disfrutar de tus momentos más memorables y experiencias inolvidables con esta camiseta. Al adquirirla, no solo estarás obteniendo una prenda común; estarás agregando a tu colección una pieza exclusiva y lujosa que refleja tu estilo único</p>
                        <span class="description__price">$150.000 COP</span>
                    </article>

                    <article class="compra">
                        <form action="" class="compra__form">
                            <select class="compra__talla" name="" id="">
                                <option value="" disabled selected hidden>Selecciona la Talla</option>
                                <option value="">S</option>
                                <option value="">M</option>
                                <option value="">L</option>
                                <option value="">XL</option>
                            </select>
                            <div class="compra__unidades">
                                <div class="compra__contador">
                                    <span id="menosunid" class="menosunid"><i class="bi bi-dash"></i></span>
                                    <p id="unidades" class="unidades">1</p>
                                    <span id="masunid" class="masunid"><i class="bi bi-plus"></i></span>           
                                </div>
                                <button class="compra__send"><i class="bi bi-cart-check"></i>Añadir al Carrito</button>
                            </div>
                        </form>
                    </article>
                </section>
            </div>
        </main>

        <script src="../JS/products.js"></script>
    </body>
</html>
