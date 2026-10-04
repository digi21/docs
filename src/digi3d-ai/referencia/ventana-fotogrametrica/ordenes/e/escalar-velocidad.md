# ESCALAR\_VELOCIDAD
<!-- id: escalar-velocidad -->

Activa o desactiva el escalado de la velocidad de las manivelas en función del zoom de visualización.

## Parámetros

| Parámetro | Comportamiento de la orden |
| :--- | :--- |
| Sin parámetro | Alterna: activa el escalado si está desactivado y lo desactiva si está activado |
| 0 | Desactiva el escalado |
| Distinto de 0 | Activa el escalado |

### Ejemplo:

`ESCALAR_VELOCIDAD=0`

## Observaciones

Con el escalado activado, el desplazamiento que produce cada pulso de las manivelas se divide por el factor de zoom: el cursor se mueve en pantalla a la misma velocidad con cualquier zoom. Con el escalado desactivado, cada pulso desplaza siempre la misma distancia en el modelo, sea cual sea el zoom.

El escalado está activado por defecto en cada ventana fotogramétrica que se abre. Se han detectado casos \(equipos con manivelas de pocos pulsos\) en los que al dibujar en modo continuo con zooms alejados las líneas se almacenaban "escalonadas" debido a la poca precisión del codificador. Desactivando el escalado desaparece ese efecto de escalonado en las líneas.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Velocidades/Escalar según zoom |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [VELOCIDAD](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad.md) |
| Nombre interno | {FD1A17B2-F83C-450b-B583-1CC3F6322467} |

