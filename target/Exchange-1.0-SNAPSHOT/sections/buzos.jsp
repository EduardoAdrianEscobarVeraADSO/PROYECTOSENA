<%@page import="java.util.List"%>
<%@page import="model.prendasModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Prendas</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/sections-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="icon" type="image" href="${pageContext.request.contextPath}/img/logopage.jpg">
    </head>
    <body>
        <%@ include file="../components/header3.jsp" %>

            <h1>Prendas por Categoría</h1>
            <section class="products__container">
                <div class="products">
                    <%
                    List<prendasModel> prendas = (List<prendasModel>) request.getAttribute("prendas");
                    if (prendas != null) {
                        for (prendasModel prenda : prendas) {
                            out.print("<div class='products item__container'>"
                                    + "<img src='" + prenda.getImagen() + "' alt='" + prenda.getNombre_prenda() + "' />"
                                    + "<h2 class='products__title'>" + prenda.getNombre_prenda() + "</h2>"
                                    + "<p class = 'products__price'>Precio: $" + prenda.getPrecio() + "</p>"
                                    + "</div>");
                        }
                    }
                %>
                </div> 
            </section>
    <script src="${pageContext.request.contextPath}/JS/sections-main.js"></script>            
    </body>
</html>
