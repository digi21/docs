# Show the Offset field
<!-- id: mostrar-el-campo-offset -->
<!-- origen: 5dc00e9d48c505c69d2535d49ad69464758b8531 -->

Specifies whether Search results panes display the **Offset** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Offset field is displayed in the pane.
* **No**. The Offset field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarOffsetEntidad` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
