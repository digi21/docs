# Calculate overlap by correlation
<!-- id: calcular-recubrimiento-por-correlacion -->
<!-- origen: 99e737b651a8fde85cde31a859e6bacbc987d7e7 -->

Specifies whether the first action of the relative orientation command is to calculate horizontal/vertical overlap by correlation. Disable this option only if the program makes a mistake because the left camera photo center contains no information.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation` |
| :--- | :--- |
| Value | `CalcularRecubrimientoPorCorrelacion` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
