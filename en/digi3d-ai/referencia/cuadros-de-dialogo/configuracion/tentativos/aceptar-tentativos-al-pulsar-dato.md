# Accept snaps when pressing data button
<!-- id: aceptar-tentativos-al-pulsar-dato -->
<!-- origen: 6b61add17db68723508f5b3b79db6a48ef562e16 -->

Specifies when a snap is accepted if no command is running or if the running command is [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

## Possible values

* **Yes**. The snap is accepted when pressing the Data button. You can therefore confirm the snap and continue registering the line without releasing the pedal.
* **No** \(default\). The snap is accepted when releasing the Data button.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Linea` |
| :--- | :--- |
| Value | `PermitirConfirmarTentativoAlPulsarPedal` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
