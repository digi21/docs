# ESCALAR\_VELOCIDAD

Permite que se haga un escalado de la velocidad de las manivelas en función del zoom de visualización.

## Parámetros

Esta orden no admite parámetros.

## Observaciones

Esta opción ha estado activada siempre por defecto, pero se han detectado casos \(equipos con manivelas de pocos pulsos\) en los que al dibujar en modo continuo con zooms alejados las líneas se almacenaban "escalonadas" debido a la poca precisión del codificador. Activando este flag, el equipo se mueve a la misma velocidad independientemente del factor de zoom, por lo que desaparece ese efecto de escalonado en las líneas.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [VELOCIDAD](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad.md) |
| Nombre interno | {FD1A17B2-F83C-450b-B583-1CC3F6322467} |

