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
        <!-- Barra de navegación incluida solo en la página principal -->
        <h1>Productos electrónicos</h1>
        <h2>Producto 1</h2>
        <ul>
            <li>Nombre: <%=request.getParameter("nombre_alumno") %></li>
            <li>Matrícula: <%=request.getParameter("matricula_alumno") %></li>
            <li>Edad: <%=request.getParameter("edad_alumno") %></li>
            <li>Licenciatura: <%=request.getParameter("lic_alumno") %></li>
            <li>Hobbie 1: <%=request.getParameter("hobbie_alumno") %></li>
            <li>Hobbie 2: <%=request.getParameter("hobbie2_alumno") %></li>
            <li>Hobbie 3: <%=request.getParameter("hobbie3_alumno") %></li>
            <li>Hobbie 4: <%=request.getParameter("hobbie4_alumno") %></li>
        </ul>
    </body>
</html>
