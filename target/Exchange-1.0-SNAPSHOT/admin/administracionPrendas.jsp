<%-- 
    Document   : administracionPrendas
    Created on : 29/07/2024, 1:11:20 p. m.
    Author     : Propietario
--%>

<%@page import="java.util.List"%>
<%@page import="model.prendasModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Administración de Prendas</title>
        <!-- Estilos CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/panel-admin.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
              integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
              crossorigin="anonymous" referrerpolicy="no-referrer"/>
    </head>
    <body>
    

    <div class="main-container">
        <h1 class="main-container__title">Gestión de Prendas</h1>

        <table class="category-table">
            <thead class="category-table__head">
            <tr class="category-table__row">
                <th class="category-table__header">ID Prenda</th>
                <th class="category-table__header">Nombre</th>
                <th class="category-table__header">Categoría</th>
                <th class="category-table__header">Precio</th>
                <th class="category-table__header">Stock</th>
                <th class="category-table__header">Acciones</th>
            </tr>
            </thead>
            <tbody id="category-list" class="category-table__body">
            <%
                List<model.prendasModel> prendas = (List<model.prendasModel>) request.getAttribute("prendas");
                if (prendas != null) {
                    for (model.prendasModel prenda : prendas) {
                        out.print("<tr class='category-table__row'>"
                                + "<td class='category-table__cell'>" + prenda.getID_prenda() + "</td>"
                                + "<td class='category-table__cell'>" + prenda.getNombre_prenda() + "</td>"
                                + "<td class='category-table__cell'>" + prenda.getID_categoria() + "</td>"
                                + "<td class='category-table__cell'>" + prenda.getPrecio() + "</td>"
                                + "<td class='category-table__cell'>" + prenda.getStock_prenda() + "</td>"
                                + "<td class='category-table__cell'>"
                                + "<form action='eliminarPrenda' method='post'>"
                                + "<input type='hidden' name=deleteId value='" + prenda.getID_prenda() + "'>"
                                + "<a class='button button--edit' href='/Exchange/agregarPrendas?id=" + prenda.getID_prenda() + "&nombre=" + prenda.getNombre_prenda() + "&categoria=" + prenda.getID_categoria() + "&precio=" + prenda.getPrecio() + "&stock=" + prenda.getStock_prenda() + "&descripcion=" + prenda.getDescripcion_prenda() + "&imagen=" + prenda.getImagen() + "&action=accioneditar' type=button>Editar</a>"
                                + "<button class='button button--delete'>Eliminar</button>"
                                + "</form>"
                                + "</td>"
                                + "</tr>");
                    }
                }
            %>
            </tbody>
        </table>

        <form class="link-container" action="${pageContext.request.contextPath}/listarPrendas" method="get">
            <button class="link-container__link">Listar Prendas</button>
            <a class="link-container__link" href="${pageContext.request.contextPath}/admin/agregarPrendas.jsp">Agregar prendas</a>
        </form>
    </div>

    <script src="${pageContext.request.contextPath}/JS/panel_admin.js"></script>
    
    </body>
</html>
