# Shows the Number of Holes field
<!-- id: mostrar-el-campo-numero-de-huecos -->
<!-- origen: cd3c65ff94b57affbc122d392eb32edacd76e8ce -->

Specifies whether Search results panes display the **Number of holes** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Number of holes field is displayed in the pane.
* **No**. The Number of holes field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarNúmeroHuecos` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
