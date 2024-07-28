<%-- 
    Document   : administracion
    Created on : 27/06/2024, 1:11:20 p. m.
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
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        
       <%@ include file="../components/header2.jsp" %>
       <div class="main-container">
        <h1 class="main-container__title">Gestión de Categorías</h1>
        
        
           <table class="category-table">
            <thead class="category-table__head">
                <tr class="category-table__row">
                    <th class="category-table__header">Nombre de Categoría</th>
                    <th class="category-table__header">Acciones</th>
                </tr>
            </thead>
            <tbody id="category-list" class="category-table__body">

                <%
                    List<model.Categoriamodel> categorias = (List<model.Categoriamodel>) request.getAttribute("categorias");
                    if (categorias != null) {
                        for (model.Categoriamodel categoria : categorias) {
                            out.print("<tr class=category-table__row>"
                            + "<td class=category-table__cell>"+ categoria.getID_categoria() +"</td>"
                            + "<td class=category-table__cell>"+ categoria.getNombre_categoria() +"</td>"
                            + "<td class=category-table__cell>"
                            + "<form action=eliminar method=post>"
                            + "<input type=hidden name=deleteId id=input value="+categoria.getID_categoria() +">"
                            + "<a class='button button--edit' href='/Exchange/admin/editarCategoria.jsp?id="+categoria.getID_categoria()+"' type=button>Editar</a>" 
                            + "<button class='button button--delete'>Eliminar</button></form>"                          
                            + "</td>"
                            + "</tr>");                           
                        }
                    }
                %>
                
            </tbody>
        </table>
        
        
        <form class="link-container" action="${pageContext.request.contextPath}/listarAdmin" method="get">
            <button class="link-container__link">Listar Categorias</button>
            <a class="link-container__link" href="${pageContext.request.contextPath}/admin/agregarCategorias.jsp">Agregar categorias</a>
            <a class="link-container__link" href="${pageContext.request.contextPath}/listarCategoriasSelect">Agregar prendas</a>
        </form>
    </div>
      <script src="${pageContext.request.contextPath}/JS/panel_admin.js"></script>
    </body>
</html>
