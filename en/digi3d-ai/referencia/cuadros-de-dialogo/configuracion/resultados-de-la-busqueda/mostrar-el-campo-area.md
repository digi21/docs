# Show the Area field
<!-- id: mostrar-el-campo-area -->
<!-- origen: 88bef58df183b7976f18b4d352c2569850e81f06 -->

Specifies whether Search results panes display the **Area** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Area field is displayed in the pane.
* **No**. The Area field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarÁrea` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
