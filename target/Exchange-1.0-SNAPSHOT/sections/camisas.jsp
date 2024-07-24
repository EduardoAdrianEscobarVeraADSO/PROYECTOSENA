<%-- 
    Document   : camisas
    Created on : 27/06/2024, 12:47:34 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Camisas</title>
        <link rel="stylesheet" href="../Css/sections-style.css">
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
              <a class="products__item" href="jeans.jsp">Jeans</a>
              <a class="products__item" href="oversizes.jsp">Oversizes</a>
              <a class="products__item" href="camisetas.jsp">Camisetas</a>
              <a class="products__item" href="polos.jsp">Polos</a>
              <a class="products__item" href="buzos.jsp">Buzos</a>
              <a class="products__item" href="chaquetas.jsp">Chaquetas</a>
              <a class="products__item" href="gorras.jsp">Gorras</a>

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

            <!-- seccion de filtros -->

            <section class="filter">
              <div class="filter__container">
                <h2>Filtros</h2>
                <div class="filter__item">
                  <label for="filtro1">Tallas</label>
                  <select id="filtro1">
                    <option value="opcion1">S</option>
                    <option value="opcion2">M</option>
                    <option value="opcion3">L</option>
                    <option value="opcion3">XL</option>
                    <option value="opcion3">XXL</option>
                  </select>
                </div>
              </div>
            </section>

            <!-- seccion de ropa -->

            <section class="products__container">
                <div class="products">
                    <div class="products item__container">
                      <img src="../img/buzos.webp" alt="camiseta 1">
                      <h3 class="products__title">camiseta 1</h3>
                      <p class="products__price">$20.00</p>
                    </div>
                    <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                      <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                      <a href="../products/camiseta1.jsp">
                        <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                      </a>
                      <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                      <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                      <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                      <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                      <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                      <div class="products item__container">
                        <img src="../img/buzos.webp" alt="camiseta 1">
                        <h3 class="products__title">camiseta 1</h3>
                        <p class="products__price">$20.00</p>
                      </div>
                  </div>       
            </section>
          </main>
    <script src="../JS/sections-main.js"></script>
    </body>
</html>
