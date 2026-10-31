# SELECT\_EVERYTHING\_CURSOR
<!-- id: selecciona-todo-en-cursor -->
<!-- origen: 7185d2fa263187de489fe922410ee0b52ce09c3d -->

Select all entities intersecting the cursor with one click.

## Parameters

Does not accept parameters.

## Notes

A command accepting multiple selection must already be running.

Press the data or snap button over the entities. Select all entities passing within 3 pixels plus the cursor size of the clicked point. If none are found, sound the error tone.

- If [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) is disabled, send entities to the active command and end.
- If SEE is enabled, mark entities and allow more to be added with further clicks. Press `Esc` to remove the last added entity and the spacebar to send the selection to the active command.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select all the entities intersecting the cursor |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) — user confirmation of the snap selection |
| Related commands | [SELECT\_LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-linea.md) |
| Internal name | {2FA4CFE6-21C1-4497-B6FE-31559327539F} |
