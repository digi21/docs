# ESC_ACT
<!-- id: esc-act -->

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

El programa te solicita en la barra de mensajes que introduzcas el factor de escala y propone los tres factores actuales (X, Y y Z). Puedes escribir uno, dos o tres factores, con el mismo significado que los parámetros de la orden ESC_ACT, o digitalizar dos puntos en la ventana de dibujo. Si digitalizas dos puntos, el programa asignará la distancia entre esos puntos a los factores de escala de los tres ejes.

## Observaciones

Este factor se aplica a los puntos que crean órdenes como [PUNTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto.md) y a los bloques que se insertan con [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md). Por defecto tiene el valor 1 en los tres ejes.

## Ejemplos

Ejecuta la orden para asignar como factor de escala el valor 3:

```
ESC_ACT=3
```

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/ESC_ACT.mp4" type="video/mp4"></video>

## Características de la orden

| Tipo de variable                                 | [Real](../../../ordenes/variables/variables-reales.md)                       |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                           |
| Opción del menú donde aparece la orden           | Inmediato/Escala activa                                                      |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                   |
| Implementación | Nativa |
| Variables relacionadas                           | No tiene variables relacionadas                                              |
| Nombre interno | {EDA07B84-E126-4319-993D-01BF5026C11D} |
