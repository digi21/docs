# Commands can open the results window
<!-- id: las-ordenes-pueden-abrir-la-ventana-de-resultados -->
<!-- origen: 9370c579020d2be09b21a27882ed91234bc66386 -->

Specifies whether commands, Python scripts, and .NET plugins open the [results window](../../../paneles/resultados.md) when writing to it.

## Possible values

* **Yes** \(default\). Commands, scripts, and plugins open the results window when writing to it.
* **No**. Commands, scripts, and plugins write to the results window without opening it. The window only opens from **Window > Results > Results**, with **Alt+Shift+R**, or by clicking its tab when it is auto-hidden.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `OrdenesAbrenPanelResultados` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
