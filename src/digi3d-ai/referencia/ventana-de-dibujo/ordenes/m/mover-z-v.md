# MOVER\_Z\_V
<!-- id: mover-z-v -->

Permite cambiar la cota de entidades situadas dentro de una entidad cerrada.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | [Tipos de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) a los que se cambia la cota, como una cadena de letras. Por ejemplo, `PT`. En esta orden `B` no tiene efecto | Sí. Si no se especifica, la orden muestra un cuadro de diálogo para elegir los tipos al seleccionar el límite |

## Observaciones

Antes de ejecutar la orden debes dibujar una línea cerrada que servirá de límite.

1. Selecciona la línea que hace de límite.
2. Digitaliza el punto origen.
3. Digitaliza el punto destino.

La orden suma la diferencia de Z entre el punto destino y el punto origen a las entidades visibles de los tipos elegidos que quedan dentro del límite, y muestra cuántas entidades ha modificado. Las entidades que cruzan el límite no se modifican.

## Características de la orden

| Tipo de orden | [Orden interactiva](mover-z-v.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [MOVER\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md) |
| Nombre interno | {B2D8B252-EC8E-4580-B938-24A3AED647D4} |

