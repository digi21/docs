# Action when double clicking
<!-- id: accion-al-hacer-doble-clic-2 -->
<!-- origen: 62d752a0fbd47159417bcc71252c8160fa6ed3e4 -->

Specifies drawing window behavior when double-clicking an entity selected in the Search results pane.

## Possible values

* **Extended zoom of the entity**. The window zooms to fit the entity in the view.
* **Move the camera to the center of the entity**. The window moves the camera to the entity center without changing the zoom level.
* **Maintain in place**. The window does not change the view.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `AcciónAlHacerDobleClic` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
