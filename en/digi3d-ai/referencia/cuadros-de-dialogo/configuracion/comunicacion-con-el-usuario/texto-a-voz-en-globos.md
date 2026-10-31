# Text-to-speech in bubbles
<!-- id: texto-a-voz-en-globos -->
<!-- origen: 99400de3bfa26de15efe48b2a3b2053adc94a261 -->

Specifies whether Digi3D.AI uses speech synthesis to read aloud the contents of balloons displayed by commands.

## Possible values

* **Yes**. Balloon contents are read aloud.
* **No**. Balloon contents are not read aloud.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `TextoAVozEnGlobos` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
