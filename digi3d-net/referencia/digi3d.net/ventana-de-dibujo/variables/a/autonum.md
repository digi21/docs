# AUTONUM

Establece como _factor de auto numeración_.

## Parámetros

Esta orden requiere que se introduzca un parámetro.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | No |

## Observaciones

Si no se asigna ningún valor de auto numeración, éste tiene por defecto el valor 0.

Si tenemos un valor distinto de 0 y ejecutamos la orden [TEXTO ](../../ordenes/t/texto.md)sin pasarle ningún parámetro, ésta asumirá de manera automática como texto a insertar el valor actual de auto numeración. Una vez digitalizado el texto, auto incrementará automáticamente el valor de esta variable de auto numeración.

## Ejemplos

Si queremos digitalizar los textos 1, 2, 3, 4, 5,... ejecutaremos las siguientes órdenes:

```text
AUTONUM=1
TEXTO
```

Si queremos volver a comenzar desde el número 1 por ejemplo, cuando la orden _TEXTO_ nos solicite un número teclearemos manualmente el valor 1 y el contador se reiniciará en ese valor.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/AUTONUM.mp4" %}

## Características de la orden

| Tipo de variable | [Numérica](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [FORMATO\_AUTONUM](../f/formato-autonum.md) |
| Nombre interno | {3C350BC2-A34D-4dea-ADB7-4DDBFA9E1475} |



