---
description: Cuadro de diálogo Suavizado
---

# Suavizado

[VirtuaLand Editar](../fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-editar.md)

Esta herramienta esta destinada al suavizado de un modelo digital de tipo DEM utilizando el algoritmo de Splines cúbicos. De esta forma, se puede generar una superficie que puede ser continua en la pendiente y en la curvatura. Según esto, los resultados de la interpolación sobre el modelo serán mejores que sobre modelos digitales que simplemente son uniones entre superficies independientes \(triángulos o celdas\).

![Cuadro de di&#xE1;logo Suavizado](../../.gitbook/assets/image%20%2867%29.png)

En este cuadro de diálogo aparecen los siguientes campos a rellenar:

* **Generar superficie de Ferguson**: Si se selecciona esta casilla la superficie generada no es tan curva, debido a que matemáticamente no se considerarán continuas las curvaturas de las diferentes celdas adyacentes.
* **Nivel de suavizado**: Se puede indicar un nivel de suavizado que deberá estar en el rango entre 1 y 10. Si se indica un 10 el suavizado será máximo y si se indica un 1 el suavizado será mínimo.
* **Utilizar Bsplines previamente**: Activando esta opción el programa aplicará un algoritmo Bspline sobre los datos que permitirá eliminar pequeñas irregularidades. Estas irregularidades pueden venir provocadas por un defecto de precisión en los puntos introducidos.
* **Respetar líneas de ruptura**: Si el modelo tiene incorporadas líneas de ruptura, estas pueden ser utilizadas para mejorar la modelización. El modelo resultante no tendrá celdas cuadradas homogéneas. Por contra, dividirá aquellas celdas que son atravesadas por líneas de ruptura para conservar la pendiente que estas tienen.

