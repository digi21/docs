# Stop time
<!-- id: tiempo-de-parada -->
<!-- origen: 4a2c123f53fddc36a462f7f1b81c39e22dd88dcc -->

Specifies the time, in milliseconds, that must elapse after you stop moving the images before the acceleration process ends.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\IO` |
| :--- | :--- |
| Value | `TiempoParadaAceleracion` |
| Type | `REG_DWORD` |
| Default value | 100 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
