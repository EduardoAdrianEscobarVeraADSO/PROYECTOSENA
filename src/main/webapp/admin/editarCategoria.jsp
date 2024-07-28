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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/editarcategoria.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <%@ include file="../components/header2.jsp" %>
    <div class="form-container">
        <h1>Editar Categoría</h1>
        <form id="edit-category-form" class="form" action="/Exchange/agregarCategorias/agregar" method="post">
            <input type="hidden" id="edit-category-id" name="edit-category-id" class="form__input" required>

            <label for="edit-category-name" class="form__label">Nombre de Categoría:</label>
            <input type="text" id="edit-category-name" name="category-name" class="form__input" required>

            <button type="submit" class="form__button">Guardar Cambios</button>
        </form>
    </div>


    <script src="${pageContext.request.contextPath}/JS/panel_admin.js"></script>
</body>
</html>

