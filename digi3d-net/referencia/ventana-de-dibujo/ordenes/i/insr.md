# INSR

Permite insertar un bloque, almacenado en un fichero de dibujo, en una determinada posición del fichero de trabajo actual.

## Parámetros

No admite parámetros.

## Observaciones

En este caso, se puede establecer la rotación del bloque indicando, después del punto de inserción, un segundo punto de orientación. De este modo, quedará insertado en la dirección marcada por la recta que definen los dosp untos dados, el punto de inserción y el punto de orientación.

El fichero, sea del tipo que sea, se insertará con un factor de escala igual al valor de la escala activa \( [ESC\_ACT](ESC_ACT.html)\).

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Bloques/Insertar un bloque con dos puntos... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | [REPITE](REPITE.html), [AA](AA.html) |

