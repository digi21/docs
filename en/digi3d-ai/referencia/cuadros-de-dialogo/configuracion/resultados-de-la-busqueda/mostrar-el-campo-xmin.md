# Show the Xmin field
<!-- id: mostrar-el-campo-xmin -->
<!-- origen: 9f3ab8537b8208930401a186f1ecefbc91e79451 -->

Specifies whether Search results panes display the **Xmin** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Xmin field is displayed in the pane.
* **No**. The Xmin field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarXmin` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
