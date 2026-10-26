# EJECUTA\_ORDEN\_PASANDOLE\_ULTIMA\_GEOMETRIA
<!-- id: ejecuta-orden-pasandole-ultima-geometria -->

Permite ejecutar desde macroinstrucciones y órdenes asignadas a pulsaciones de teclas una orden que espera la selección de una geometría.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Orden a ejecutar | No |

## Observaciones

La orden ejecuta la orden indicada en el parámetro. Si la orden indicada espera la selección de una geometría, EJECUTA\_ORDEN\_PASANDOLE\_ULTIMA\_GEOMETRIA ejecuta a continuación [SELECCIONA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md), que pasa a la orden indicada la última geometría visible del archivo de dibujo.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [SELECCIONA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md) |
| Nombre interno | {3EABA728-5DEA-4E67-A970-37A7789970B5} |
