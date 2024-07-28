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
      <%@ include file="../components/header2.jsp" %>
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

