# CAMB\_MAXPUNTOS

Divide las entidades lineales, con un número de vértices superior al especificado, en varios tramos con menor número de vértices.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Códigos de las líneas a dividir. Cada código puede ser `#etiqueta` para indicar todos los códigos con esa etiqueta | Si |

Sin parámetros, la orden solicita que selecciones una línea. Con parámetros, la orden divide sin pedir datos todas las líneas visibles, no borradas y dentro de la zona de interés que tengan alguno de los códigos indicados.

## Observaciones

El número máximo de vértices para entidades lineales queda determinado por el valor de [MAXPUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md), este valor deberá estar definido antes de ejecutar la orden _CAMB\_MAXPUNTOS_.

Bien podemos ejecutar CAMB\_MAXPUNTOS sobre una determinada entidad o sobre todas las entidades que tengan un determinado código.

### Ejemplo

MAXPUNTOS=500

CAMB\_MAXPUNTOS=020126

Dividirá todas aquellas entidades lineales cuyo código sea 020126, en tramos que tengan 500 vértices cada uno. Cada tramo empieza en el último vértice del tramo anterior. El último tramo puede tener menos vértices.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-maxpuntos.md) sin parámetros; [orden inmediata](camb-maxpuntos.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | Si, cuando se ejecuta sin parámetros |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [MAXPUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) — número máximo de puntos de un tipo de entidad<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {68887B83-3512-412c-8100-B2F134A73248} |

## Vídeo

