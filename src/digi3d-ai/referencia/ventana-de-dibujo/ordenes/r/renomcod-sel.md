# RENOMCOD\_SEL
<!-- id: renomcod-sel -->

Cambia el código correspondiente otro código a las entidades seleccionadas.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código origen | Si |
| 2 | Código destino | Si |

## Observaciones

Si no indicas parámetros, la orden muestra un cuadro de diálogo para introducir el código origen y el código destino. Indica los dos parámetros o ninguno: con un solo parámetro, la orden emite un sonido de error y termina.

La orden admite selección simple y selección múltiple. En cada entidad seleccionada del modelo actual que tiene el código origen, la orden sustituye ese código por el código destino. El código destino admite los comodines `*` y `?`, que conservan los caracteres correspondientes del código origen.

La orden solo repite automáticamente cuando indicas los parámetros.

## Características de la orden

| Tipo de orden | [Orden interactiva](renomcod-sel.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Renombrar un código de entidades seleccionadas... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md)<br>[RENOMCOD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-r.md) |
| Nombre interno | {BB0F09E4-995F-4B4F-9B87-EDE43791C8B6} |
