<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Productos</title>
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <jsp:include page="productos.jsp">
            <jsp:param name="nombre_alumno" value="Jonathan Alejandro Ibañez Aguilar" />
            <jsp:param name="matricula_alumno" value="2213026738" />
            <jsp:param name="edad_alumno" value="25 años" />
            <jsp:param name="lic_alumno" value="Ingeniería en computación" />
            <jsp:param name="hobbie_alumno" value="Jugar videojuegos" />
            <jsp:param name="hobbie2_alumno" value="Ver anime" />
            <jsp:param name="hobbie3_alumno" value="Futbol" />
            <jsp:param name="hobbie4_alumno" value="Programar" />
        </jsp:include>
    </body>
</html>
