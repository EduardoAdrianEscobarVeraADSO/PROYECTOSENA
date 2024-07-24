<%-- 
    Document   : header
    Created on : 15/07/2024, 3:44:28 p. m.
    Author     : eduar
--%>

<%@page import="model.UsuarioModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
            UsuarioModel usuariomodel = (UsuarioModel) session.getAttribute("login");
            String nombreUsuario = usuariomodel.getNombreUsuario();
        %>
    <header class="header">
          <!-- Icono para abrir el menú -->
          <div class="header__menu-icon">
            <i class="fas fa-bars"></i>
          </div>

          <!-- Logo -->
          <div class="header__logo">
            <img src="img/logoh2.png" alt="Logo" id="logoImage">
          </div>

          <!-- Items de navegación -->
          <div class="header__items" id="header__items">
            <a href="Like-Cart/likes.jsp" class="fas fa-heart"></a>
            <a href="login/inicio_sesion.jsp" class="fas fa-user"><%out.print(nombreUsuario);%></a>
            <a href="Like-Cart/cart.jsp" class="fas fa-shopping-cart"></a>
          </div>

          <!-- Menú desplegable -->
          <div id="myNav" class="header__menu">
            <!-- Botón para cerrar el menú -->
            <i class="fas fa-times header__menu-icon--close"></i>
            <a class="products__item" href="sections/jeans.jsp">Jeans</a>
            <%
                    List<model.Categoriamodel> categorias = (List<model.Categoriamodel>) session.getAttribute("listarcategorias");
                    if (categorias != null) {
                        for (model.Categoriamodel categoria : categorias) {
                            out.print("<a class=products__item href=sections/jeans.jsp>" + categoria.getNombre_categoria() + "</a>");                           
                        }
                    }
                %>
            <ul class="header__menu-redes">
              <li><a href="https://www.instagram.com" class="fab fa-instagram fa-2x"></a></li>
              <li><a href="https://www.facebook.com" class="fab fa-facebook fa-2x" ></a></li>
              <li><a href="https://www.whatsapp.com" class="fab fa-whatsapp fa-2x"></a></li>
              <li><a href="../Like-Cart/likes.jsp" class="fas fa-heart fa-2x"></a></li>
              <li><a href="../login/inicio_sesion.jsp" class="fas fa-user fa-2x"></a></li>
              <li><a href="../Like-Cart/cart.jsp" class="fas fa-shopping-cart fa-2x"></a></li>
            </ul>
          </div>

        </header>

