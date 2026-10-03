# VER\_TOPOLOGIAS

Activa o desactiva la visualización de una topología así como cambia su orden.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre de la topología | Si |
| 2 | Visible (0/1) | Si |

## Observaciones

Sin parámetros, la orden muestra un cuadro de diálogo con las topologías cargadas. Marca las topologías que quieres ver y usa los botones de subir y bajar para cambiar su orden de visualización. Si no hay ninguna topología cargada, la orden muestra un aviso y termina.

Con parámetros, la orden no muestra el cuadro de diálogo: activa (`1`) o desactiva (`0`) la visualización de la topología indicada. Los dos parámetros van juntos; si solo indicas el nombre, la orden emite un sonido de error y no hace nada.

### Ejemplo

`VER_TOPOLOGIAS=parcelas 0`

## Características de la orden

| Tipo de orden | [Orden inmediata](ver-topologias.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {EA4A64CD-BD28-43B0-A499-C44500C57813} |
