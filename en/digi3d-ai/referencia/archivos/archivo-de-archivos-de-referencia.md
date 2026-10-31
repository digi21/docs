# Reference files file
<!-- id: archivo-de-archivos-de-referencia -->
<!-- origen: d954389cbea15a1c97540de2938a25a6a7aaff51 -->

Digi3D.AI saves a file alongside each drawing file containing the list of drawing reference files and, if a photogrammetric project or photogrammetric model file (`.d3d`) has been associated with the drawing, the path of that project or model. The reference file name is formed from the drawing file name, including its extension, followed by `.reference_files.json`: for example, `plano.bin.reference_files.json` for `plano.bin`. Thus, `plano.bin` and `plano.dgn` in the same folder each have their own reference files file.

What the reference files file stores depends on two options in the [Reference files](../cuadros-de-dialogo/configuracion/archivos-de-referencia/README.md) category of the **Configuration** dialog:

* [Store the reference files in a .reference_files.json file](../cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-los-archivos-de-referencia-en-un-archivo-json.md), enabled by default. If you disable this option, Digi3D.AI neither saves reference files in the reference files file nor loads those saved in it.
* [Store the photogrammetric project or the photogrammetric model as a reference file](../cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-el-proyecto-o-el-modelo-fotogrametrico.md), disabled by default. If you do not enable this option, Digi3D.AI does not save the project or model path, and neither loads the project nor opens the model saved in the reference files file.

For each reference file, Digi3D.AI saves:

* The file path.
* The importer used to load it.
* The import parameters, if the importer supports saving them.
* The horizontal and vertical coordinate transformations selected when loading it.

The next time the drawing file opens, its reference files are therefore loaded without asking again for import parameters or transformations.

## Photogrammetric project or model

With **Store the photogrammetric project or the photogrammetric model as a reference file** enabled, Digi3D.AI saves an absolute path in the reference files file of the drawing file used to open the last drawing window that had focus:

