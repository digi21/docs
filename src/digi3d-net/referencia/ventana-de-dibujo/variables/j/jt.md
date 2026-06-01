# JT

Cambia la justificación del texto al insertarlo en el dibujo.

## Parámetros

| Valor | Índice que se mostrará en la ventana fotogramétrica |
| :--- | :--- |
| 0 | Sitúa el punto de inserción al SO del texto |
| 1 | Sitúa al punto de inserción al O del texto |
| 2 | Sitúa al punto de inserción al NO del texto |
| 3 | Sitúa al punto de inserción al N del texto |
| 4 | Sitúa al punto de inserción al NE del texto |
| 5 | Sitúa al punto de inserción al E del texto |
| 6 | Sitúa al punto de inserción al SE del texto |
| 7 | Sitúa al punto de inserción al S del texto |
| 8 | Sitúa al punto de inserción al Centro del texto |

### Ejemplos

`JT=3`

Sitúa el punto de inserción al Norte del texto

`JT=?`

Muestra el valor actual del punto de inserción del texto

## Observaciones

Con esta orden se puede definir el punto de enganche del texto para poder insertarlo con más precisión.

Debemos tener en cuenta que para fuentes _TrueType_, las justificaciones 1, 5 y 8 se comportan como 0, 6 y 7 respectivamente.

## Características de la orden

| Tipo de orden | [Variable real](jt.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Justificación de texto |
| Barra de herramientas en la que aparece la orden | Textos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

