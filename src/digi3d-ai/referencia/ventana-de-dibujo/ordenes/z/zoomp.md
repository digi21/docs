# ZOOMP

Permite hacer un centrado del dibujo en el punto que escoja el operador.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Coordenada X | Si |
| 2 | Coordenada Y | Si |

## Observaciones

Sin parámetros, la orden pide que se digitalice el punto en el cual se quiere centrar la vista.

Con los dos parámetros, la orden centra la vista en el punto (X, Y), en unidades del sistema de coordenadas del dibujo, sin pedir ningún punto. Si solo indicas la X, la orden ignora el parámetro y pide el punto.

El factor de zoom no cambia.

### Ejemplo

`ZOOMP=450230.5 4479810.2`

## Características de la orden

| Tipo de orden | [Orden interactiva](zoomp.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Zooms/Centrar la vista en un punto digitalizado |
| Barra de herramientas en la que aparece la orden | Desplazamientos de ventana |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {06225501-1195-4b03-B53F-947B307BB745} |

