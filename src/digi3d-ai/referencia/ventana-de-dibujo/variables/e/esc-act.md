# ESC_ACT

Establece el _factor de escala_ activo de puntos e inserción de bloques.

## Parámetros

Esta orden se puede ejecutar con parámetros o sin parámetros.

### Con parámetros

| Número de parámetro | Descripción    | Valores                    | Opcional |
| ------------------- | -------------- | -------------------------- | -------- |
| 1                   | Factor de escala en X, o en X, Y y Z si es el único parámetro | Número real, o **?** para consultar en un globo los tres factores | Si       |
| 2                   | Factor de escala en Y | Número real. Si se indican dos parámetros, el factor en Z es 1 | Si       |
| 3                   | Factor de escala en Z | Número real | Si       |

### Sin parámetros

El programa solicitará en la barra de mensajes que introduzcamos el factor de escala. Podemos introducir un valor con el teclado o podemos digitalizar dos puntos en la ventana de dibujo y se asignará la distancia entre ambos. El valor se asigna a los tres ejes.

## Observaciones

Este factor se aplica a los puntos que crean órdenes como [PUNTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto.md) y a los bloques que se insertan con [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md). Por defecto tiene el valor 1 en los tres ejes.

## Ejemplos

Para asignar como factor de escala el valor 3 ejecutaremos el comando:

```
ESC_ACT=3
```

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/ESC_ACT.mp4" type="video/mp4"></video>

## Características de la orden

| Tipo de variable                                 | [Real](../../../ordenes/variables/variables-reales.md)                       |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                           |
| Opción del menú donde aparece la orden           | _Esta orden no tiene asociada ninguna opción de menú_                        |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                   |
| Variables relacionadas                           | No tiene variables relacionadas                                              |
| Nombre interno | {EDA07B84-E126-4319-993D-01BF5026C11D} |
