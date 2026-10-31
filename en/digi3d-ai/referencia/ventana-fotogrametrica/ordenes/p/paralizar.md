# LOCK_IMAGES
<!-- id: paralizar -->
<!-- origen: 893cbbdd88334f05f8ce22860e67adccb7423e6f -->

LOCK_IMAGES freezes one or more of the stereoscopic views open when you run the command.

## Parameters

| Parameter | Command behavior |
| :--- | :--- |
| No parameter | Toggles the view between frozen and unfrozen |
| 0 | Unfreezes the view |
| Nonzero | Freezes the view |

### Example:

`LOCK_IMAGES=1`

## Notes

Click the title bar of the view you want to freeze to activate it before running the command.
LOCK_IMAGES is incompatible with [SYNC_VIEWS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-vistas.md): the two commands **cannot** be enabled at the same time.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Multiple views/Freeze View |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SYNC\_VIEWS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-vistas.md)<br>[SYNC\_ZOOMS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-zooms.md) |
| Internal name | {C0CF2C67-9809-417c-9691-58FBB294626C} |
