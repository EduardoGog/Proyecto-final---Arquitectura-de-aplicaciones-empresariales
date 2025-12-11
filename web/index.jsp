<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de inicio</title>
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <main style="padding:2em;text-align:center;">
            <h1>Bienvenido al Proyecto Final</h1>
            <p>Esta es la página de inicio de la aplicación web.<br>
            Usa la barra de navegación para explorar los productos y otras secciones.</p>
        </main>
        
        <div style="text-align:center; margin-top: 30px;">
            <input type="button" class="button" value="Mostrar Integrantes"
                   onclick="window.location='${pageContext.request.contextPath}/integrantes.html'">
        </div>
    </body>
</html>
