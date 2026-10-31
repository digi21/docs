# SYNC\_ZOOMS
<!-- id: sincronizar-zooms -->
<!-- origen: 9a54f9a44cac5440b0784dab14522b649730394e -->

Synchronizes the zoom of multiple open stereoscopic views. With synchronization enabled, every zoom change applies to all open views simultaneously.

## Parameters

| Parameter | Command behavior |
| :--- | :--- |
| No parameter | Toggles synchronization on or off |
| 0 | Disables synchronization |
| Nonzero | Enables synchronization |

### Example:

`SYNC_ZOOMS=1`

## Notes

Enabling synchronization applies the active view's zoom factor to all views.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Multiple views/Synchronize Zooms |
| Toolbar | View synchronization |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [LOCK_IMAGES](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/p/paralizar.md)<br>[SYNC\_VIEWS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-vistas.md) |
| Internal name | {D3984B08-4B0C-4033-A01D-DA4148584EC9} |
