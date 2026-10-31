# Show the Zmax field
<!-- id: mostrar-el-campo-zmax -->
<!-- origen: 72462eb8b26ee53c967b6808e56182a9449dd080 -->

Specifies whether Search results panes display the **Zmax** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Zmax field is displayed in the pane.
* **No**. The Zmax field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarZmax` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
