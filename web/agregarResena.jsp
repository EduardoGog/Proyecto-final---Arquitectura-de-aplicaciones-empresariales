<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
            <div class="overlay"></div>
            <main style="padding:2em;text-align:center;" class="main">
                <h1>Agregar Reseña</h1>
                <p>Esta es la página para agregar una reseña del producto <%= request.getParameter("id") %>.</p>
            </main>

            <div class="contenedor">
                <h2>Agregar Reseña</h2>

                <!--form action="GuardarResenaServlet" method="POST"-->
                    <!-- ID del producto -->
                    <input type="hidden" name="id" value="<%= request.getParameter("id")%>">

                    <!-- Cuadro de texto -->
                    <label for="resena">Escribe tu reseña:</label>
                    <textarea id="resena" name="resena" required></textarea>

                    <!-- Calificación -->
                    <label for="calificacion">Calificación:</label>
                    <select id="calificacion" name="calificacion" required>
                        <option value="" disabled selected>Selecciona una opción</option>
                        <option value="1">1 - Muy malo</option>
                        <option value="2">2 - Malo</option>
                        <option value="3">3 - Regular</option>
                        <option value="4">4 - Bueno</option>
                        <option value="5">5 - Excelente</option>
                    </select>

                    <button type="submit">Guardar reseña</button>
                <!--/form-->
            </div>
    </body>

    </html>