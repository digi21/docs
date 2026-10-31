# CANCEL\_COMMANDS
<!-- id: anula-ordenes -->
<!-- origen: d215bda5967d7584fc2cf3bc37a8e154363ebca9 -->

Stop the current command and any commands it interrupted.

## Parameters

Does not accept parameters.

## Notes

If you are drawing a line with [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) and run _CANCEL\_COMMANDS_, the application stops LINE and discards the entity you were drawing.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Cancel all commands |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CANCEL\_REPEAT\_ACTIVE\_COMMAND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anula-repite-comando-activo.md)<br>[ESCAPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escape.md) |
| Internal name | {491B4A08-BC9C-467b-9866-6373C6F1BA01} |
