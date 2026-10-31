# Show the Width field
<!-- id: mostrar-el-campo-ancho -->
<!-- origen: b7514a23471f42b0ce58c7777b5010b428b1886c -->

Specifies whether Search results panes display the **Width** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Width field is displayed in the pane.
* **No**. The Width field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarAncho` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
