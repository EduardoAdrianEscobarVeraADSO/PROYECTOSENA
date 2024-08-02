<%@page import="java.util.List"%>
<%@page import="model.prendasModel"%>
<%@page import="model.UsuarioModel"%>
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
        <%
            UsuarioModel usuariomodel2 = (UsuarioModel) session.getAttribute("login");
            int idUsuarioCart = (usuariomodel2 != null) ? usuariomodel2.getId() : -1;
        %>
        <h1>Prendas por Categoría</h1>
        <section class="products__container">
            <div class="products">
                <%
                List<prendasModel> prendas = (List<prendasModel>) request.getAttribute("prendas");
                if (prendas != null) {
                    for (prendasModel prenda : prendas) {
                        String imagenPath = request.getContextPath() + "/uploads/" + prenda.getImagen();
                        boolean stockDisponible = prenda.getStock_prenda() > 0;
                        String botonTexto = stockDisponible ? "Añadir al carrito" : "Agotada";
                        String botonClase = stockDisponible ? "add-to-cart" : "add-to-cart disabled";
                %>
                        <div class='products item__container'>
                            <img src='<%= imagenPath %>' alt='<%= prenda.getNombre_prenda() %>' />
                            <h2 class='products__title'><%= prenda.getNombre_prenda() %></h2>
                            <p class='products__price'>Precio: $<%= prenda.getPrecio() %></p>
                            <div class='product__details'>
                                <p class='product__description'><%= prenda.getDescripcion_prenda() %></p>
                                <p class='product__talla'>Talla: <%= prenda.getTalla() %></p>
                                <%
                                if (stockDisponible) {
                                %>
                                    <form action="CarritoServlet" method="post">
                                        <input type="hidden" name="action" value="agregar">
                                        <input type="hidden" name="idUsuario" value="<%= idUsuarioCart %>">
                                        <input type="hidden" name="idPrenda" value="<%= prenda.getID_prenda() %>">
                                        <input type="number" id="cantidad" name="cantidad" min="1" max="<%= prenda.getStock_prenda() %>" value="1">
                                        <button type="submit" class="<%= botonClase %>"><%= botonTexto %></button>
                                    </form>

                                <%
                                } else {
                                %>
                                    <button class="<%= botonClase %>"><%= botonTexto %></button>
                                <%
                                }
                                %>
                            </div>
                        </div>
                <%
                    }
                }
                %>
            </div>
        </section>
        <script src="${pageContext.request.contextPath}/JS/sections-main.js"></script>
    </body>
</html>
