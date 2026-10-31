# Store the photogrammetric project or the photogrammetric model as a reference file
<!-- id: almacenar-el-proyecto-o-el-modelo-fotogrametrico -->
<!-- origen: ced1e0c5142fc2eb06e5dbc4acf48281e3445a65 -->

Specifies whether Digi3D.AI associates a photogrammetric project, with the project model loaded in the photogrammetric window, or a photogrammetric model file (`.d3d`) with each drawing file. Digi3D.AI saves the project path and model name, or the model file path, in the drawing [reference files file](../../../archivos/archivo-de-archivos-de-referencia.md#photogrammetric-project-or-model). When opening the drawing file, Digi3D.AI loads the associated project and model, or opens the associated model file, in the cases described in that section of the reference files file documentation.

## Possible values

* **Yes**. If a drawing window is open, Digi3D.AI saves the path in the `.reference_files.json` file of that window drawing file, unless the drawing file is read-only:
  * When loading a project with the **New** or **Load** buttons in the [Photogrammetric project](../../../paneles/proyecto-fotogrametrico.md) pane, or with the Python [open_project](../../../../programacion/python/referencia/digi3d/functions.md#open_project) function, it saves the project path.
  * When the active photogrammetric window loads a model from the project, or when a photogrammetric window with a project model receives focus, it saves the project path, model name, and viewpoint.
  * When opening a photogrammetric model file (`.d3d`) while the Photogrammetric project pane has no project loaded, it saves the model file path.
  * When opening a drawing file whose `.reference_files.json` has no project or model path, it saves the path of the project loaded in the pane and the project model in the active photogrammetric window or, if no project is loaded, the path of the model file in that window.

  Digi3D.AI does not save the model file path specified with the `foto` command line subcommand. When opening the drawing file, Digi3D.AI loads the associated project and model, or opens the associated model file, under the conditions described in the [Photogrammetric project or model](../../../archivos/archivo-de-archivos-de-referencia.md#photogrammetric-project-or-model) section of the reference files file documentation.
* **No**. Digi3D.AI does not save the project or model path, and when opening a drawing file it neither loads the project nor opens the model saved in its `.reference_files.json` file. The open file dialog of the Photogrammetric project pane **Load** button suggests the last loaded project. This is the default value.

This option does not affect reference files. Reference files depend on [Store the reference files in a .reference_files.json file](almacenar-los-archivos-de-referencia-en-un-archivo-json.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `AlmacenarProyectoOModeloFotogrametricoComoArchivoReferencia` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
