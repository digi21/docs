# Automatic displacement
<!-- id: desplazar-automatico -->
<!-- origen: 8f640e91e243bd4940f67fc0fb8c3e88897f136e -->

Specifies whether the cursor automatically moves to the next \(or previous\) vertex when pressing the Data button during vertex editing.

## Possible values

* **Yes** \(default\). Pressing Data moves the cursor to the next or previous vertex.
* **No**. The cursor does not move automatically.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Editar` |
| :--- | :--- |
| Value | `DesplazarAuto` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
