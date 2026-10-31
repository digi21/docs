# Show the Ymin field
<!-- id: mostrar-el-campo-ymin -->
<!-- origen: 3f38da519da327ddb062720c0b62a587ce7a06f4 -->

Specifies whether Search results panes display the **Ymin** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Ymin field is displayed in the pane.
* **No**. The Ymin field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarYmin` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
