# Show the Xmax field
<!-- id: mostrar-el-campo-xmax -->
<!-- origen: e92c645aacc846e1d6dcdadc61e326163d49f4c8 -->

Specifies whether Search results panes display the **Xmax** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Xmax field is displayed in the pane.
* **No**. The Xmax field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarXmax` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
