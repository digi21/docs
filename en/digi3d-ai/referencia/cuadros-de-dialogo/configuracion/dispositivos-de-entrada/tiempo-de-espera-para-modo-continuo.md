# Response time for continuous mode
<!-- id: tiempo-de-espera-para-modo-continuo -->
<!-- origen: e7c82afcf61597fa00ccb2db7662987209087d2f -->

Specifies how long the Data button/pedal must be held down before it locks. Enter **0** if you do not want the Data pedal to lock.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\IO\TarjDigi3D` |
| :--- | :--- |
| Value | `MilisegundosBloqueoData` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
