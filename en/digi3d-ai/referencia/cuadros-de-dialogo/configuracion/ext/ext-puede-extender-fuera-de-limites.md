# EXT can extend out of bounds
<!-- id: ext-puede-extender-fuera-de-limites -->
<!-- origen: 62435221e25bcae1c9369f1566a4fb65006a412c -->

Specifies whether the [SPR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext.md) command can extend a line beyond the endpoints of the selected line.

## Possible values

* **Yes**. The command treats the first and last segments of the selected line as infinite.
* **No** \(default\). The command only considers the segments of the selected line as they are.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Ext` |
| :--- | :--- |
| Value | `ExtPuedeExtenderFueraLimiteLineas` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
