# RAYAR

Raya el interior de una entidad superficial de contorno cerrado.

## Parámetros

Si no se realiza ninguna asignación previa de [AA](AA.html) y [DA](DA.html), el sistema toma por defecto los valores cero para estos parámetros.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa principal \([DA](DA.html)\) | Número real | Si |
| 2 | Ángulo activo \([AA](AA.html)\) | Número real | Si |
| 3 | Código activo \([COD](COD.html)\) | Código puntual | Si |

## Observaciones

La dirección de las rayas está condicionada por el ángulo activo, y se hayan separadas una distancia igual al primer valor de la distancia activa.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Más/Rellenar polígono con rayas paralelas |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](AA.html), [DA](DA.html), [REPITE](REPITE.html) |