* When loading a project with the **New** or **Load** buttons in the [Photogrammetric project](../paneles/proyecto-fotogrametrico.md) pane, or with the Python [open_project](../../programacion/python/referencia/digi3d/functions.md#open_project) function, Digi3D.AI saves the project path.
* When the active photogrammetric window loads a project model (by clicking in the pane, using the next or previous model commands, automatic model switching, or the Python [load_model](../../programacion/python/referencia/digi3d/functions.md#load_model) function), and when a photogrammetric window containing a project model receives focus, Digi3D.AI saves the project path, model name, and viewpoint.
* When opening a photogrammetric model file (`.d3d`) while the Photogrammetric project pane has no project loaded, Digi3D.AI saves the model file path. The model file can be opened from the [Photogrammetric sensors](../cuadros-de-dialogo/nuevo-proyecto/sensores-fotogrametricos.md) tab of the **New project** dialog or with the Python [open_photogrammetric_file](../../programacion/python/referencia/digi3d/functions.md#open_photogrammetric_file) function. If the pane has a project loaded, the model opens in the project viewpoint and the reference files file retains the project path.
* When opening a drawing file whose reference files file has no project or model path, or contains the path of the project loaded in the pane but no model name, Digi3D.AI saves the path of the project loaded in the pane and the name and viewpoint of the project model loaded in the active photogrammetric window. If the pane has no project and the reference files file has no project or model path, it saves the path of the `.d3d` file in the active photogrammetric window.

The reference files file stores either a project path with its model or a model file path, never both: the new path replaces the previous project or model path. If the saved project path changes, Digi3D.AI removes the previous project model name and viewpoint from the reference files file. Digi3D.AI saves nothing if no drawing window is open or if the drawing file of the last drawing window that had focus is read-only. It also does not save the model file path specified by the `foto` command line subcommand, or the project path specified by the `proyecto` subcommand until the photogrammetric window loads a model from that project.

### When opening a drawing file with an associated project

* If the Photogrammetric project pane has no project loaded, Digi3D.AI loads the associated project.
* If the pane already has the same project loaded, Digi3D.AI does not reload the associated project.
* If the pane has another project loaded, Digi3D.AI asks whether to replace the pane project with the project associated with the drawing file.
* If the associated project file does not exist, Digi3D.AI adds a warning to the [Tasks](../paneles/tareas.md) pane and does not load the project.
* If a model is loading in the background, Digi3D.AI displays “A project cannot be loaded while a model is being loaded in the background. Wait until it finishes.” and does not load the project.
* Without a photogrammetry license, Digi3D.AI does not load the associated project.

If the pane has the associated project loaded and the reference files file has a model from that project, model loading after the drawing window is created depends on the following conditions:

* If a photogrammetric window already has that model loaded in that viewpoint, Digi3D.AI does not load it again.
* If a photogrammetric window in that viewpoint contains another model, Digi3D.AI asks whether to load the associated model in that window. If several photogrammetric windows use that viewpoint, Digi3D.AI chooses the active window as the loading destination.
* If no photogrammetric window uses that viewpoint, Digi3D.AI opens the model in a new photogrammetric window. If other photogrammetric windows are open, Digi3D.AI asks whether to open the associated model in a new photogrammetric window.
* If Digi3D.AI has just replaced the pane project with the associated project, it loads the model without asking, because the open windows contain models from the previous project.
* If the pane shows the model disabled, for example because its `.d3d` file no longer exists, or if the destination window is loading another model in the background, Digi3D.AI does not load the model.
* If the saved viewpoint does not exist in the project, Digi3D.AI uses the viewpoint selected in the pane. Some projects take the viewpoint name from the interface language, for example “Nadiral” in Spanish and “Nadir” in English.

### When opening a drawing file with an associated model file

Once the drawing window has been created, what Digi3D.AI does with the associated model file depends on these conditions:

* If no photogrammetric window is open, Digi3D.AI opens the model in a new photogrammetric window.
* If a photogrammetric window already has the model file associated with the drawing file open, Digi3D.AI does not open it again.
* If a photogrammetric window is open and none has the model associated with the drawing file open, Digi3D.AI asks whether to open the model associated with the drawing file in a new photogrammetric window.
* If the model file does not exist, Digi3D.AI adds a warning to the [Tasks](../paneles/tareas.md) pane and does not open the model.
* Without a photogrammetry license, Digi3D.AI only opens the model if its sensor does not require that license, such as the orthophoto sensor.

Digi3D.AI neither loads the associated project nor opens the associated model when opening the drawing file with the Python [open_drawing](../../programacion/python/referencia/digi3d/functions.md#opening-a-drawing) function, or when the command line includes the `proyecto` or `foto` subcommand, which specify the project or model to open.

## When it is modified

* With **Store the reference files in a .reference_files.json file** enabled:
  * Loading a reference file in a drawing file that is not read-only adds or updates its entry.
  * Unloading a reference file with the [LEAVE](../ventana-de-dibujo/ordenes/d/dejar.md) command, removing it in the [Reference file selection](../cuadros-de-dialogo/seleccion-de-archivos-de-referencia.md) dialog, or failing to find it and choosing to remove it deletes its entry.
* With **Store the photogrammetric project or the photogrammetric model as a reference file** enabled, in the cases listed in the [Photogrammetric project or model](#photogrammetric-project-or-model) section, Digi3D.AI replaces the previous data with the project path, model name, and viewpoint, or the model file path. If the project or model data to save matches the saved data, Digi3D.AI does not rewrite the reference files file.
* When the reference files file has no reference file entries and no project or model path, Digi3D.AI deletes it.

If the drawing file contains references not in the `.reference_files.json` file when opened, Digi3D.AI loads them and requests their import parameters.

If the reference files file is damaged, Digi3D.AI treats it as empty: it requests the import parameters again to load the reference files, and neither loads the project nor opens the model associated with the drawing file.

## Format

This is a JSON file with the following elements, which may be absent:

* `archivos`: one entry per reference file.
* `proyecto`: the photogrammetric project path.
* `modeloDelProyecto` and `puntoDeVista`: the project model name, as displayed in the Photogrammetric project pane, and the viewpoint in which it was loaded. They only appear with `proyecto`.
* `modelo`: the photogrammetric model file path. The file never contains both `proyecto` and `modelo`.

```json
{
  "archivos": [
    {
      "ruta": "C:\\Proyecto\\ortofoto.ecw",
      "importador": "{GUID del importador}",
      "parametros": { "nombre": "valor" },
      "transformaciones": [ { "origen": "...", "destino": "...", "codigo": 1 } ],
      "transformacionesVerticales": [ { "origen": "...", "destino": "...", "wkt": "..." } ]
    }
  ],
  "proyecto": "C:\\Proyecto\\vuelo.prj",
  "modeloDelProyecto": "108-109",
  "puntoDeVista": "Nadiral"
}
```

With an associated model file, the file contains `"modelo": "C:\\Proyecto\\108-109.d3d"` instead of `proyecto`, `modeloDelProyecto`, and `puntoDeVista`.
