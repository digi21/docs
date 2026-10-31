# Show the Rotation field
<!-- id: mostrar-el-campo-rotacion -->
<!-- origen: f9b8fcb2ba96b6d74946ba344dd891107702b52d -->

Specifies whether Search results panes display the **Rotation** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Rotation field is displayed in the pane.
* **No**. The Rotation field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarRotación` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
