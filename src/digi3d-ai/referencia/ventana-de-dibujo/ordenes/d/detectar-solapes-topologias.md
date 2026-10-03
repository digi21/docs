# DETECTAR\_SOLAPES\_TOPOLOGIAS

Marca como error solapes entre polígonos de una topología contra las seleccionadas en un listado de topologías cargadas.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Topología cuyos polígonos se comprueban | Si |
| 2 y siguientes | Topologías contra las que se comprueban | Si |

## Observaciones

Si no hay ninguna topología cargada, la orden muestra un mensaje de error y termina.

Si indicas dos o más parámetros, la orden compara la primera topología contra las demás. Si la primera o la segunda topología no existen, la orden emite un sonido de error y termina.

Si indicas menos de dos parámetros, la orden muestra un cuadro de diálogo para seleccionar la topología a comprobar y las topologías contra las que se compara.

La orden crea una tarea de error cuando un polígono o hueco de la primera topología solapa con uno de otra topología o está incluido en él.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-solapes-topologias.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Detectar solapes entre topologías/De una topología contra las seleccionadas... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {FB282A48-F830-47DF-BA0E-014EE4F75290} |
