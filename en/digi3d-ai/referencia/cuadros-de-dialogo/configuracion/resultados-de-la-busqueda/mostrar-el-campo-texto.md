# Show the Text field
<!-- id: mostrar-el-campo-texto -->
<!-- origen: de1004c31dcbc7f658e96f19a2ba4393decd8649 -->

Specifies whether Search results panes display the **Text** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The Text field is displayed in the pane.
* **No**. The Text field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarTexto` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
