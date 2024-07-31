<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Prenda</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/panel-admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <%@ include file="../components/header2.jsp" %>
    <div class="main-container">
        <h1 class="main-container__title">Gestión de Prendas</h1>

        <form id="add-prenda-form" class="form" action="${pageContext.request.contextPath}/agregarPrendas" method="post" enctype="multipart/form-data">
            <h2 class="form__title">Añadir Nueva Prenda</h2>
            <input type="hidden" name="action" value="agregar">

            <label for="idCategoria" class="form__label">ID de Categoría:</label>
            <input type="number" id="idCategoria" class="form__input" required name="idCategoria" placeholder="Ingrese el ID de la categoría">

            <label for="nombrePrenda" class="form__label">Nombre:</label>
            <input type="text" id="nombrePrenda" class="form__input" required name="nombrePrenda" placeholder="Ingrese el nombre de la prenda">

            <label for="descripcionPrenda" class="form__label">Descripción:</label>
            <input type="text" id="descripcionPrenda" class="form__input" required name="descripcionPrenda" placeholder="Ingrese la descripción de la prenda">

            <label for="precioPrenda" class="form__label">Precio:</label>
            <input type="text" id="precioPrenda" class="form__input" required name="precioPrenda" placeholder="Ingrese el precio de la prenda">

            <label for="stockPrenda" class="form__label">Stock:</label>
            <input type="text" id="stockPrenda" class="form__input" required name="stockPrenda" placeholder="Ingrese el stock disponible">
            
            <label for="tallaPrenda" class="form__label">Talla:</label>
            <input type="text" id="tallaPrenda" class="form__input" required name="tallaPrenda" placeholder="Ingrese la talla unica de la prenda">
            
            <label for="URLimagen" class="form__label">Inserte las imágenes:</label>
            <input type="file" accept="image/*" class="form__input" name="URLimagen" required>

            <button type="submit" class="form__button">Añadir</button>
        </form>

        <a class="form__button" href="administracion.jsp">Regresar</a>
    </div>
</body>
</html>
