---
description: Cuadro de diálogo Generar límites de imagen
---

# Generar límites de imagen

[Calcular](../fichas-de-herramientas/ficha-de-herramientas-imagen/imagen-calcular.md)

Herramienta destinada a calcular el límite exterior de una imagen. Este límite será calculado a partir de los píxeles que están de color blanco. El resultado será un documento de dibujo vectorial con el límite en coordenadas terreno. Al ejecutar el comando, se muestra un cuadro de diálogo que tiene los siguientes campos:

* **Distancia para huecos**: Número de píxeles para considerar una concavidad en el límite.
* **Código del límite**: Código en el que se registrará la entidad lineal.
* **Margen transversal**: En caso de ser una imagen en proyección cónica, se podrá indicar un porcentaje de recorte en la dirección transversal a la toma.
* **Margen longitudinal**: En caso de ser una imagen en proyección cónica, se podrá indicar un porcentaje de recorte en la dirección longitudinal de avance de la pasada.

Esta herramienta también puede ser ejecutada con un proyecto activo. En tal caso, el programa nos mostrará un cuadro de diálogo donde permitirá elegir de qué imágenes se calculará el límite.

