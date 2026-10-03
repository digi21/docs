# RENOMCOD

Cambia el código correspondiente a una serie de entidades por otro código, ya sea el activo o el código que se especifique en la llamada a la orden.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código antiguo | Código | Si |
| 2 | Código nuevo | Código | Si |
| 3 | [Tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) | Cadena de letras. En esta orden solo tienen efecto l \(líneas\), p \(puntos\), t \(textos\) y \* \(líneas, puntos y textos\) | Si |

## Observaciones

Si no indicas los tres parámetros, la orden muestra un cuadro de diálogo.

La orden trata las líneas, los puntos y los textos visibles y dentro de la zona de interés. Los complejos y los polígonos no se modifican. Las entidades borradas solo se tratan si la variable [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) está activada.

## Características de la orden

| Tipo de orden | [Orden interactiva](renomcod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Renombrar el código de las entidades ... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {9B7F40E2-E8FD-4e5b-8186-E5EB07294B2A} |

