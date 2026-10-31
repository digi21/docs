# SYNC\_VIEWS
<!-- id: sincronizar-vistas -->
<!-- origen: f1bcb610a5701a30507ff0e52e55e4fead59af1e -->

Synchronizes multiple open stereoscopic views. With synchronization enabled, cursor coordinates are synchronized in all views so they show the same area.

## Parameters

| Parameter | Command behavior |
| :--- | :--- |
| No parameter | Toggles synchronization on or off |
| 0 | Disables synchronization |
| Nonzero | Enables synchronization |

### Example:

`SYNC_VIEWS=1`

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Multiple views/Synchronize Views |
| Toolbar | View synchronization |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [LOCK_IMAGES](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/p/paralizar.md)<br>[SYNC\_ZOOMS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-zooms.md) |
| Internal name | {77951F58-D42F-4340-9866-7DAD40DB7F29} |
