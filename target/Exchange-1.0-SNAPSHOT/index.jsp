<%-- 
    Document   : index
    Created on : 27/06/2024, 12:40:23 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Exchange</title>
        <link rel="stylesheet" href="Css/styles-principal.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="icon" type="image" href="img/logopage.jpg">
    </head>

    <body>
        
        <%@ include file="components/header3.jsp" %>
        <!-- menu de navegacion principal -->
        
        <section>

          <div class="video-container">
            <video width="100%" height="auto" autoplay loop muted>
              <source src="img/vids/vidH.mp4" type="video/mp4">
            </video>
          </div>

        </section>

        <!-- Tendencias del mes seccion -->

        <section class="tendencias tendencias--hidden">
          <h2>Tendencias de la Semana</h2>
          <div class="tendencias__container">
            <div class="tendencias__item tendencias__item--large">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item tendencias__item--large">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
            <div class="tendencias__item">
              <img src="img/gorras.jpg" alt="Gorra de Verano">
              <h3 class="tendencias__title">Gorra de Verano</h3>
              <p class="tendencias__price">$25.00</p>
            </div>
          </div>
        </section>

        <script src="JS/principal-main.js"></script>
    </body>
</html>
