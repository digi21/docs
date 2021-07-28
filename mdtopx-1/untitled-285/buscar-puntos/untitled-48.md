---
description: Cuadro de diálogo Buscar puntos según infrarrojo
---

# Buscar puntos según infrarrojo

[Ficha de herramientas Clasificar LiDAR](../../fichas-de-herramientas/untitled-245.md)

Esta herramienta tiene como objetivo clasificar puntos en función del índice NDVI que se puede calcular a partir del valor de infrarrojo almacenado. Para ello, cada punto deberá tener almacenado un falso color compuesto por el valor infrarrojo cercano, rojo y azul.

El cuadro de diálogo precisa de los siguientes campos:

* **Tipología origen**: Se deberá seleccionar las tipologías que se considerarán en esta clasificación.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados
* **Tipología destino**: Se deberá elegir la tipología de clasificación destino de los puntos que cumplan con las condiciones del cálculo.
* **Modo de cálculo**: Se podrán considerar dos maneras para clasificar, en función de si tienen un alto índice NDVI o bajo nivel. Además, con la barra inferior, se podrá indicar si se desea una alta o baja diferencia entre los índices calculados. Se debería indicar un valor alto de diferencia, si el falso color es nítido o bien definido. Se deberá indicar un bajo valor de diferencia en caso contrario.
* **Alto nivel IR**: Se clasificarán aquellos puntos que tengan un alto valor de NDVI. Este es el caso, por ejemplo, que se haya seleccionado como tipología origen "Edificación", y se deseen clasificar como "Vegetación" aquellos puntos que tengan un valor alto de NDVI.
* **Bajo nivel IR**: Se clasificarán aquellos puntos que tengan un bajo valor de NDVI. Este es el caso, por ejemplo, que se haya seleccionado como tipología origen "Vegetación", y se deseen clasificar como "Edificación" aquellos puntos que tengan un valor bajo de NDVI.

Vea también:

* [Buscar puntos elevados](untitled-41.md)
* [Buscar puntos aislados](untitled-39.md)
* [Buscar puntos aéreos](untitled-38.md)
* [Buscar puntos hundidos](untitled-44.md)
* [Buscar puntos por diferencia de intensidad](untitled-40.md)
* [Buscar puntos según línea de vuelo](untitled-49.md)
* [Buscar puntos según Geometría más RGB](untitled-47.md)
* [Buscar puntos según Geometría más intensidad](untitled-46.md)
* [Buscar puntos en Superficies Planas](untitled-43.md)
* [Buscar puntos en Paredes](untitled-42.md)
* [Buscar puntos Solo Suelo](untitled-198.md)
* [Superficie mágica](untitled-201/)
* [Buscar puntos vecinos](untitled-51.md)
* [Buscar huecos](untitled-34.md)
* [Buscar puntos según Área de superficie](untitled-45.md)
* [Buscar puntos según planos de usuario](untitled-50.md) 

