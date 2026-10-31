# Snap cuts the selected line
<!-- id: tentativo-corta-la-linea-seleccionada -->
<!-- origen: b5914dc8cc455608e62c20e9422ceb0478852bc9 -->

Specifies when a snap cuts the selected line. Only has an effect if the [SNAP\_CUTS](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-corta.md) variable is enabled.

## Possible values

* **Provided that a selection is confirmed**. The selected line is cut when confirming the snap, regardless of the command running.
* **Only when registering lines** \(default\). The selected line is only cut if no command is running or if the running command is [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Linea` |
| :--- | :--- |
| Value | `TentativoCortaCortaSiempre` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
