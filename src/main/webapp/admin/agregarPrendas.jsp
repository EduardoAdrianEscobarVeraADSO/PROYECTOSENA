<%-- 
    Document   : agregarCategorias
    Created on : 3/07/2024, 11:22:40 a. m.
    Author     : eduar
--%>

<%@page import="model.Categoriamodel"%>
<%@page import="java.util.List"%>
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
       <div class="main-container">
        <h1 class="main-container__title">Gestión de Categorías</h1>

        <form id="add-category-form" class="form" action="${pageContext.request.contextPath}/agregarPrendas" method="post" enctype="multipart/form-data">
            <h2 class="form__title">Añadir Nueva Prenda</h2>
            <label for="category-name" class="form__label">nombre de Categoría:</label>
            <select class="add__input" id="category" name="nombre_categoria" required>
                    <option value="">Seleccione una categoría</option>
                    <% 
                        List<model.Categoriamodel> categorias = (List<model.Categoriamodel>) request.getAttribute("categorias");
                        if (categorias != null) {
                            for (model.Categoriamodel categoriamodel : categorias) {
                                out.println("<option value="+ categoriamodel.getID_categoria()+">" + categoriamodel.getNombre_categoria() + "</option>");
                                
                            }
                        } else {
                            out.println("<option value=''>No hay categorías disponibles</option>");
                        }
                    %>
                </select>
            <label for="category-name" class="form__label">Nombre:</label>
            <input type="text" id="category-Id" class="form__input" required name="nombrePrenda">
            <label for="category-name" class="form__label">Precio: </label>
            <input type="text" id="category-Id" class="form__input" required name="precioPrenda">
            <label for="category-name" class="form__label">URL imagen</label>
            <input type="file" accept="image/*" class="form__label" name="URLimagen">
            <button type="submit" class="form__button">Añadir</button>
        </form>
        
        <a class="form__button" href="administracion.jsp">Regresar</a>
         <script src="${pageContext.request.contextPath}/JS/panel_admin.js"></script>
</html>
