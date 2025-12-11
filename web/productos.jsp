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
    </head>
    <body>
        <h1>Datos de alumnos de Ingeniería en computación</h1>
        <h2>Alumno 1</h2>
        <ul>
            <li>Nombre: <%=request.getParameter("nombre_producto") %></li>
            <li>Tipo: <%=request.getParameter("tipo_producto") %></li>
            <li>Descripcion: <%=request.getParameter("descripcion_producto") %></li>
            <li>Precio: <%=request.getParameter("precio_producto") %></li>
            <img src="<%=request.getParameter("imagen_producto") %>" width="500" height="300">
        </ul>
    </body>
</html>
