<%-- 
    Document   : agregarCategorias
    Created on : 3/07/2024, 11:22:40 a. m.
    Author     : eduar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Agregar Usuario</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/panel-admin.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
      <header class="header">
        <div class="header__menu-icon">
          <i class="fas fa-bars"></i>
        </div>
        <div class="header__logo">
          <a href="../index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo" id="logoImage"></a>
        </div>
        <div class="header__items" id="header__items">
          <a href="../Like-Cart/likes.jsp" class="fas fa-heart"></a>
          <a href="../login/inicio_sesion.jsp" class="fas fa-user"></a>
          <a href="../Like-Cart/cart.jsp" class="fas fa-shopping-cart"></a>
        </div>
        <div id="myNav" class="header__menu">
          <i class="fas fa-times header__menu-icon--close"></i>
          <a class="products__item" href="administracion.jsp">Administracion</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/jeans.jsp">Jeans</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/oversizes.jsp">Oversizes</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/camisetas.jsp">Camisetas</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/camisas.jsp">Camisas</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/polos.jsp">Polos</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/shorts.jsp">Shorts</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/buzos.jsp">Buzos</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/sudaderas.jsp">Sudaderas</a>
          <a class="products__item" href="${pageContext.request.contextPath}/sections/gorras.jsp">Gorras</a>
          <ul class="header__menu-redes">
            <li><a href="https://www.instagram.com" class="fab fa-instagram fa-2x"></a></li>
            <li><a href="https://www.facebook.com" class="fab fa-facebook fa-2x"></a></li>
            <li><a href="https://www.whatsapp.com" class="fab fa-whatsapp fa-2x"></a></li>
            <li><a href="${pageContext.request.contextPath}/Like-Cart/likes.jsp" class="fas fa-heart fa-2x"></a></li>
            <li><a href="${pageContext.request.contextPath}/login/inicio_sesion.jsp" class="fas fa-user fa-2x"></a></li>
            <li><a href="${pageContext.request.contextPath}/Like-Cart/cart.jsp" class="fas fa-shopping-cart fa-2x"></a></li>
          </ul>
        </div>
      </header>
      <div class="main-container">
        <h1 class="main-container__title">Agregar Usuario</h1>
        <form id="add-user-form" class="form" action="${pageContext.request.contextPath}/agregarUsuarios" method="post">
          <input type="hidden" name="action" value="agregar">
            
          <label class="form__title">Nombre de Usuario</label>
          <input class="form__input" name="user-name" required>
          <label for="user-email" class="form__label">Correo:</label>
          <input type="text" id="user-email" class="form__input" name="user-email" required>
          <label for="user-password" class="form__label">Contraseña: </label>
          <input type="password" id="user-password" class="form__input" name="user-password" required>
          <label for="user-rol" class="form__label">Rol: </label>
          <input type="text" id="user-rol" class="form__input" name="rol-user" required>
          <button type="submit" class="form__button">Guardar Cambios</button>
        </form>
      </div>
      <a class="form__button" href="administracion.jsp">Regresar</a>
      <script src="${pageContext.request.contextPath}/JS/panel_admin.js"></script>
    </body>
</html>

