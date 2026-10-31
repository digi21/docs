# Shows field "Closed"
<!-- id: mostrar-el-campo-cerrado -->
<!-- origen: 8d59fadaeb6b755ef6f5a7a263cf6d0f6db089a2 -->

Specifies whether Search results panes display the **Closed** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Closed field is displayed in the pane.
* **No**. The Closed field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarCerrado` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
