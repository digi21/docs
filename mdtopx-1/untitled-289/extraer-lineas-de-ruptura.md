---
description: Cuadro de diálogo Extraer líneas de ruptura
---

# Extraer líneas de ruptura

[VirtuaLand General](../fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-general.md)

![Cuadro de di&#xE1;logo L&#xED;neas de ruptura](../../.gitbook/assets/image%20%2865%29.png)

Esta herramienta está destinada a la generación automática de las líneas de ruptura que definen un conjunto de puntos. Para ello es necesario que el modelo digital está suavizado. Calculando las tendencias del terreno es posible calcular dónde se encuentran las vaguadas y divisorias así como ciertos puntos de interés geomorfológico. Al llamar a la herramienta se muestra un cuadro de diálogo donde aparecen los siguientes campos:

* **Parámetros generales**: Es importante definir unos parámetros iniciales para conocer la magnitud de los elementos calculados. Estos parámetros son:
* **Denominador de escala**: Además se podrán variar los valores de generalización lineal y superficial pulsando el botón [Avanzado](../herramientas-mdt/curvado/curvado-avanzado.md).
* **Límite de curvatura**: Valor de la curvatura por debajo de la cual un elemento no se considera línea de ruptura.
* **Distancia mínima**: Distancia mínima de los elementos calculados en metros.
* **Códigos**: Se podrán indicar los códigos en los que se van a registrar las diferentes entidades calculadas.
* **Incluir puntos importantes**: Se podrá seleccionar esta opción si se desean incluir elementos puntuales. En tal caso, se deberá indicar el tamaño del texto que contendrá la cota del elemento punto y la separación de este texto respecto del punto en metros.

El resultado es un archivo de dibujo con las líneas de ruptura calculadas y los puntos de interés. Posteriormente, este documento podrá ser salvado en formato BIN de DIGI, DXF de AutoCad, DGN de MicroStation o Shape de ESRI ArcGIS.

