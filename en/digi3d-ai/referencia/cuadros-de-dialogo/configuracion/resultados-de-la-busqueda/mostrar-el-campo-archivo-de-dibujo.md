# Shows the Drawing File field
<!-- id: mostrar-el-campo-archivo-de-dibujo -->
<!-- origen: 4079fd58160a5f1eff9fb70fb3417f1e219d14ec -->

Specifies whether Search results panes display the **Drawing file** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Drawing file field is displayed in the pane.
* **No**. The Drawing file field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarArchivoDibujo` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
