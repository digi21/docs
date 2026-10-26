# CAMBIA\_BRILLO\_ÍNDICE
<!-- id: cambia-brillo-indice -->

Cambia el brillo de los dos índices a la vez o el de cada índice por separado.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| -4 | Restablece el brillo original del índice izquierdo |
| -3 | Disminuye el brillo de los dos índices a la vez |
| -2 | Disminuye el brillo del índice izquierdo |
| -1 | Aumenta el brillo del índice izquierdo |
| 0 | Restablece el brillo original de los dos índices |
| 1 | Aumenta el brillo del índice derecho |
| 2 | Disminuye el brillo del índice derecho |
| 3 | Aumenta el brillo de los dos índices |
| 4 | Restablece el brillo original del índice derecho |

### Ejemplo:

`CAMBIA_BRILLO_INDICE=0`

## Observaciones

La orden CAMBIA_BRILLO_ÍNDICE aumenta o disminuye el valor del brillo de los índices en pasos de 5 dentro de la escala de 0 a 255, incluidos ambos extremos.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Índices/Brillo/Izquierda/Derecha/Aclarar<br>Ventana fotogramétrica/Índices/Brillo/Izquierda/Derecha/Oscurecer<br>Ventana fotogramétrica/Índices/Brillo/Izquierda/Derecha/Establecer el brillo original<br>Ventana fotogramétrica/Índices/Brillo/Izquierda/Aclarar<br>Ventana fotogramétrica/Índices/Brillo/Izquierda/Oscurecer<br>Ventana fotogramétrica/Índices/Brillo/Izquierda/Establecer el brillo original<br>Ventana fotogramétrica/Índices/Brillo/Derecha/Aclarar<br>Ventana fotogramétrica/Índices/Brillo/Derecha/Oscurecer<br>Ventana fotogramétrica/Índices/Brillo/Derecha/Establecer el brillo original |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [COLOR\_ÍNDICE](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/c/color-indice.md) |
| Nombre interno | {E1F08BCD-AC59-473a-8D45-5A3C8386551C} |

