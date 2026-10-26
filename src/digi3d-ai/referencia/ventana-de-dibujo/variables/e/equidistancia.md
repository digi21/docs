# EQUIDISTANCIA
<!-- id: equidistancia -->

Establece el valor de la equidistancia de curvas de nivel.

## Parámetros

Esta orden se puede ejecutar con un parámetro o sin parámetros.

### Con un parámetro

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Valor de equidistancia a asignar | Si |
|  |  |  |  |

### Sin parámetros

El programa te solicitará en la barra de mensajes que introduzcas la equidistancia. Puedes introducir un valor con el teclado o digitalizar dos puntos en la ventana de dibujo. Si digitalizas dos puntos, el programa asignará a la equidistancia la distancia entre esos puntos.

## Observaciones

El valor por defecto de esta variable es el indicado en el campo **Equidistancia** en el grupo de parámetros **Registro** de la pestaña [Archivo de dibujo](/digi3d-ai/referencia/cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md).

## Ejemplos

Ejecuta la orden para asignar como equidistancia 5 unidades de longitud de trabajo del dibujo:

```text
EQUIDISTANCIA=5
```

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/EQUIDISTANCIA.mp4" caption="" type="video/mp4"></video>

## Características de la orden

| Tipo de variable | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Parámetros de interpolación/Equidistancia |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {2E74D834-9A0E-4832-B759-B5C7CE794683} |

