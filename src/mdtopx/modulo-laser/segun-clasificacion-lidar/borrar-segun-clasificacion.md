# Borrar según clasificación
<!-- id: borrar-segun-clasificacion -->

[Según clasificación LIDAR](/mdtopx/modulo-laser/segun-clasificacion-lidar/)

Esta herramienta está destinada para borrar del fichero aquellos puntos que tengan una determinada clasificación LiDAR.

![Cuadro de diálogo Borrar según clasificación](../../../images/image-130.png)

Los parámetros que precisa son los siguientes:

* **Seleccione las tipologías**: Se deberán seleccionar las tipologías de los puntos que se desean borrar.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.

## En un proyecto

También funciona con un proyecto, como [Seleccionar según clasificación](seleccionar-segun-clasificacion.md):

1. Se eligen las tipologías en el mismo cuadro de diálogo. En un proyecto no se puede actuar solo en la selección: se borra en los archivos enteros.
2. Se eligen los archivos del proyecto en los que se borran.
3. Antes de borrar, se pide confirmación: los archivos en los que se borra algún punto se guardan, y el borrado no se puede deshacer.

En la ventana de resultados se ven los puntos borrados de cada archivo y el total. Sirve, por ejemplo, para quitar de todo el proyecto los puntos sintéticos de [Líneas eléctricas](../generar/lineas-electricas.md) (los de sus clases sintéticas) y quedarse con los puntos medidos.

Vea también:

* [Borrar puntos según punto de registro](../segun-punto-de-registro/borrar-segun-punto-de-registro.md)
* [Borrar puntos según color registrado](../segun-color-registrado/borrar-segun-color-registrado.md)
* [Borrar puntos según intensidad](../segun-intensidad/borrar-segun-intensidad.md)
* [Borrar puntos según eco](../segun-eco-lidar/borrar-segun-eco.md)
* [Borrar puntos según tiempo GPS](../segun-tiempo-gps/borrar-segun-tiempo-gps.md)
* [Ficha de herramientas Clasificar LiDAR](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)
