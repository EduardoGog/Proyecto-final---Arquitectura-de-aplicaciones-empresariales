<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="productos.jsp">
            <jsp:param name="nombre_producto" value="GIGABYTE Laptop Gamer Aero X16" />
            <jsp:param name="tipo_producto" value="Laptop" />
            <jsp:param name="descripcion_producto" value="GIGABYTE Laptop Gamer Aero X16 NVIDIA GeForce RTX 5060 AMD Ryzen AI 7 350 32GB RAM 1TB SSD 16" />
            <jsp:param name="precio_producto" value="29,899" />
            <jsp:param name="imagen_producto" value="img/laptop_gigabyte.jpg" />

            <jsp:param name="nombre_producto" value="Raspberry Pi 5" />
            <jsp:param name="tipo_producto" value="Microcomputadora" />
            <jsp:param name="descripcion_producto" value="Raspberry Pi 5 Microcomputadora con procesador ARM Cortex, 8GB RAM, 64GB almacenamiento, conectividad Wi-Fi y Bluetooth" />
            <jsp:param name="precio_producto" value="3,999" />
            <jsp:param name="imagen_producto" value="img/raspberry.jpg" />

            <jsp:param name="nombre_producto" value="Logitech G203 LIGHTSYNC" />
            <jsp:param name="tipo_producto" value="Mouse" />
            <jsp:param name="descripcion_producto" value="Logitech G203 LIGHTSYNC Mouse Gaming con Iluminación RGB Personalizable, 6 Botones Programables Seguimiento de hasta 8,000 DPI, Ultra" />
            <jsp:param name="precio_producto" value="400" />
            <jsp:param name="imagen_producto" value="img/mouse_logitech.jpg" />

            <jsp:param name="nombre_producto" value="Free wolf M96" />
            <jsp:param name="tipo_producto" value="Teclado" />
            <jsp:param name="descripcion_producto" value="Free wolf M96 Teclado Inalambrico Español, Bluetooth y 2.4GHz 2 Modes Teclado Gaming, con Pantalla LED y Luz de Retroiluminación Rainbow, para Oficina y Juegos|" />
            <jsp:param name="precio_producto" value="799" />
            <jsp:param name="imagen_producto" value="img/teclado" />

            <jsp:param name="nombre_producto" value="Szory Monitor portátil" />
            <jsp:param name="tipo_producto" value="Monitor" />
            <jsp:param name="descripcion_producto" value="15.6 Pulgadas 1080P Extended Monitor, 1000:1 100% sRGB USB-C HDMI Display portátil para portátil Pantalla de Viaje HDR para PC PS5/4 Xbox Switch" />
            <jsp:param name="precio_producto" value="1,300" />
            <jsp:param name="imagen_producto" value="img/monitor.jpg" />
        </jsp:include>
    </body>
</html>

