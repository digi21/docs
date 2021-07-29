---
description: Cuadro de diálogo Orientación Midiendo Puntos
---

# Orientación Midiendo Puntos

[Orientación](../fichas-de-herramientas/ficha-de-herramientas-imagen/orientacion.md)

Esta herramienta está destinada a la orientación de una imagen ráster midiendo puntos sobre ella y sobre un documento vectorial. Este documento deberá haber sido cargado previamente como referencia.

Cuando se llama a la herramienta, la vista se divide en dos vistas de forma vertical. En la vista de la izquierda, se visualiza la imagen. En la vista de la derecha, se visualiza el archivo vectorial que se cargó como referencia. Asimismo, aparece un nuevo panel donde se irán mostrando los puntos medidos y los parámetros de orientación que el programa calcula en tiempo real.

Ahora, el usuario deberá ir señalando puntos sobre la imagen y sobre los datos vectoriales para poder calcular. Los puntos se van introduciendo pulsando con el botón izquierdo del ratón sobre cada una de las vistas.

Estos puntos se van añadiendo al panel de orientación, donde se muestran los parámetros de orientación, así como una serie de herramientas en la parte superior del panel. Estas herramientas y campos que se muestran son los siguientes:

* **Lista de puntos**: En este espacio se mostrarán los puntos que se van midiendo. Por cada punto se mostrará el número secuencial de punto, coordenadas foto, coordenadas terreno y residuos de cada coordenada. Se deberá ir añadiendo cada punto, seleccionando la posición con el botón izquierdo del ratón sobre cada ventana \(a la izquierda está la ventana con la imagen y a la derecha la ventana con el documento de referencia vectorial\). Es indiferente el orden de selección en cada ventana. Una vez introducido cada punto, estos pueden ser eliminados o remedidos \(según los residuos que van generando en tiempo real\) utilizando los botones Borrar y Remedir, respectivamente, de la barra de herramientas del panel. Según se van introduciendo puntos, el programa va calculando la transformación más apropiada y generando los residuos. Los parámetros y tipo de transformación se muestran en la parte inferior del panel. Por último, también es posible salvar o cargar los puntos desde disco, utilizando los botones Salvar puntos y Cargar puntos, respectivamente, de la barra de herramientas del panel.
* **Tipo**: En este campo se podrá seleccionar el tipo de transformación que el programa utilizará en el cálculo. Si se elige la opción Auto , el programa seleccionará la transformación más adecuada para los puntos medidos. Las opciones disponibles son: Translación, Dos Pasos, Cónica o Helmert.
* **Resultados**: En esta parte del panel, se irán mostrando los parámetros resultantes del cálculo con los puntos que se han introducido. La cantidad de parámetros variarán según el tipo de transformación seleccionada.
* **Precisiones**: Además del valor de los parámetros calculados, también se muestran las precisiones con la que han sido calculados éstos.
* **Salida**: Cuando se termine la medición de los puntos, el programa permite salvar los resultados en un archivo de texto. Para ello, se deberá poner a "Verdadero" el campo "Salvar resultados". Además, se deberá indicar un nombre de archivo o seleccione uno con el explorador de Windows que se muestra pulsando el botón que aparece a la derecha.

Utilizando los botones de la barra de herramientas en la parte superior del panel, se podrá terminar aceptando la orientación o salir sin modificar la orientación de la imagen.

Vea también:

* [Editar Orientación](editar-orientacion-de-imagen.md)

