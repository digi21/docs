# Show the Zmin field
<!-- id: mostrar-el-campo-zmin -->
<!-- origen: 731910e161fd2e115c68ad9ecb0937286c0dbcef -->

Specifies whether Search results panes display the **Zmin** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Zmin field is displayed in the pane.
* **No**. The Zmin field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarZmin` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
