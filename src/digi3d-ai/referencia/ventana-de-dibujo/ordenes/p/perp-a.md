# PERP\_A

Dibuja segmentos perpendiculares a una entidad dada.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo de asignación de cotas a la línea perpendicular | 0 ó 1 | Si |

## Observaciones

Si la orden se ejecuta sin pasarle ningún parámetro, la línea que se genera tendrá la cota del punto desde el que se traza la perpendicular. Si a la orden se le pasa como parámetro la unidad, es decir, se ejecuta del siguiente modo:

PERP\_A=1

El programa asigna a la línea perpendicular las siguientes cotas:

* En el extremo correspondiente al punto desde el que se traza la perpendicular, se asigna la cota de dicho punto.
* En el otro extremo se asigna la cota correspondiente a la entidad hacia la que se traza la perpendicular.

## Características de la orden

| Tipo de orden | [Orden interactiva](perp-a.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {E2B84309-4C10-49aa-A11E-2C09AC3FFD16} |

