# Show the Perimeter field
<!-- id: mostrar-el-campo-perimetro -->
<!-- origen: c33a7dad86e9482985fad283e3deecd771595b84 -->

Specifies whether Search results panes display the **Perimeter** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Perimeter field is displayed in the pane.
* **No**. The Perimeter field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarPerímetro` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
