# Ask which reference files to load
<!-- id: preguntar-que-archivos-de-referencia-cargar -->
<!-- origen: 3bc48ff92a07ade182beb8c1dbe43329e1063469 -->

Specifies whether, when opening a drawing file with associated reference files, an associated photogrammetric project or an associated photogrammetric model, Digi3D.AI displays the [Reference file selection](../../seleccion-de-archivos-de-referencia.md) dialog to choose what to load.

## Possible values

* **Yes**. The dialog is displayed. When you click **OK**, Digi3D.AI loads the checked reference files and loads the associated project or model if its check box is selected.
* **No**. All reference files and the associated project or model are loaded without asking. This is the default value.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `PreguntarArchivosReferenciaACargar` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
