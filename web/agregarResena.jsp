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

                <%-- Procesar el formulario en el mismo JSP --%>
                <%
                    String mensaje = "";
                    String id = request.getParameter("id");
                    String resena = request.getParameter("resena");
                    String calificacion = request.getParameter("calificacion");
                    if ("POST".equalsIgnoreCase(request.getMethod()) && id != null && resena != null && calificacion != null && !id.isEmpty() && !resena.isEmpty() && !calificacion.isEmpty()) {
                        String rutaCSV = application.getRealPath("/resenas.csv");
                        java.io.File archivo = new java.io.File(rutaCSV);
                        boolean existe = archivo.exists();
                        try {
                            java.io.FileWriter fw = new java.io.FileWriter(archivo, true);
                            if (!existe) {
                                fw.write("ID,Reseña,Calificación\n");
                            }
                            String resenaLimpia = resena.replace(",", ";");
                            fw.write(id + "," + resenaLimpia + "," + calificacion + "\n");
                            fw.close();
                            mensaje = "Reseña guardada correctamente.";
                        } catch (Exception e) {
                            mensaje = "Error al guardar la reseña: " + e.getMessage();
                        }
                    }
                %>

                <% if (!mensaje.isEmpty()) { %>
                    <div style="color:green; font-weight:bold; margin-bottom:10px;">
                        <%= mensaje %>
                    </div>
                <% } %>

                <form action="agregarResena.jsp" method="POST">
                    <!-- ID del producto -->
                    <input type="hidden" id="id" name="id" value="<%= request.getParameter("id")%>">
                    <div id="id-warning" style="color:red; font-weight:bold; display:none; margin-bottom:10px;">No se puede agregar reseña porque el ID del producto está vacío. Accede desde el producto correspondiente.</div>

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
                </form>

                <form method="GET" action="resenas.csv">
                    <button type="submit" style="margin-top:18px;">Descargar todas las reseñas (CSV)</button>
                </form>

                <script>
                window.addEventListener('DOMContentLoaded', function() {
                    var id = document.getElementById('id').value.trim();
                    var btn = document.querySelector('form button[type="submit"]');
                    var warning = document.getElementById('id-warning');
                    if (!id) {
                        btn.disabled = true;
                        warning.style.display = 'block';
                    } else {
                        btn.disabled = false;
                        warning.style.display = 'none';
                    }
                });
                </script>
            </div>
    </body>

    </html>