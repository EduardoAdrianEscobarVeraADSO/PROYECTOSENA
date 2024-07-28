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
      <%@ include file="../components/header2.jsp" %>
      
       <div class="main-container">
        <h1 class="main-container__title">Gestión de Categorías</h1>

        <form id="add-category-form" class="form" action="${pageContext.request.contextPath}/agregarPrendas" method="post" enctype="multipart/form-data">
    <h2 class="form__title">Añadir Nueva Prenda</h2>
    
    <label for="nombre_categoria" class="form__label">ID de Categoría:</label>
    <input type="number" id="nombre_categoria" class="form__input" required name="nombre_categoria" placeholder="Ingrese el ID de la categoría">

    <label for="nombrePrenda" class="form__label">Nombre:</label>
    <input type="text" id="nombrePrenda" class="form__input" required name="nombrePrenda" placeholder="Ingrese el nombre de la prenda">

    <label for="descripcionPrenda" class="form__label">Descripción:</label>
    <input type="text" id="descripcionPrenda" class="form__input" required name="descripcionPrenda" placeholder="Ingrese la descripción de la prenda">

    <label for="precioPrenda" class="form__label">Precio:</label>
    <input type="text" id="precioPrenda" class="form__input" required name="precioPrenda" placeholder="Ingrese el precio de la prenda">

    <label for="stockPrenda" class="form__label">Stock:</label>
    <input type="text" id="stockPrenda" class="form__input" required name="stockPrenda" placeholder="Ingrese el stock disponible">

    <label for="URLimagen" class="form__label">URL imagen:</label>
    <input type="file" accept="image/*" class="form__input" name="URLimagen" required>

    <button type="submit" class="form__button">Añadir</button>
</form>

        
        <a class="form__button" href="administracion.jsp">Regresar</a>
         
</html>
