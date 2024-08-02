<%-- 
    Document   : index
    Created on : 27/06/2024, 12:40:23 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Exchange</title>
        <link rel="stylesheet" href="Css/styles-principal.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="icon" type="image" href="img/logopage.jpg">
    </head>

    <body>
        
        <header class="header">
        <!-- Icono para abrir el menú -->

        <div class="header__menu-icon">
          <i class="fas fa-bars"></i>
        </div>

        <!-- Logo -->

        <div class="header__logo">
          <a href="index.jsp"><img src="../img/logo.png" alt="Logo" id="logoImage"></a>
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
          <a class="products__item" href="administracion.jsp">Administracion</a>
          <a class="products__item" href="sections/jeans.jsp">Jeans</a>
          <a class="products__item" href="sections/oversizes.jsp">Oversizes</a>
          <a class="products__item" href="sections/camisetas.jsp">Camisetas</a>
          <a class="products__item" href="sections/camisas.jsp">Camisas</a>
          <a class="products__item" href="sections/polos.jsp">Polos</a>
          <a class="products__item" href="sections/shorts.jsp">Shorts</a>
          <a class="products__item" href="sections/buzos.jsp">Buzos</a>
          <a class="products__item" href="sections/sudaderas.jsp">Sudaderas</a>
          <a class="products__item" href="sections/gorras.jsp">Gorras</a>

          <!-- Redes sociales -->

          <ul class="header__menu-redes">
            <li><a href="https://www.instagram.com" class="fab fa-instagram fa-2x"></a></li>
            <li><a href="https://www.facebook.com" class="fab fa-facebook fa-2x"></a></li>
            <li><a href="https://www.whatsapp.com" class="fab fa-whatsapp fa-2x"></a></li>
            <li><a href="../Like-Cart/likes.jsp" class="fas fa-heart fa-2x"></a></li>
            <li><a href="../login/inicio_sesion.jsp" class="fas fa-user fa-2x"></a></li>
            <li><a href="../Like-Cart/cart.jsp" class="fas fa-shopping-cart fa-2x"></a></li>
          </ul>
        </div>
      </header>
        
        <!-- menu de navegacion principal -->
        
        <section>

          <div class="video-container">
            <video width="100%" height="auto" autoplay loop muted>
              <source src="img/vids/vidH.mp4" type="video/mp4">
            </video>
          </div>

        </section>

        <!-- Tendencias del mes seccion -->

        <section class="tendencias tendencias--hidden">
          <h2>Tendencias de la Semana</h2>
          <div class="tendencias__container">
            <div class="tendencias__item tendencias__item--large">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item tendencias__item--large">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
          </div>
        </section>

        <script src="JS/principal-main.js"></script>
    </body>
</html>
