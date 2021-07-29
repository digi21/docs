---
description: Cuadro de diálogo Salvar puntos de vista
---

# Salvar puntos de vista

[ VirtuaLand Generar Video](../fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-generar-video.md)

Mediante este cuadro de diálogo se pueden ir salvando posiciones de la cámara en el documento actual, para luego ser grabados en un fichero que permite leer la herramienta de [Generar vídeo ](generar-video.md)para crear una secuencia animada pasando por todos los puntos.

Cuando se pulsa sobre el icono, la vista del documento cambia a modo Vista oblicua porque es la manera más natural de visualizar posteriormente un video. Además, aparece un cuadro de diálogo que queda flotante, por lo que se puede mover la vista del documento con el resto de herramientas de visualización que MDTopX posee.

Desde este cuadro de diálogo se podrán ver las diferentes posiciones añadidas, así como cargar un fichero de posiciones ya salvado o guardar el listado actual.

Según se vayan añadiendo posiciones nuevas, en la vista del documento irán apareciendo iconos con forma de cámara para ver su posición respecto del objeto.

En el cuadro de diálogo, se ofrecen la siguiente información y botones de acción:

* **Lista de posiciones**: Se muestra el listado de las posiciones guardadas, compuestas por la posición XYZ del punto de vista, los ángulos de orientación Omega, Phi, Kappa y la Velocidad de transición al siguiente punto. Por defecto, este último campo será 1. En la parte inferior izquierda se ofrecen ciertos botones de operación sobre este listado para poder Editar o Borrar posiciones. Además, se da la opción de Cargar un fichero existente de posiciones.
* **Posición actual**: Se muestran los diferentes campos que tiene una posición, actualizándose automáticamente según se va moviendo la vista del documento actual. Una vez que se tenga una posición deseada, se podrá pulsar sobre el botón Salvar punto para añadirlo a la lista de posiciones.

Una vez que se haya terminado de añadir posiciones, se podrá salir de la herramienta pulsando el botón Aceptar. Entonces, el programa permitirá salvar el listado actual de posiciones a un nombre de archivo que podrá ser utilizado posteriormente para [generar un video](generar-video.md). Si se pulsa el botón Salir, se podrá cerrar la herramienta sin salvar los datos.

El archivo salvado tiene el siguiente formato, con las coordenadas en metros y los ángulos en grados sexagesimales:

```text
Pos_X Pos Y Pos Z Omega Phi Kappa Velocidad
424659.717158 4495290.075556 947.157008 53.629147 358.381150 1.202846 1.000000
424722.469129 4495283.604271 977.601514 53.629147 358.381150 1.202846 1.000000
424760.150146 4495236.889819 947.916648 53.629147 358.381150 1.202846 1.000000
424719.233509 4495167.257396 970.378476 53.629147 358.381150 1.202846 1.000000
424644.706598 4495152.940141 997.370347 53.629147 358.381150 1.202846 1.000000
424712.912964 4495222.521317 1043.623561 15.768020 358.105439 1.976395 1.000000
```

