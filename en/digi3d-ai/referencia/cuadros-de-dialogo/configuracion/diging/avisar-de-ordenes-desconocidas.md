# Report unknown commands
<!-- id: avisar-de-ordenes-desconocidas -->
<!-- origen: 45f79e900aebba1e11202ec2ef01f8ccf03b95f7 -->

Specifies whether Digi3D.AI writes a notification in the [results window](../../../paneles/resultados.md) when a command that does not exist is run.

The notification does not open the results window: you only see it if the window is already open.

## Possible values

* **Yes** \(default\). Running a command that does not exist writes a message to the results window.
* **No**. Running a command that does not exist writes no message.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `AvisarOrdenesDesconocidas` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
