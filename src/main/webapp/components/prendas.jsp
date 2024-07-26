<%@ page import="model.prendasModel" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Prendas</title>
</head>
<body>
    <h1>Prendas</h1>
    <ul>
        <c:forEach var="prenda" items="${prendas}">
            <li>
                <h3>${prenda.nombre_prenda}</h3>
                <p>Precio: ${prenda.precio}</p>
                <img src="uploads/${prenda.imagen}" alt="${prenda.nombre_prenda}" />
            </li>
        </c:forEach>
    </ul>
</body>
</html>
