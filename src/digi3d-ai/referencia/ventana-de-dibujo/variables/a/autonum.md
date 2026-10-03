# AUTONUM

Establece el _incremento de auto numeración_.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Incremento de auto numeración | Número entero, o **?** para consultar el valor actual en un globo | Si |

Si se ejecuta sin parámetros, la orden muestra un cuadro de diálogo para introducir el valor.

## Observaciones

El valor por defecto es 0, que desactiva la auto numeración.

Si tenemos un valor distinto de 0 y ejecutamos la orden [TEXTO](../../ordenes/t/texto.md) sin pasarle ningún parámetro, ésta propone como texto a insertar el último número insertado más el valor de esta variable, con el formato indicado en [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md). Al digitalizar el texto, el programa extrae el número del texto insertado y lo toma como último número insertado. El valor de esta variable no cambia.

La orden [AGREGA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrega.md) también utiliza esta variable para proponer el nombre del punto.

## Ejemplos

Si queremos digitalizar los textos 1, 2, 3, 4, 5,... ejecutaremos las siguientes órdenes:

```text
AUTONUM=1
TEXTO
```

Si queremos volver a comenzar desde el número 1 por ejemplo, cuando la orden _TEXTO_ nos solicite un número teclearemos manualmente el valor 1 y el contador se reiniciará en ese valor.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/AUTONUM.mp4" caption="" type="video/mp4"></video>

## Características de la orden

| Tipo de variable | [Numérica](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) |
| Nombre interno | {3C350BC2-A34D-4dea-ADB7-4DDBFA9E1475} |

