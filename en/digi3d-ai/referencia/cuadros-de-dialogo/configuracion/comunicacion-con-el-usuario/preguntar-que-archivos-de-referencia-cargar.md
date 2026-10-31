# Ask which reference files to load
<!-- id: preguntar-que-archivos-de-referencia-cargar -->
<!-- origen: 16a49aa3e4a58c156170fbab19a51845c56cc490 -->

Specifies whether, when opening a drawing file with associated reference files, Digi3D.AI displays the [Reference file selection](../../seleccion-de-archivos-de-referencia.md) dialog to choose which ones to load.

## Possible values

* **Yes**. The dialog is displayed and only checked reference files are loaded.
* **No**. All reference files are loaded without asking. This is the default value.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `PreguntarArchivosReferenciaACargar` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
