---
description: Cuadro de diálogo Triangulación
---

# Triangulación

[Triangulación](../como.../untitled-326.md)

En este cuadro de diálogo aparecen los siguientes campos a rellenar:

* **Rango de cota**: Se reseñará una cota mínima y una cota máxima, de tal forma, que se podrán discriminar aquellas entidades que no formarán parte del modelo digital final.
* **Código de los triángulos**: Código en el que se almacenarán los triángulos. Este código podrá ser cambiado posteriormente desde el [Panel de Propiedades del documento TIN](../introduccion/untitled-303/untitled-300/untitled-298.md).
* **Códigos**: Serán aquellas entidades que se seleccionarán para proceder a triangular. Para que se seleccionen deben además de estar en el rango de cota. En la lista aparece el nombre del código y el nemotécnico, si tiene. Para saber más sobre los códigos consulte [Cuadro de diálogo Lista de códigos ](../otras-herramientas/listacodigos/).
* **Líneas de ruptura**: Se podrá activar o desactivar según se quieran conservar líneas de ruptura o no. En caso de que se active, se podrán seleccionar aquellos códigos que serán líneas de ruptura. Sólo se visualizarán en esta lista aquellos códigos que previamente fueron seleccionados en la lista de códigos que se emplearán para generar el modelo digital. En la lista aparece el nombre del código y el nemotécnico, si tiene.
* **Cota en las intersecciones entre líneas de ruptura**: Si se introducen líneas de ruptura al modelo digital, el programa realizará un análisis de éstas, generando puntos nuevos en las intersecciones. La cota de estos puntos nuevos podrá adquirir los siguientes valores:
  * Independiente: La cota del punto será la de la primera línea encontrada en el fichero.
  * Media: La cota del punto será la media entre las dos líneas de ruptura.
  * Más alta: La cota del punto será la más alta de ambas líneas de ruptura.
  * Más baja: La cota del punto será la más baja de ambas líneas de ruptura.
* **No unir puntos de curvas de nivel**: Esta opción permite que el programa no genere triángulos que unen puntos no consecutivos de una misma curva de nivel, de tal manera que no se generarían triángulos planos que no producirían un modelo digital acorde con el terreno representado por las curvas de nivel generadoras. Si se activa se deberá indicar la Equidistancia del curvado original en metros.
* **Distancia máxima entre puntos**: Si se desea, se podrá introducir la distancia máxima que puede haber entre dos puntos para que sean considerados vecinos y, por tanto, que se genere un triángulo entre ellos. Si no se desea introducir este campo, se deberá indicar un cero.

