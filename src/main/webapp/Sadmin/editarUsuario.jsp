<%-- 
    Document   : añadirCategoria
    Created on : 3/07/2024, 9:42:31 a. m.
    Author     : eduar
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.usuarioadminModel"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Editar Usuario</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/editarcategoria.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
            integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <% 
        String idUsuario = (String) request.getAttribute("idUsuario");
        String nombre = (String) request.getAttribute("nombre");
        String correo = (String) request.getAttribute("correo");
        String contrasena = (String) request.getAttribute("contrasena");
        String idRol = (String) request.getAttribute("idRol");
    %>
    
    <body>
        <%@ include file="../components/header2.jsp" %>
        
            
       <div class="form-container">
           <h1>Editar Usuarios</h1>
            <form class="form" action="${pageContext.request.contextPath}/agregarUsuarios" method="post">
                <input type="hidden" name="action" value="editar">
                <input type="hidden" id="edit-category-id" name="id" value="<% if(idUsuario != null){out.print(idUsuario);}%>">
                <label class='form__label' for='user-name'>Nombre:</label>
                <input class='form__input' type='text' name='user-name' id='user-name' value='<% if(nombre != null){out.print(nombre);} %>'>
                <label class='form__label' for='user-email'>Correo:</label>
                <input class='form__input' type=text name='user-email' id='user-email' value='<% if(correo != null){out.print(correo);}%>'>
                <label class='form__label' for='user-password'>Contraseña:</label>
                <input class='form__input' type='Text' name='user-password' id='user-password' value='<% if(contrasena != null){out.print(contrasena);} %>'>
                <label class='form__label' for='rol-user'>ID Rol:</label>
                <input class='form__input' type='number' name='rol-user' id='rol-user' value='<% if(idRol != null){out.print(idRol);}%>'> 
                <input class='form__button' type='submit' value='Actualizar'>             
            </form>
        </div>
        
                
        <script src="${pageContext.request.contextPath}/JS/panel_admin_editar.js"></script>
        
    </body>

</html>


