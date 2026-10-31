# Double click to finish
<!-- id: finalizar-con-doble-clic -->
<!-- origen: db7503e55be7255eeb5f21888b2a77e19729d0f0 -->

Specifies whether the line being registered with the [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) command finishes on a double-click.

## Possible values

* **Yes**. A double-click finishes the line, like the RESET button.
* **No** \(default\). A double-click is treated as a Data press.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Linea` |
| :--- | :--- |
| Value | `FinalizarConDobleClic` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
