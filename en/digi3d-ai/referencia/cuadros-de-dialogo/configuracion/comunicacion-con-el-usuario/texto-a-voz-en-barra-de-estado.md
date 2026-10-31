# Text-to-Speech in the toolbar
<!-- id: texto-a-voz-en-barra-de-estado -->
<!-- origen: 2310b7ef65c307ae81b3618c549571a7b30d29a8 -->

Specifies whether Digi3D.AI uses speech synthesis to read aloud messages displayed by commands in the status bar.

## Possible values

* **Yes**. Status bar messages are read aloud.
* **No**. Status bar messages are not read aloud.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `TextoAVozEnBarraEstado` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
