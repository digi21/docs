# DETECTAR\_RECINTOS\_SIN\_VECINOS
<!-- id: detectar-recintos-sin-vecinos -->

Analiza los recintos topológicos de todas las topologías cargadas y marca como error los tramos que pertenecen a un único recinto topológico, salvo los tramos que tienen alguno de los códigos de límite indicados.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 y siguientes | Códigos de límite | Sí |

## Observaciones

La orden necesita al menos dos topologías cargadas. Con menos, muestra un mensaje de error y termina.

Si no indicas ningún código de límite, la orden muestra un cuadro de diálogo para seleccionarlos. Si no seleccionas ninguno, la orden termina.

Los códigos de límite admiten los comodines \* y ?.

La orden solo tiene en cuenta los recintos topológicos válidos.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Detectar recintos topológicos sin vecinos... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {BADFF305-9DA2-4E11-98EA-B0BD184B6111} |
