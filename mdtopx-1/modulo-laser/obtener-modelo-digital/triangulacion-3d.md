---
description: Cuadro de diálogo Triangulación 3D
---

# Triangulación 3D

[Obtener modelo digital](./)

Esta herramienta está destinada a la generación de un modelo digital del terreno de tipo TIN utilizando el algoritmo de la tetraedrización de Delaunay. Esta herramienta no admite la inclusión de líneas de ruptura por lo que su utilización se restringe a la triangulación de archivos de puntos láser.

![Cuadro de di&#xE1;logo Triangulaci&#xF3;n 3D](../../../.gitbook/assets/image%20%28139%29.png)

Los parámetros que precisa son los siguientes:

* **Seleccione las tipologías origen**: Se deberán seleccionar las tipologías origen que se desean utilizar para calcular el modelo digital.
* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos. No es adecuado poner un valor demasiado elevado provocará que se relacionen puntos muy alejados en la realidad, eliminándose las posibles zonas cóncavas del modelo. Si se indica un valor demasiado escaso, podrán generarse zonas vacías por encontrarse los puntos más espaciados que esta distancia. Si se indica un cero, no tendrán en cuenta la distancia entre los puntos, no generando concavidades en el modelo
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.
* **Generar directamente TIN 2D**: Si se activa esta opción, el resultado será un modelo 2D con los triángulos correspondientes a las caras externas de los tetraedros generados. Si no se activa, el resultado será un modelo 3D con los tetraedros, pudiendo cambiar posteriormente el tamaño de dichos tetraedros en la cinta de herramientas de Edición TIN 3D, herramienta [Mostrar triángulos](../../fichas-de-herramientas/ficha-de-herramientas-edicion-tin-3d/actualizar-tin-3d.md)

Vea también:

* [Triangulación](../../herramientas-mdt/triangulacion.md)
* [Triangulación 2D](triangulacion-2d.md)

