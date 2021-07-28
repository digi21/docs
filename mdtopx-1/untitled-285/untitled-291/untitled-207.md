---
description: Cuadro de diálogo Triangulación 2D
---

# Triangulación 2D

[Obtener modelo digital](./)

Esta herramienta está destinada a la generación de un modelo digital del terreno de tipo TIN utilizando el algoritmo de la triangulación de Delaunay. Esta herramienta no admite la inclusión de líneas de ruptura por lo que su utilización se restringe a la triangulación de archivos de puntos láser.

Los parámetros que precisa son los siguientes:

* **Seleccione las tipologías origen**: Se deberán seleccionar las tipologías origen que se desean utilizar para calcular el modelo digital.
* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos. No es adecuado poner un valor demasiado elevado provocará que se relacionen puntos muy alejados en la realidad, eliminándose las posibles zonas cóncavas del modelo. Si se indica un valor demasiado escaso, podrán generarse zonas vacías por encontrarse los puntos más espaciados que esta distancia. Si se indica un cero, no tendrán en cuenta la distancia entre los puntos, no generando concavidades en el modelo.
* **Código de los triángulos**: Código con el que se almacenarán internamente los triángulos.

Vea también:

* [Triangulación](../../herramientas-mdt/untitled-209.md)
* [Triangulación 3D](untitled-208.md)

