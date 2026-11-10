# Photogrammetric project
<!-- id: proyecto-fotogrametrico -->
<!-- origen: de4c9151d41e2a4ebdf74ecbfe7bf7af833f3fa7 -->

![Photogrammetric project pane with one strip and two models](../../../images/panel-proyecto-fotogrametrico.png)

Creates photogrammetric project files and loads projects created by other programs. It also loads a project published at a URL (see [Project published at a URL](#project-published-at-a-url)).

A loaded project appears as a tree with one branch per strip listed in the project file and one leaf per model.

Clicking a model opens a photogrammetric window with it. If a photogrammetric window is already open, the selected model replaces its current model.

A project containing photos rather than models shows two lists with the same photos, left and right. Selecting one photo in each loads their model.

A `.d3dprj` can contain **RPC Satellite (stereoscopic)** pairs (RPC: rational polynomial coefficients) instead of conical camera models. See [Projects with multiple pairs](../ventana-fotogrametrica/sensores/rpc/README.md#projects-with-multiple-pairs) for creating a multi-pair `.d3dprj` and how automatic model switching chooses a pair.

The pane saves the last project path loaded with **New**, **Load** or Python's [open_project](../../programacion/python/referencia/digi3d/functions.md#open_project). Digi3D.AI loads no project at startup unless the command line includes `proyecto` or startup opens a drawing file with an associated project.

## Project associated with the drawing file

With **Configuration**'s [Store the photogrammetric project or the photogrammetric model as a reference file](../cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-el-proyecto-o-el-modelo-fotogrametrico.md) enabled, loading through **New**, **Load** or `open_project` associates the project with the last focused drawing window's file, if any drawing window is open: its path is saved in that drawing file's [reference file list file](../archivos/archivo-de-archivos-de-referencia.md#photogrammetric-project-or-model), unless the drawing file is read-only. When the active photogrammetric window loads a project model, Digi3D.AI also saves its name and viewpoint. The option is disabled by default.

With **Store the photogrammetric project or the photogrammetric model as a reference file** enabled, opening a drawing file with an associated project loads it if the pane has no project. If another project is loaded, Digi3D.AI asks whether to replace it with the drawing file's project. If the reference file list specifies a model, loading it depends on the conditions described in that section. [Photogrammetric project or model](../archivos/archivo-de-archivos-de-referencia.md#photogrammetric-project-or-model) lists cases where the associated project is not loaded. If each work area has its own drawing file and project, associate each pair once: enable **Store the photogrammetric project or the photogrammetric model as a reference file**, activate that area's writable drawing file window and load the project.

If the associated project is a remote project, the reference files file saves the project URL without the authorization query. When opening the drawing file, Digi3D.AI loads the project with the saved credential of that URL. If there is no saved credential, it opens the [Load a project from a URL](../cuadros-de-dialogo/cargar-proyecto-remoto.md) dialog with the URL in the **Project URL** field.

With **Store the photogrammetric project or the photogrammetric model as a reference file** enabled, **Load**'s file dialog proposes the project associated with the last focused drawing window's file, if one is associated. It proposes the last loaded project if the option is disabled, no drawing window is open or the last focused drawing file has no associated project.

## Project published at a URL

The pane loads a photogrammetric project published in Azure Blob Storage or on any HTTP or HTTPS server that answers byte-range requests. Digi3D.AI downloads the project file and the model files to a local copy, and reads the images over the URL without downloading them whole. See [Publishing a photogrammetric project in Azure Blob Storage and loading it from a URL](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md) for which files to upload, how the URL of each image is calculated and how to generate the authorization.

The **Load** button is a split button. Clicking the button opens the open file dialog, which does not suggest the URL of a remote project. The arrow of the button opens a menu with these four commands:

| Command | What it does | When it is enabled |
| :--- | :--- | :--- |
| **Load project from a URL...** | Opens the [Load a project from a URL](../cuadros-de-dialogo/cargar-proyecto-remoto.md) dialog, with empty fields. | If no model is loading in the background and at least one installed sensor can load projects from a URL. When executed, it requires the photogrammetry license module. |
| **Renew authorization (SAS)...** | Opens the same dialog in [renewal mode](../cuadros-de-dialogo/cargar-proyecto-remoto.md#authorization-renewal-mode), with the URLs and extension of the saved credential. When you click **OK**, if the fields pass validation, Digi3D.AI saves the new authorization queries without downloading any files. | If a remote project is loaded and no model is loading in the background. |
| **Open the project local folder** | Opens in File Explorer the folder with the local copy of the project. If the folder does not exist, it displays “The local folder does not exist yet. Digi3D creates it when it downloads the project.” | Same as **Renew authorization (SAS)...**. |
| **Discard the project local copy...** | Deletes the local copy of the project and loads it again from the server. See [Discarding the local copy](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#discarding-the-local-copy). | Same as **Renew authorization (SAS)...**. |

**Discard the project local copy...** rejects the command with “Close the photogrammetric windows of the project *URL* before discarding its local copy.” if any photogrammetric window has a model of the project or a file of the local folder loaded. Otherwise it displays the “Discard the local copy of the project?” box, which shows the folder to be deleted and the project URL, with the **Discard the local copy** and **Cancel** buttons. With **Discard the local copy**, Digi3D.AI empties the pane, deletes the local folder and loads the project again with the saved credential.

The identity of a remote project is its URL without the authorization query. Digi3D.AI saves that URL as the last loaded project and in the reference files file; it never saves the query in those places. Digi3D.AI saves the authorization query encrypted, in a credential in the current _Windows_ user registry (see [Authorization and saved credentials](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#authorization-and-saved-credentials)).

### Remote project warnings

* At startup, Digi3D.AI adds to the [Tasks](tareas.md) pane a warning for each saved credential whose authorization (SAS) has expired (“Remote project: authorization expired”) or expires in less than 24 hours (“Remote project: authorization expires in less than 24 hours”). Renew the authorization with **Renew authorization (SAS)...**.
* When the server rejects the authorization, Digi3D.AI displays the warning box “Remote project: authorization rejected” with the text “The server has rejected the authorization (SAS) for *URL*: it is not valid or has expired. Renew it with ‘Renew authorization (SAS)...’ in the Photogrammetric project panel.” Digi3D.AI displays one box per container while the program runs. After you renew the authorization of that container, Digi3D.AI can display the box again.
* When an image changes on the server while Digi3D.AI has it open, it displays the warning box “Remote project: files changed on the server” with the text “A file of the remote project *URL* changed on the server while Digi3D had the file open. Digi3D has stopped reading the modified file. Close the photogrammetric windows of the project and reload the project.” Digi3D.AI displays one box per container while the program runs.
* If Digi3D.AI cannot initialize some models of a remote project, it keeps them in the model list, tries to initialize each one again when it is opened and adds to the Tasks pane a warning for each distinct error message, with the number of affected models and the name of the first one.
* If a downloaded file changes on the server, Digi3D.AI adds a warning to the Tasks pane stating whether it updates or keeps the local copy. If Digi3D.AI cannot query the server and uses a local copy, it adds a warning with the reason. See [Which copy is used when the project loads](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#which-copy-is-used-when-the-project-loads).

## Models that cannot be loaded

By default the tree shows only loadable models. Each unavailable model adds “Model file: *model* not located.” to [Tasks](tareas.md). If no project model can be loaded, Digi3D.AI displays “No model of the project file could be loaded. Possibly the path to the images in the project file is invalid.”

Disabling [Show only loaded models](../cuadros-de-dialogo/configuracion/proyecto-fotogrametrico/mostrar-solo-modelos-cargados.md) also shows unavailable models, disabled; each still adds its error to Tasks.

## Project coordinate reference system

Loading a project without an associated reference system displays “We have not located the coordinate reference system of this project” with three options:

* **I know the coordinate reference system of this project and I want to indicate what is.**: opens coordinate reference system selection and, on acceptance, creates a `.prj` beside the project.
* **I don't know the coordinate reference system of this project.**: creates a `.prj` with an unknown system.
* **I would like to ask me next time.**: temporarily assigns an unknown system without creating a `.prj`.

### Vertical system

Only Inpho and PhotoScan projects show this dialog. If the project system has only a horizontal component and [Ask for sensor's vertical system](../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) is **Yes**, loading displays **Unknown vertical coordinate system**, as for a [model without a vertical system](../ventana-fotogrametrica/sensores/camara-conica/sistema-de-referencia-del-modelo.md#vertical-coordinate-reference-system). Two options are offered:

* **I know the Vertical coordinate reference system of this model and I want to indicate it**: opens vertical reference system selection. The project uses its horizontal system with the selected vertical system. Cancelling selection acts as the next option.
* **I don't know the vertical coordinate reference system of this model.**: uses the file's horizontal system with an unknown vertical system. Digi3D.AI does not transform Z.

Although option text says the file will change, Digi3D.AI writes nothing to the project: the choice is not saved and the dialog reappears each time the project is loaded.

An Inpho project may declare an Esri system in `$COORDINATE_SYSTEM` with a `VERTCS` after `PROJCS`, for example `PROJCS["ETRS_1989_UTM_Zone_30N",…],VERTCS["EGM2008_Geoid",…]`. If both are recognized as EPSG systems, the equivalent compound system is used (ETRS89 / UTM zone 30N + EGM2008 height in the example) without showing the dialog.

## Project loading errors

* “We have not located any extension that allows you to open the selected file.”: no installed sensor recognizes it.
* “The project file does not provide any viewpoint, so no model can be loaded from it.”
* “A project cannot be loaded while a model is being loaded in the background. Wait until it finishes.”

## Toolbar

The toolbar controls pane contents.

### Buttons

* **New**: creates a photogrammetric project file.
* **Load**: split button. Clicking the button opens the open file dialog and loads the photogrammetric project file you select. Without a photogrammetry license, loads nothing. The arrow of the button opens a menu with the commands for projects published at a URL (see [Project published at a URL](#project-published-at-a-url)).
* **Unload**: unloads the project.

**Load** and **Unload** are disabled while a model loads in the background.
* **Automatic model change**: toggles automatic model switching.
* **Viewpoint**: selects a viewpoint if the loaded project provides several from one station.
* **Open in new window**: when enabled, clicking a model opens a new photogrammetric window rather than replacing the active window's model.
* **Go to previous model** and **Go to next model** (left and right arrows): load the previous or next model in the same strip into the active photogrammetric window.
* **Go to the previous strip model** and **Go to the next strip model** (up and down arrows): load the most suitable model in the previous or next strip for the cursor position.

Arrow buttons are enabled only with a loaded project and an open photogrammetric window.

A photogrammetric window opened with a point cloud or stereoscopic orthophoto model does not load another model in the background. If the active photogrammetric window was opened with a point cloud or stereoscopic orthophoto model, clicking a model opens it in a new photogrammetric window, even with **Open in new window** disabled, and the arrows do not load any model.

## Showing the pane

Show it in either way:

* Click its button on the [Panes toolbar](../barras-de-herramientas/paneles.md).
* Select **Window/Photogrammetric project**.
