# Shows the Number of Codes field
<!-- id: mostrar-el-campo-numero-de-codigos -->
<!-- origen: 4aa7081655b0035ff0183864a520d2af043e558f -->

Specifies whether Search results panes display the **Number of codes** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Number of codes field is displayed in the pane.
* **No**. The Number of codes field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarNúmeroCódigos` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
