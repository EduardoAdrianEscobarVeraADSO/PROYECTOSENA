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
        <%@ include file="../components/header2.jsp" %>

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
