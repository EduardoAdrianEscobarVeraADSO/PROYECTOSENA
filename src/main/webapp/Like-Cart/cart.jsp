<%@page import="java.util.List"%>
<%@page import="model.carritocomprasModel"%>
<%@page import="model.prendasModel"%>
<%@page import="model.carritoDAO"%>
<%@page import="model.prendasDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras</title>
    <link rel="stylesheet" href="../Css/cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" type="image" href="${pageContext.request.contextPath}/img/logopage.jpg">
</head>
<body>
    <%@ include file="../components/header3.jsp" %>
    <h1>Carrito de Compras</h1>
    <section class="cart__container">
        <div class="cart">
            <%
            int idUsuarioCart = (int) session.getAttribute("idUsuario");

            carritoDAO carritoDAO = new carritoDAO();
            prendasDAO prendasDAO = new prendasDAO();
            List<carritocomprasModel> itemsCarrito = carritoDAO.obtenerCarritoPorUsuario(idUsuarioCart);

            if (itemsCarrito != null && !itemsCarrito.isEmpty()) {
                for (carritocomprasModel item : itemsCarrito) {
                    prendasModel prenda = prendasDAO.obtenerPrendaPorID(item.getID_prenda());
                    if (prenda != null) {
                        String imagenPath = request.getContextPath() + "/uploads/" + prenda.getImagen();
                        out.print("<div class='item__container'>"
                                + "<img src='" + imagenPath + "' alt='" + prenda.getNombre_prenda() + "' />"
                                + "<div>"
                                + "<h2 class='cart__title'>" + prenda.getNombre_prenda() + "</h2>"
                                + "<p class='cart__price'>Precio: $" + prenda.getPrecio() + "</p>"
                                + "<p class='cart__cantidad'>Cantidad: " + item.getCantidad() + "</p>"
                                + "<p class='cart__total'>Total: $" + (prenda.getPrecio() * item.getCantidad()) + "</p>"
                                + "<form action='/Exchange/CarritoServlet' method='post'>"
                                + "<input type='hidden' name='action' value='remover'>"
                                + "<input type='hidden' name='idCarrito' value='" + item.getID_carrito() + "'>"
                                + "<input type='hidden' name='idPrenda' value='" + prenda.getID_prenda() + "'>"
                                + "<button type='submit' class='remove-from-cart'>Eliminar</button>"
                                + "</form>"
                                + "</div>"
                                + "</div>");
                    }
                }
            } else {
                out.print("<p class='empty-cart-message'>Tu carrito está vacío.</p>");
            }
            %>
        </div>
    </section>
    <script src="${pageContext.request.contextPath}/JS/sections-main.js"></script>
</body>
</html>
