---
description: Cuadro de diálogo Promediar pasadas
---

# Promediar pasadas

[Editar puntos LIDAR](../../fichas-de-herramientas/untitled-252/untitled-234.md)

Esta herramienta está destinada al promedio de puntos láser procedentes de diferentes puntos de toma y que coincidan espacialmente.

Los parámetros que precisa son lo siguientes:

* **Dimensiones para los cálculos**: Se deberá especificar si los puntos láser son 2D \(LIDAR\) o 3D \(láser terrestre\).
* **Paso de la rejilla**: Se deberá especificar la distancia que tendrán los puntos promediados.
* **Distancia máxima**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos. Este campo servirá delimitar la zona abarcada por cada punto de toma.
* **Cota de los puntos de la rejilla**: Se deberá elegir entre una de las siguientes opciones.
  * Primer punto encontrado: El programa utilizará la cota del primer punto encontrado en la zona cercana con la densidad fijada.
  * Media aritmética: El programa utilizará la cota media de todos los puntos encontrados en la zona cercana con la densidad fijada.
  * Media ponderada según rejilla: El programa utilizará la cota inversamente proporcional a la distancia de cada punto encontrado en la zona al centro de dicha zona.
  * Media ponderada según ángulo: El programa utilizará la cota inversamente proporcional al ángulo LIDAR registrado en cada punto encontrado en la zona.
  * Menor cota encontrada: El programa utilizará la menor cota encontrada entre los puntos que se hallen en la zona.
  * Mayor cota encontrada: El programa utilizará la mayor cota encontrada entre los puntos que se hallen en la zona.

Vea también:

* [Filtrar puntos](untitled-111.md)

