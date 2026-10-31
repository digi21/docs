# Allow adding more than one hole
<!-- id: permitir-anadir-mas-de-un-hueco -->
<!-- origen: 6da87283aaee6021a36932d3e84ebcc7eb5c8827 -->

Specifies whether the [INSERT\_HOLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-hueco.md) command allows adding several holes to the same polygon.

## Possible values

* **Yes**. The command allows adding holes until you press the spacebar.
* **No** \(default\). The command adds a single hole.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Ext` |
| :--- | :--- |
| Value | `InsHuecoPermitirAnadirMasDeUnHueco` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
