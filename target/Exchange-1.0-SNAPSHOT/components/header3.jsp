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
              <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo" id="logoImage"></a>
            </div>

          <!-- Items de navegación -->
          <div class="header__items" id="header__items">
                <a href="Like-Cart/likes.jsp" class="fas fa-heart"></a>
                <div class="profile-container">
                    <a href="#" id="profileIcon" class="fas fa-user"></a>
                    <div class="dropdown-menu" id="dropdownMenu">
                        <%-- Contenido del menú desplegable --%>
                        <a><% out.print(nombreUsuario); %></a>
                        <a href="perfil.jsp">Ver perfil</a>
                        <a href="logout.jsp">Cerrar sesión</a>
                    </div>
                </div>
                <a href="${pageContext.request.contextPath}/Like-Cart/cart.jsp" class="fas fa-shopping-cart"></a>
            </div>

          <!-- Menú desplegable -->
          <div id="myNav" class="header__menu">
            <!-- Botón para cerrar el menú -->
            <i class="fas fa-times header__menu-icon--close"></i>
            <a class="products__item" href="sections/jeans.jsp">Jeans</a>
            <%
                // Asegúrate de que este atributo esté configurado antes de acceder a él
                List<model.Categoriamodel> headerCategorias = (List<model.Categoriamodel>) session.getAttribute("listarcategorias");
                if (headerCategorias != null) {
                    for (model.Categoriamodel categoria : headerCategorias) {
                        out.print("<a class='products__item' href='" + request.getContextPath() + "/mostrarPrendas?id=" + categoria.getID_categoria() + "'>" + categoria.getNombre_categoria() + "</a>");
                    }
                }
            %>

            <ul class="header__menu-redes">
              <li><a href="https://www.instagram.com" class="fab fa-instagram fa-2x"></a></li>
              <li><a href="https://www.facebook.com" class="fab fa-facebook fa-2x" ></a></li>
              <li><a href="https://www.whatsapp.com" class="fab fa-whatsapp fa-2x"></a></li>
              <li><a href="${pageContext.request.contextPath}/Like-Cart/likes.jsp" class="fas fa-heart fa-2x"></a></li>
              <li><a href="${pageContext.request.contextPath}/login/inicio_sesion.jsp" class="fas fa-user fa-2x"></a></li>
              <li><a href="${pageContext.request.contextPath}/Like-Cart/cart.jsp" class="fas fa-shopping-cart fa-2x"></a></li>
            </ul>
          </div>
          <script>
                document.getElementById("profileIcon").addEventListener("click", function(event) {
                    event.preventDefault(); // Evita que el enlace redirija
                    var dropdownMenu = document.getElementById("dropdownMenu");
                    dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
                });

                // Oculta el menu si se hace clic fuera de él
                window.addEventListener("click", function(event) {
                    if (!event.target.matches('.fas.fa-user')) {
                        var dropdownMenu = document.getElementById("dropdownMenu");
                        if (dropdownMenu.style.display === "block") {
                            dropdownMenu.style.display = "none";
                        }
                    }
                });
          </script>
        </header>

