# If the two lines have different codes
<!-- id: si-las-dos-lineas-tienen-codigos-distintos -->
<!-- origen: c25915503e2dc7edfebe42310cfecdc9d7853073 -->

Specifies what the [CONNECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir.md) command does when the two lines to join have different codes. The error sound plays in both cases.

## Possible values

* **Ask for the code of the line to be generated**. The command displays a dialog to choose the resulting line code.
* **Do not join the lines** \(default\). The lines are not joined.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Unir` |
| :--- | :--- |
| Value | `PreguntarAlUnirGeometriasCodigosDistintos` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
