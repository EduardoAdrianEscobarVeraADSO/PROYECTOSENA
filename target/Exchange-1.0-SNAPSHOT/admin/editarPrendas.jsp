<%-- 
    Document   : editarPrenda
    Created on : 29/07/2024
    Author     : eduar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.prendasModel"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Editar Prenda</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/editarcategoria.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
            integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <% 
        String idPrenda = (String) request.getAttribute("idPrenda");
        String idCategoria = (String) request.getAttribute("idCategoria");
        String nombrePrenda = (String) request.getAttribute("nombrePrenda");
        String descripcionPrenda = (String) request.getAttribute("descripcionPrenda");
        String precioPrenda = (String) request.getAttribute("precioPrenda");
        String stockPrenda = (String) request.getAttribute("stockPrenda");
    %>
    
    <body>
        
        <%@ include file="../components/header2.jsp" %>
        <div class="form-container">
            <h1>Editar Prenda</h1>
           <form class="form" action="${pageContext.request.contextPath}/agregarPrendas" method="post" enctype="multipart/form-data">
                <input type="hidden" name="action" value="editar">
                <input type="hidden" id="edit-prenda-id" name="idPrenda" value="<% if(idPrenda != null){out.print(idPrenda);} %>">

                <label class='form__label' for='nombre_categoria'>ID de Categoría:</label>
                <input class='form__input' type='number' name='idCategoria' id='nombre_categoria' value='<% if(idCategoria != null){out.print(idCategoria);} %>' required>

                <label class='form__label' for='nombrePrenda'>Nombre:</label>
                <input class='form__input' type='text' name='nombrePrenda' id='nombrePrenda' value='<% if(nombrePrenda != null){out.print(nombrePrenda);} %>' required>

                <label class='form__label' for='descripcionPrenda'>Descripción:</label>
                <input class='form__input' type='text' name='descripcionPrenda' id='descripcionPrenda' value='<% if(descripcionPrenda != null){out.print(descripcionPrenda);} %>' required>

                <label class='form__label' for='precioPrenda'>Precio:</label>
                <input class='form__input' type='text' name='precioPrenda' id='precioPrenda' value='<% if(precioPrenda != null){out.print(precioPrenda);} %>' required>

                <label class='form__label' for='stockPrenda'>Stock:</label>
                <input class='form__input' type='text' name='stockPrenda' id='stockPrenda' value='<% if(stockPrenda != null){out.print(stockPrenda);} %>' required>

                <label class='form__label' for='URLimagen'>Inserte las imágenes:</label>
                <input class='form__input' type='file' accept='image/*' name='URLimagen' id='URLimagen' required>

                <input class='form__button' type='submit' value='Actualizar'>
            </form>

        </div>
        
        <script src="${pageContext.request.contextPath}/JS/panel_admin_editar.js"></script>
    </body>
</html>
