---
description: Cuadro de diálogo Curvado a partir de LIDAR
---

# Curvado a partir de LIDAR

[Generar a partir de LIDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Esta herramienta está destinada a generar un curvado a partir directamente de un archivo de puntos láser.

Los parámetros que precisa son los siguientes:

* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos.
* **Equidistancia de curvas de nivel**: Se deberá indicar el intervalo entre curvas de nivel. Este parámetro dependerá de la escala del mapa final.
* **Código de las curvas de nivel**: Se deberá indicar el código en el que se registrarán las curvas de nivel en el documento nuevo.
* **Seleccionar tipología origen**: Se deberá elegir la tipología de clasificación de los puntos que se utilizarán para el cálculo del curvado.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.
* **Clasificar puntos**: Se podrá activar esta opción para clasificar puntos que queden dentro de una curva de nivel que no supere un determinado área y según la tipología de destino que el usuario seleccione. Esta opción es útil para clasificar aquellos puntos que no fueron identificados en procesos anteriores y que podrían no pertenecer al suelo, como por ejemplo vegetación baja.

