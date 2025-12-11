<%-- 
    Document   : index
    Created on : 2 dic 2025, 21:39:43
    Author     : compa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto final</title>
        <link rel="stylesheet" href="css/navbar.css">
    </head>
    <body>
        <h1>Productos electrónicos</h1>
        <%-- Mostrar hasta 5 productos si existen los parámetros --%>
        <% for (int i = 1; i <= 5; i++) {
            String nombre = request.getParameter("nombre_producto" + i);
            String tipo = request.getParameter("tipo_producto" + i);
            String descripcion = request.getParameter("descripcion_producto" + i);
            String precio = request.getParameter("precio_producto" + i);
            String imagen = request.getParameter("imagen_producto" + i);
            if (nombre != null && !nombre.isEmpty()) { %>
                <h2>Producto <%=i%></h2>
                <ul>
                    <li>Nombre: <%=nombre%></li>
                    <li>Tipo: <%=tipo%></li>
                    <li>Descripcion: <%=descripcion%></li>
                    <li>Precio: <%=precio%></li>
                    <% if (imagen != null && !imagen.isEmpty()) { %>
                        <img src="<%=imagen.startsWith("/") ? imagen.substring(1) : imagen %>" width="500" height="300">
                    <% } %>
                </ul>
        <%  }
        } %>
    </body>
</html>
