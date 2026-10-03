# DISTANCIA\_MÁXIMA

Establece una restricción de tamaño máximo de segmento para la orden línea.

Cuando está activo, los siguientes segmentos que se dibujen tendrán como máximo el valor asignado en esta variable.

## Parámetros

Esta orden se puede ejecutar con un parámetro o sin parámetros

### Con un parámetro

| Número de parámetro | Descripción                                                                                         | Valores     | Opcional |
| ------------------- | --------------------------------------------------------------------------------------------------- | ----------- | -------- |
| 1                   | Distancia máxima a asignar o 0 si se desea deshabilitar la restricción de tamaño máximo de segmento | Número real | Si       |

### Sin parámetros

Si no se especifica ningún parámetro, el programa solicitará que introduzcamos en la barra de mensajes el perímetro máximo de segmento, o que digitalicemos dos puntos para asignar la distancia entre ellos.

Si introducimos un 0, se deshabilitará la restricción de tamaño máximo de segmento.

`DISTANCIA_MAXIMA=?` muestra el valor actual en un globo.

## Observaciones

La longitud del segmento se mide en planimetría (sin tener en cuenta la Z). Si el último segmento supera la distancia máxima, la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) acorta el segmento en su misma dirección hasta esa distancia.

El valor por defecto es 0 (sin restricción).

## Ejemplos

Para indicar que el siguiente segmento de la línea debe tener como máximo 12.5 metros ejecutaremos la orden:

```
DISTANCIA_MAXIMA=12.5
```



## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/distancia_maxima.mp4" type="video/mp4"></video>

## Características de la orden

| Tipo de variable                                 | [Real](../../../ordenes/variables/variables-reales.md)                        |
| ------------------------------------------------ | ----------------------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                            |
| Opción del menú donde aparece la orden           | Inmediato/Restricciones de polilíneas/Perímetro máximo del siguiente segmento |
| Barra de herramientas en la que aparece la orden | Parámetros activos                                                            |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                    |
| Variables relacionadas                           | No tiene variables relacionadas                                               |
| Nombre interno                                   | {C3276631-6A15-4AFF-B013-924EF597AC44}                                        |
