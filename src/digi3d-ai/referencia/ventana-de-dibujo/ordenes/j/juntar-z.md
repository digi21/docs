# JUNTAR\_Z

Hace converger las coordenadas Z de varias líneas hacia un punto que selecciona el usuario.

![ALINEAR, JUNTAR, JUNTAR_Z, JUNTAR_VERTICES_CERCANOS, ELIMINAR_SEGMENTOS_CORTOS, ASIGNAR_Z_MAXIMA_VERTICES_NODO_TOL, RET y AJUSTA_AREA: posición de los vértices antes y después de cada orden](../../../../../images/vertices-tolerancia.svg)

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Tamaño del cursor | Número real | Si |

## Observaciones

La orden _JUNTAR\_Z_, no modifica las coordenadas X e Y de las líneas, únicamente las coordenadas Z de los puntos que las componen. Los vértices a los que desees cambiar la coordenada Z, deberán quedar incluidos dentro del rango de búsqueda del ratón.

## Características de la orden

| Tipo de orden | [Orden interactiva](juntar-z.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {A8120372-9CF4-4ff9-A6DE-035E717C746A} |

