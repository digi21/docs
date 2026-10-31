# Store the reference files in a .reference_files.json file
<!-- id: almacenar-los-archivos-de-referencia-en-un-archivo-json -->
<!-- origen: d81aa432b046794b61a5c969a83c20742185dee7 -->

Specifies whether Digi3D.AI saves the reference files for each drawing file in its [reference files file](../../../archivos/archivo-de-archivos-de-referencia.md) (`<archivo de dibujo>.reference_files.json`), with the import parameters and coordinate transformations selected when loading them.

## Possible values

* **Yes**. When loading a reference file in a drawing file that is not read-only, Digi3D.AI saves its entry in the `.reference_files.json` file. When opening the drawing file, Digi3D.AI loads the saved reference files without asking again for import parameters or transformations. This is the default value.
* **No**. Digi3D.AI neither saves reference files in the `.reference_files.json` file nor loads those saved in it. When opening a drawing file, Digi3D.AI only loads reference files saved by the drawing file format itself, such as BIND or DGN, and asks for their import parameters.

This option does not affect the path of the photogrammetric project or photogrammetric model file. Saving the project or model file path depends on [Store the photogrammetric project or the photogrammetric model as a reference file](almacenar-el-proyecto-o-el-modelo-fotogrametrico.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `AlmacenarArchivosReferenciaEnArchivoJson` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
