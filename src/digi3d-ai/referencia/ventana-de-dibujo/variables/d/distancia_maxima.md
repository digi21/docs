# DISTANCIA\_MÁXIMA
<!-- id: distancia-maxima -->

Establece una restricción de longitud máxima de segmento para la orden línea.

Cuando la restricción está activa, la longitud de los siguientes segmentos que dibujes no superará el valor asignado a esta variable.

## Parámetros

Esta orden se puede ejecutar con un parámetro o sin parámetros.

### Con un parámetro

| Número de parámetro | Descripción                                                                                         | Valores     | Opcional |
| ------------------- | --------------------------------------------------------------------------------------------------- | ----------- | -------- |
| 1                   | Distancia máxima que se asignará, o 0 para deshabilitar la restricción de longitud máxima de segmento | Número real | Sí       |

### Sin parámetros

Si no especificas ningún parámetro, el programa te solicitará que introduzcas en la barra de mensajes la longitud máxima de segmento o que digitalices dos puntos para que el programa asigne a la longitud máxima de segmento la distancia entre esos puntos.

Si introduces un 0, se deshabilitará la restricción de longitud máxima de segmento.

`DISTANCIA_MAXIMA=?` muestra el valor actual en un globo.

## Observaciones

La longitud del segmento se mide en planimetría (sin tener en cuenta la Z). Si el último segmento supera la distancia máxima, la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) acorta el segmento en su misma dirección hasta esa distancia.

El valor por defecto es 0 (sin restricción).

## Ejemplos

Ejecuta la orden para indicar que el siguiente segmento de la línea debe tener como máximo 12.5 metros:

```
DISTANCIA_MAXIMA=12.5
```



## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/distancia_maxima.mp4" type="video/mp4"></video>

## Características de la orden

| Tipo de variable                                 | [Real](../../../ordenes/variables/variables-reales.md)                        |
| ------------------------------------------------ | ----------------------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                            |
| Opción del menú donde aparece la orden           | Dibujar/Restricciones de polilíneas/Perímetro máximo del siguiente segmento |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                    |
| Implementación | Nativa |
| Variables relacionadas                           | No tiene variables relacionadas                                               |
| Nombre interno                                   | {C3276631-6A15-4AFF-B013-924EF597AC44}                                        |
