# Correction factor
<!-- id: factor-de-correlacion -->
<!-- origen: 3391cf046d81076f7f837f4e55aa030fb9f612ea -->

Specifies the correlation factor below which the program considers correlation invalid and notifies the user with the error sound.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation` |
| :--- | :--- |
| Value | `MinimoCorrelacionRelativa` |
| Type | `REG_BINARY` (8-byte floating-point number, `double`) |
| Default value | 0.5 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
