---
description: Cuadro de diálogo Ordenar puntos LiDAR
---

# Ordenar puntos LiDAR

[Editar puntos LIDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/editar-puntos-en-archivos-lidar.md)

Herramienta útil para ordenar los puntos LiDAR según alguna de sus características, siendo la más normal, el tiempo GPS de registro. Si no tuvieran tiempo GPS, se podrían ordenar por su coordenada X o Y. Básicamente, cada conjunto de puntos representa una pasada realizada por el sensor, en el caso aéreo. En el caso terrestre, provendría de diferentes estacionamientos o diferentes sensores equipados en un sistema MMS.

Los parámetros que precisa son los siguientes:

* **Ordenar si no tiene tiempo GPS**: Se deberá activar esta opción en caso de que se deseen ordenar los puntos aunque no tengan el dato del tiempo GPS. En este caso, se daría la opción de ordenar por alguna de sus coordenadas planimétricas.
* **Unir conjuntos diferentes si son consecutivos**: Existe la posibilidad de unir conjuntos de puntos disjuntos, que el programa detecta que podrían ser continuos por su diferencia de tiempo GPS.
* **Separar en conjuntos diferentes si se encuentra salto**: Al contrario que la opción anterior, el programa da la posibilidad de separar conjuntos con un importante salto en el tiempo GPS, debido a que se unieron conjuntos de puntos diferentes.
* **Borrar puntos duplicados**: Se podría borrar puntos que tienen las mismas coordenadas XYZ.
* **Es nube de puntos procedente de MMS**: Se activará esta opción si la nube de puntos procede de un registro terrestre MMS.

