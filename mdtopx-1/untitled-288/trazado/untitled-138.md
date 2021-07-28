---
description: Cuadro de diálogo Información del trazado
---

# Información del trazado

[Ficha de herramientas Trazado](../../fichas-de-herramientas/untitled-255.md)

Este cuadro de diálogo muestra información acerca de un trazado, como son sus características generales y las coordenadas de los puntos que definen su geometría.

Las características generales del trazados son:

* **Nombre**: Se indicará un nombre para localizarlo con facilidad en los listados.
* **Pk** inicial: Se indicará el valor de comienzo del vial en metros.
* **Código**: Se indicará un código en el que se registra para visualizarlo con un determinado color o grosor en pantalla.

En el listado de puntos se incluyen los puntos que definen el estado de alineaciones así como los puntos de tangente con los elementos curvos. Cada punto vendrá definido por los siguientes parámetros:

* **Punto**: Número del punto
* **Coordenadas X e Y**: Valor de las coordenadas planimétricas en metros.
* **Radio**: Valor del radio en metros.
* **Parámetro A**.

Además, el programa permite Añadir, Editar o Borrar puntos utilizando los botones dispuestos al efecto.

Al realizar alguna de estas últimas operaciones, el programa comprueba la consistencia del trazado, evitando que se generen solapes entre elementos, normalmente curvos. Por ello, si un punto importante es eliminado, o se añaden puntos donde no se debe, o se edita algún punto incorrectamente, el programa puede generar un mensaje de error advirtiendo de la imposibilidad de la operación, debido al solape de elementos.

Al pulsar el botón Añadir, se utilizará el punto actualmente seleccionado como punto anterior a donde será añadido el nuevo punto.

Si se pulsa el botón Borrar sobre un punto Vértice o Tangente \(de entrada o salida\), se borrará todo el elemento curvo que representan.

También se presenta el botón Cerrar para poder cerrar el trazado. Para cerrar el trazado, el programa introducirá al final del listado un punto con las mismas coordenadas del primer punto. Si el trazado ya está cerrado este botón aparecerá desactivado.

Por último, aparecer el botón Exportar ASCII que permitirán generar un archivo con el listado del estado de alineaciones del vial mostrado. Al pulsarlo se mostrará el explorador de Windows para especificar el nombre y carpeta de destino. El archivo generado tiene el siguiente aspecto:

```text
Punto X Y Radio A Tipo
1 424621.570 4495199.270 0.000 0.000
2 424652.540 4495243.044 50.000 0.000 TE
3 424676.480 4495276.880 50.000 0.000 V
4 424714.168 4495259.628 50.000 0.000 TS
5 424751.789 4495242.408 -30.000 0.000 TE
6 424779.310 4495229.810 -30.000 0.000 V
7 424791.663 4495257.441 -30.000 0.000 TS
8 424812.380 4495303.780 0.000 0.000
9 424807.330 4495213.000 0.000 0.000
```

