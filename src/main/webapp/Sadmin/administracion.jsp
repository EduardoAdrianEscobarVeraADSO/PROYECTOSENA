<%-- 
    Document   : administracion
    Created on : 27/06/2024, 1:11:20 p. m.
    Author     : Propietario
--%>

<%@page import="java.util.List"%>
<%@page import="model.usuarioadminModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Administración de Usuarios</title>
        <!-- Estilos CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/panel-admin.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
              integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
              crossorigin="anonymous" referrerpolicy="no-referrer"/>
    </head>
    <body>
    <%@ include file="../components/header2.jsp" %>

    <div class="main-container">
        <h1 class="main-container__title">Gestión de Usuarios</h1>

        <table class="category-table">
            <thead class="category-table__head">
            <tr class="category-table__row">
                <th class="category-table__header">ID Usuario</th>
                <th class="category-table__header">Nombre</th>
                <th class="category-table__header">Correo</th>
                <th class="category-table__header">Rol</th>
                <th class="category-table__header">Acciones</th>
            </tr>
            </thead>
            <tbody id="category-list" class="category-table__body">
            <%
                List<model.usuarioadminModel> usuarios = (List<model.usuarioadminModel>) request.getAttribute("usuarios");
                if (usuarios != null) {
                    for (model.usuarioadminModel usuario : usuarios) {
                        out.print("<tr class='category-table__row'>"
                                + "<td class='category-table__cell'>" + usuario.getId() + "</td>"
                                + "<td class='category-table__cell'>" + usuario.getNombre() + "</td>"
                                + "<td class='category-table__cell'>" + usuario.getCorreo() + "</td>"
                                + "<td class='category-table__cell'>" + usuario.getNombre_rol()+ "</td>"
                                + "<td class='category-table__cell'>"
                                + "<form action='eliminarUsuario' method='post'>"
                                + "<input type='hidden' name=deleteId value='" + usuario.getId() + "'>"
                                + "<a class='button button--edit' href='/Exchange/agregarUsuarios?id="+usuario.getId()+"&nombre="+usuario.getNombre()+"&correo="+usuario.getCorreo()+"&rol="+usuario.getId_rol_fk()+"&contrasena="+usuario.getContraseña()+"&action=accioneditar' type=button>Editar</a>" 
                                + "<button class='button button--delete' >Eliminar</button>"
                                + "</form>"
                                + "</td>"
                                + "</tr>");
                    }
                }
            %>
            </tbody>
        </table>

        <form class="link-container" action="${pageContext.request.contextPath}/listarUsuarioAdmin" method="get">
            <button class="link-container__link">Listar Usuarios</button>
            <a class="link-container__link" href="${pageContext.request.contextPath}/Sadmin/agregarUsuario.jsp">Agregar usuarios</a>
        </form>
    </div>

    <script src="${pageContext.request.contextPath}/JS/panel_admin.js"></script>
    
    </body>
</html>
