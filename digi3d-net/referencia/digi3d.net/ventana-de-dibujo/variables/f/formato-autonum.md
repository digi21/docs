# FORMATO\_AUTONUM

Permite especificar el formato de la cadena de texto a dibujar cuando se utiliza la orden [AUTONUM](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/f/AUTONUM.html).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | %d | Si |

### Ejemplos

`AUTONUM=1`, con `FORMATO_AUTONUM="%d"`

DigiNG iría insertando los siguientes textos:

1

2

3

`AUTONUM=1`, con `FORMATO_AUTONUM="%5d"`

En este caso se ha modificado el ancho del texto, para que ponga por ejemplo " 1" en vez de "1". DigiNG iría insertando los siguientes textos:

```text
1

2

3
```

`AUTONUM=1`, con `FORMATO_AUTONUM="%05d"`

En este caso se van a añadir ceros a la izquierda del número a la vez de ha modificarse el ancho del texto, para que ponga por ejemplo "00001" en vez de "1". DigiNG iría insertando los siguientes textos:

00001

00002

00003

AUTONUM=1, con FORMATO\_AUTONUM="PK %05d de P11"

PK 00001 de P11

PK 00002 de P11

PK 00003 de P11

## Observaciones

Al ejecutar la orden el programa muestra el valor por defecto, que es "%d" \(Inserta el número en esa posición\).

## Características de la orden

| Tipo de orden | [Orden interactiva](formato-autonum.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/f/REPITE.html) |

