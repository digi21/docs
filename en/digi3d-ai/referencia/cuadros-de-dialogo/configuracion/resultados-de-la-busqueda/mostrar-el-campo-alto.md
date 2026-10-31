# Show the Height field
<!-- id: mostrar-el-campo-alto -->
<!-- origen: 8da8a9099fd5588f05a7b97cc13370b895d1359e -->

Specifies whether Search results panes display the **Height** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Height field is displayed in the pane.
* **No**. The Height field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarAlto` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
