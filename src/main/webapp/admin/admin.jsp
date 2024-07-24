<%-- 
    Document   : administracion
    Created on : 27/06/2024, 1:11:20 p. m.
    Author     : Propietario
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Administracion</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/panel-admin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
              integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
              crossorigin="anonymous" referrerpolicy="no-referrer"/>
    </head>
    <body>
        <header class="header">
            <!-- Icono para abrir el menú -->
            <div class="header__menu-icon">
                <i class="fas fa-bars"></i>
            </div>

            <!-- Logo -->
            <div class="header__logo">
                <a href="../index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo" id="logoImage"></a>
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
                <a class="products__item" href="${pageContext.request.contextPath}/listarAdmin">Administracion</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/jeans.jsp">Jeans</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/oversizes.jsp">Oversizes</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/camisetas.jsp">Camisetas</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/camisas.jsp">Camisas</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/polos.jsp">Polos</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/shorts.jsp">Shorts</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/buzos.jsp">Buzos</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/sudaderas.jsp">Sudaderas</a>
                <a class="products__item" href="${pageContext.request.contextPath}/sections/gorras.jsp">Gorras</a>

                <!-- Redes sociales -->
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

        <div class="main-content">
            <h1>Bienvenido Administrador</h1>
            <p>Sus funcionalidades son:</p>
            <ul>
                <li>Agregar categorias</li>
                <li>Editar categorias</li>
                <li>Agregar prendas</li>
                <li>Editar prendas</li>
                <li>Eliminar categorias</li>
                <li>Eliminar prendas</li>
            </ul>
        </div>

        <script src="${pageContext.request.contextPath}/JS/panel_admin.js"></script>
    </body>
</html>
