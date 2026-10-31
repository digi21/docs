# Show the Index field
<!-- id: mostrar-el-campo-indice -->
<!-- origen: bf18f8ff34dc4d83685607f912835ffc16652e52 -->

Specifies whether Search results panes display the **Index** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Index field is displayed in the pane.
* **No**. The Index field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarÍndiceEntidad` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
