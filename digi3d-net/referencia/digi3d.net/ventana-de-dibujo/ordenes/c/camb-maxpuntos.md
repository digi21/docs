# CAMB\_MAXPUNTOS

Divide las entidades lineales, con un número de vértices superior al especificado, en varios tramos con menor número de vértices.

## Parámetros

No admite parámetros.

## Observaciones

El número máximo de vértices para entidades lineales queda determinado por el valor de [MAXPUNTOS](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/MAXPUNTOS.html), este valor deberá estar definido antes de ejecutar la orden _CAMB\_MAXPUNTOS_.

Bien podemos ejecutar CAMB\_MAXPUNTOS sobre una determinada entidad o sobre todas las entidades que tengan un determinado código.

### Ejemplo

MAXPUNTOS=500

CAMB\_MAXPUNTOS=020126

Dividirá todas aquellas entidades lineales cuyo código sea 020126, en tramos que tengan 500 vértices cada uno

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-maxpuntos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/REPITE.html), [MAXPUNTOS](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/MAXPUNTOS.html) |

## Vídeo

