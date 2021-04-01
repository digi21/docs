# INS

Inserta un fichero de dibujo en el fichero de trabajo.

## Parámetros

* Si el fichero a insertar ha sido creado con la orden _BLOQUE_, el programa define el vector de traslación con origen \(0, 0, 0\) y destino las coordenadas del punto indicado por el usuario. De esta forma las coordenadas de todos los puntos del bloque toman los valores correspondientes a su nueva posición dentro del fichero.
* Si el fichero a insertar es cualquier archivo de dibujo de DigiNG, el usuario ha de especificar como punto de inserción el punto de coordenadas \(0, 0, 0\) de su archivo de trabajo. En este caso, los dos ficheros han de estar en el mismo sistema de coordenadas para que el proceso de inserción sea posible.

## Observaciones

Los ficheros de dibujo \(BIN\) se refieren a cualquier archivo DigiNG, o a los creados por el usuario con las órdenes [BLOQUE](BLOQUE.html) y [BLOQUE\_2P](BLOQUE_2P.html).

El fichero, sea del tipo que sea, se insertará con un factor de escala igual al valor de la escala activa \([ESC\_ACT](ESC_ACT.html)\).

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Bloques/Insertar un bloque orientado a norte... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html) |

