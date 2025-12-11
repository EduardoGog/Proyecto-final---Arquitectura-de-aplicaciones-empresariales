<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="productos.jsp">
            <jsp:param name="nombre_alumno" value="Jonathan Alejandro Ibañez Aguilar" />
            <jsp:param name="matricula_alumno" value="2213026738" />
            <jsp:param name="edad_alumno" value="25 años" />
            <jsp:param name="lic_alumno" value="Ingeniería en computación" />
            <jsp:param name="hobbie_alumno" value="Jugar videojuegos" />
            <jsp:param name="hobbie2_alumno" value="Ver anime" />
            <jsp:param name="hobbie3_alumno" value="Futbol" />
            <jsp:param name="hobbie4_alumno" value="Programar" />

            <jsp:param name="nombre_alumno2" value="Eduardo González González" />
            <jsp:param name="matricula_alumno2" value="2213064505" />
            <jsp:param name="edad_alumno2" value="22 años" />
            <jsp:param name="lic_alumno2" value="Ingeniería en computación" />
            <jsp:param name="hobbie_alumno2" value="Jugar soccer" />
            <jsp:param name="hobbie2_alumno2" value="Hacer ejercicio" />
            <jsp:param name="hobbie3_alumno2" value="Escuchar música" />
            <jsp:param name="hobbie4_alumno2" value="Programar" />
        </jsp:include>
        
        <div style="text-align:center; margin-top: 30px;">
            <input type="button" class="button" value="Mostrar Integrantes"
                   onclick="window.location='${pageContext.request.contextPath}/integrantes.html'">
        </div>
    </body>
</html>
