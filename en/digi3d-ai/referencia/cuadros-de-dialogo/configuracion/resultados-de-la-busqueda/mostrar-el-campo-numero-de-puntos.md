# Shows the Number of Points field
<!-- id: mostrar-el-campo-numero-de-puntos -->
<!-- origen: bbfdd3f5af6ce50b32785d5eb48fd579bb53c7c9 -->

Specifies whether Search results panes display the **Number of points** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Number of points field is displayed in the pane.
* **No**. The Number of points field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarNúmeroPuntos` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
