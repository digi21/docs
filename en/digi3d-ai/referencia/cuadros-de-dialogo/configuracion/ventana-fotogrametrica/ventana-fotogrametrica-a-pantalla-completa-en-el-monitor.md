# Full-screen photogrammetric window on monitor
<!-- id: ventana-fotogrametrica-a-pantalla-completa-en-el-monitor -->
<!-- origen: 16942a7a7ee500d5a5a706653fded1775934642b -->

Specifies the monitor on which the photogrammetric window is shown full screen.

The photogrammetric window fills the chosen monitor, without title bar, menus, toolbars, status bar or panels. Full-screen mode is intended for 3D glasses or 3D televisions in side-by-side (SBS) or top-and-bottom mode. Selecting a monitor requires independent photogrammetric windows. Restart Digi3D when switching between **None (normal window)** and a monitor.

The [Full screen](../../../ventana-fotogrametrica/pantalla-completa.md) page describes how to turn it on, how to switch between full screen and the normal window, and how to close the window.

## Possible values

* **None (normal window)**: the photogrammetric window is not shown full screen.
* One item for each active monitor, with its name: the photogrammetric window is shown full screen on that monitor.
* **Monitor not connected**: the list shows this item when the monitor saved in the configuration is not connected. Until you choose another value, Digi3D.AI keeps the saved monitor.

## Requirements

* With a monitor chosen, Digi3D.AI uses independent photogrammetric windows even if the photogrammetric window is configured to appear inside the main window.
* When you switch between **None (normal window)** and a monitor, the **Configuration** dialog forces Digi3D.AI to restart. Switching from one monitor to another does not require a restart.
* The layout chosen in the [Stereoscopy](estereoscopia.md) list must match the display mode of the chosen monitor.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Texts` |
| Value | `MonitorVentanaFotogrametricaPantallaCompleta` |
| Default value | (empty) |

The stored data is the device path of the monitor (*monitorDevicePath*) that Windows assigns, and it does not change when the computer restarts. The **Configuration** dialog writes this value when you choose a monitor; there is no example path that works on another computer. An empty value is equivalent to **None (normal window)**.

Run the following SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog to set `MonitorVentanaFotogrametricaPantallaCompleta` to an empty string, whether or not the row exists, and restart Digi3D.AI. An empty string is equivalent to **None (normal window)**:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'MonitorVentanaFotogrametricaPantallaCompleta' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'MonitorVentanaFotogrametricaPantallaCompleta', '' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
