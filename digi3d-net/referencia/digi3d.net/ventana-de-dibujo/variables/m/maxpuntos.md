# MAXPUNTOS

Establece el número máximo de puntos que tendrá un tipo de entidad.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |

### Ejemplos

MAXPUNTOS=2

Establece como número máximo de puntos 2

MAXPUNTOS=?

Muestra el valor actual del número máximo de puntos

## Observaciones

Cuando la entidad alcance el número máximo de puntos fijado por la orden _MAXPUNTOS_, la entidad se terminará automáticamente o se cerrará si está activada la orden [C](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/m/C.html).

Esta orden se desactiva cuando se camiba el código o cuando se introduce como número de puntos máximo igual a cero \(0\). Se puede cambiar el número de puntos máximo mediante la orden [CAMB\_MAXPUNTOS](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/m/CAMB_MAXPUNTOS.html).

## Características de la orden

| Tipo de orden | [Orden interactiva](maxpuntos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Restricciones de polilíneas/Establecer el número máximo de puntos de una línea |
| Barra de herramientas en la que aparece la orden | Restricciones de polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

