# Show the Ymax field
<!-- id: mostrar-el-campo-ymax -->
<!-- origen: 085dc9d7f4e2aae11483cffe523b720c2ba35a81 -->

Specifies whether Search results panes display the **Ymax** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Ymax field is displayed in the pane.
* **No**. The Ymax field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarYmax` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
