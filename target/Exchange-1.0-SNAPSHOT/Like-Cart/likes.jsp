<%-- 
    Document   : likes
    Created on : 27/06/2024, 12:58:12 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Carrito de Compras</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="../Css/likes.css">
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
          <a href="../index.jsp"><img src="../img/logo.png" alt="Logo" id="logoImage"></a>
        </div>

        <!-- Items de navegación -->
        <div class="header__items" id="header__items">
          <a href="cart.jsp" class="fas fa-shopping-cart"></a>
          <a href="../login/inicio_sesion.jsp" class="fas fa-user"></a>
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
          <a class="products__item" href="../sections/buzos.jsp">Buzos</a>
          <a class="products__item" href="../sections/sudaderas.jsp">Sudaderas</a>
          <a class="products__item" href="../sections/chaquetas.jsp">Chaquetas</a>

          <!-- Redes sociales -->

          <ul class="header__menu-redes">
            <li><a href="https://www.instagram.com" class="fab fa-instagram fa-2x"></a></li>
            <li><a href="https://www.facebook.com" class="fab fa-facebook fa-2x"></a></li>
            <li><a href="https://www.whatsapp.com" class="fab fa-whatsapp fa-2x"></a></li>
            <li><a href="../login/inicio_sesion.jsp" class="fas fa-user fa-2x"></a></li>
            <li><a href="cart.jsp" class="fas fa-shopping-cart fa-2x"></a></li>
            <li><a href="likes.jsp" class="fas fa-heart fa-2x"></a></li>
          </ul>
        </div>

      </header>
        <main>
            <section class="cart">
                <h2>Lista de deseos</h2>
                <div class="cart-item">
                    <div class="item-producto">Producto: Producto 1</div>
                    <div class="item-precio">Precio: $10.00</div>
                    <div class="item-cantidad">Cantidad: <input type="number" value="1" min="1"></div>
                    <div class="item-total">Total: $10.00</div>
                    <div class="item-acciones"><button class="add-btn">Agregar al carrito</button></div>
                </div>
                <div class="cart-item">
                  <div class="item-producto">Producto: Producto 1</div>
                  <div class="item-precio">Precio: $10.00</div>
                  <div class="item-cantidad">Cantidad: <input type="number" value="1" min="1"></div>
                  <div class="item-total">Total: $10.00</div>
                  <div class="item-acciones"><button class="add-btn">Agregar al carrito</button></div>
              </div>
            </section>
        </main>
        <footer>
            <p>&copy; 2024 Exchange Corporation</p>
        </footer>
        <script src="../JS/likes.js"></script>
    </body>
</html>
