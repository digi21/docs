# Show the Length field
<!-- id: mostrar-el-campo-largo -->
<!-- origen: 12747104560ca2ea4d97d55f049544d09ddf3bc1 -->

Specifies whether Search results panes display the **Length** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Length field is displayed in the pane.
* **No**. The Length field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarLargo` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
