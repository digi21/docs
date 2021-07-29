---
description: Cuadro de diálogo Transformar a tono
---

# Transformar a tono

[Filtros](../fichas-de-herramientas/ficha-de-herramientas-imagen/filtros.md)

Esta herramienta está destinada al cálculo de la terna Tono-Valor-Saturación \(HSV\) a partir de una imagen con píxeles almacenados en Rojo-Verde-Azul \(RGB\). El cuadro de diálogo ofrece varias opciones de sustitución de los píxeles:

* **Utilizar HSV en cada capa**: Se calculará el color en forma HSV y se sustituirá directamente en el píxel.
* **Utilizar sólo H \(Tono\)**: Se calculará el color en forma HSV y se asignará a los tres bytes el valor calculado para el Tono \(H\).
* **Utilizar H \(Tono\) con valores fijos de**: Se calculará el color en forma HSV y el usuario podrá indicar valores fijos de Saturación \(S\) y Valor \(V\), asignándose posteriormente a cada píxel.

Además, para realizar un mejor cálculo de los colores, se podrá indicar cuándo un color RGB es gris. Es decir, si la diferencia entre los valores RGB es menor que el umbral indicado por el usuario, el color será considerado gris.

