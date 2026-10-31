# 2D closed
<!-- id: cerrado-2d -->
<!-- origen: ed20f1044e486d3e8203835c370cb9240c7032f1 -->

Specifies whether Search results panes display the **2D closed** field.

> This change requires restarting Digi3D.AI.

## Possible values

* **Yes**. The 2D closed field is displayed in the pane.
* **No**. The 2D closed field is not displayed in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Value | `MostrarCerrado2D` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
