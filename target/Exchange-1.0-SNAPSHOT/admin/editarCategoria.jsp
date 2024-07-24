<%-- 
    Document   : añadirCategoria
    Created on : 3/07/2024, 9:42:31 a. m.
    Author     : eduar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Categoría</title>
    <link rel="stylesheet" href="../Css/editarcategoria.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
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
          <a class="products__item" href="administracion.jsp">Administracion</a>
          <a class="products__item" href="../sections/jeans.jsp">Jeans</a>
          <a class="products__item" href="../sections/oversizes.jsp">Oversizes</a>
          <a class="products__item" href="../sections/camisetas.jsp">Camisetas</a>
          <a class="products__item" href="../sections/camisas.jsp">Camisas</a>
          <a class="products__item" href="../sections/polos.jsp">Polos</a>
          <a class="products__item" href="../sections/shorts.jsp">Shorts</a>
          <a class="products__item" href="../sections/buzos.jsp">Buzos</a>
          <a class="products__item" href="../sections/sudaderas.jsp">Sudaderas</a>
          <a class="products__item" href="../sections/gorras.jsp">Gorras</a>

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
    <div class="form-container">
        <h1>Editar Categoría</h1>
        <form id="edit-category-form" class="form" action="/Exchange/agregarCategorias/agregar" method="post">
            <input type="hidden" id="edit-category-id" name="edit-category-id" class="form__input" required>

            <label for="edit-category-name" class="form__label">Nombre de Categoría:</label>
            <input type="text" id="edit-category-name" name="category-name" class="form__input" required>

            <button type="submit" class="form__button">Guardar Cambios</button>
        </form>
    </div>


    <script src="../JS/panel_admin.js"></script>
</body>
</html>

