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
      <title>Administracion</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/panel-admin.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
      <%@ include file="../components/header2.jsp" %>
       <div class="main-container">
        <h1 class="main-container__title">Gestión de Categorías</h1>

         <form id="add-category-form" class="form" action="/Exchange/agregarCategorias/agregar" method="post">
            <h2 class="form__title">Añadir Nueva Categoría</h2>
            <label for="category-name" class="form__label">Nombre de Categoría:</label>
            <input type="text" id="category-name" class="form__input" required name="category-name">
            <button type="submit" class="form__button">Añadir</button>
        </form>
        
        <a class="form__button" href="administracion.jsp">Regresar</a>
         <script src="${pageContext.request.contextPath}/JS/panel_admin_agregarCategorias.js"></script>
</html>
