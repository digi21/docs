# UNIR\_COD
<!-- id: unir-cod -->

Une polilíneas que comparten un código y que corta una línea de selección.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código de las polilíneas a unir | — | Si |

## Observaciones

Si no se indica el código, se solicita mediante un cuadro de diálogo.

Digitaliza cuatro puntos para trazar la línea de selección. La orden busca las líneas visibles del código que corta esa línea y las une dos a dos por el extremo más cercano al corte, siempre que la Z de los dos extremos coincida. Al menos una de las dos líneas tiene que pertenecer al archivo de dibujo activo; si solo pertenece una, la orden mueve su extremo al extremo de la otra. La orden sigue activa para trazar otra línea de selección.

Si el control de calidad descarta la línea unida, se conservan las dos líneas originales y no se añade la unión. Si una de las dos líneas no pertenece al modelo actual y el control de calidad descarta la línea modificada, la línea original se conserva sin cambios. Cada par de líneas se trata de forma independiente.

## Características de la orden

| Tipo de orden | [Orden interactiva](unir-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Unir polilíneas por ventana y código |
| Barra de herramientas en la que aparece la orden | Unir |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [UNIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir.md)<br>[UNIR\_LINEAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas.md) |
| Nombre interno | {FB78D878-2695-4CC6-A300-22415BB52172} |
