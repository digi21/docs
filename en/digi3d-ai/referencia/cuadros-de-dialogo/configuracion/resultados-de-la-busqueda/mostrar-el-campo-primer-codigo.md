# Shows the First Code field
<!-- id: mostrar-el-campo-primer-codigo -->
<!-- origen: 30567ced6d8fdbddb0bd98409cb12637863af7a7 -->

Specifies whether Search results panes display the **First code** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The First code field is displayed in the pane.
* **No**. The First code field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarPrimerCódigo` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
