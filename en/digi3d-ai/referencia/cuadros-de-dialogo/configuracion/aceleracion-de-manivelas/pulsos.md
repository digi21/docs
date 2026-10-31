# Presses
<!-- id: pulsos -->
<!-- origen: 3d074bbb2903f722d362e9a128ad09f9c85d5117 -->

Specifies the minimum number of pulses which, when exceeded within the [Sampling time for acceleration](tiempo-de-muestreo-para-aceleracion.md), triggers image movement acceleration.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\IO` |
| :--- | :--- |
| Value | `PulsosAceleracion` |
| Type | `REG_DWORD` |
| Default value | 150 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
