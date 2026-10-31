# Module functions
<!-- id: functions -->
<!-- origen: a578fa8501030390236e3f6a94c4b0cec11a7169 -->

Module: `digi3d`

Functions available directly in the `digi3d` module.

## current_view

```python
current_view() -> DrawingView
```

Returns the active [DrawingView](drawing-view.md), or `None` if there is none. This is the
usual entry point for a script. If the active window is the photogrammetric window, it returns the
open drawing window.

## Opening a drawing

```python
open_drawing(path, code_table=None, scale=None, register_increment=None, equidistance=None,
             text_height=None, tolerance=None, z_correction=None, sigma=None, crs_wkt=None,
             references=None) -> DrawingView
```

Opens a drawing file in a new drawing window and returns its [DrawingView](drawing-view.md).
Does the same as the open drawing dialog, without displaying it. If the file does not exist, the format
creates it.

Digi3D.AI opens only one drawing at a time: if one is already open, the function raises `RuntimeError`.
Close the open drawing with [`DrawingView.close()`](drawing-view.md#other-methods) before opening another drawing.

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | Drawing file path. The folder must exist. |
| `code_table` | `str` | Code table path. The file must exist. |
| `scale` | `float` | Pattern display scale. |
| `register_increment` | `float` | Registration increment. |
| `equidistance` | `float` | Contour interval. |
| `text_height` | `float` | Text height. |
| `tolerance` | `float` | Generalization tolerance. |
| `z_correction` | `float` | Z correction. |
| `sigma` | `float` | Sigma. |
| `crs_wkt` | `str` | Drawing window coordinate system, in WKT. |
| `references` | `list[str]` | Reference files to load. If `references` is omitted, the reference files saved with the drawing are loaded. A file that was not saved is saved with the drawing, just as when you load that file. With [Store the reference files in a .reference_files.json file](../../../../referencia/cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-los-archivos-de-referencia-en-un-archivo-json.md) disabled, Digi3D.AI neither reads nor saves references in the reference files file. |

Omitted arguments take the last values used in the open drawing dialog. Supplied arguments
become the last used values, just as with the dialog; if the drawing cannot be opened,
Digi3D.AI restores the previous values. Format options are the last ones used with
that format.

## Opening without dialogs

`open_drawing`, `open_project`, `load_model`, and `open_photogrammetric_file` do not display any
dialogs, so a script or MCP client does not wait for the user to respond. When
Digi3D.AI would ask the user a question, the function takes the response shown in the table and writes a notification
starting with `Warning:` to the script output:

| Situation | Response |
|---|---|
| A reference file does not exist. | It is not loaded; the rest of the drawing opens. |
| The code table cannot be loaded. | The drawing does not open. |
| A transformation between two coordinate systems must be selected and none is saved. | The file is not loaded. Open it once from Digi3D.AI to select the transformation; the saved one is used afterward. |
| Several formats can read the file. | The file is not loaded. |
| The file has no coordinate system. | The result is the same as canceling the coordinate system selection dialog. |
| The file layers or tables must be selected. | The file is not loaded. |
| The photogrammetric project has no coordinate system. | It is loaded with a local system, without creating the `.prj` file. |
| The drawing opened by `open_drawing` has an associated [photogrammetric project or photogrammetric model file](../../../../referencia/archivos/archivo-de-archivos-de-referencia.md#photogrammetric-project-or-model). | The project is not loaded and the model is not opened. |
| Any other message with buttons. | The function chooses No, cancel, or abort, depending on the message buttons. |

If `open_drawing` fails, the exception message includes the warnings. Startup commands
run by the code table and the drawing when the window opens also receive the responses in the table.

Some dialogs cannot yet be avoided and still wait for the user: the license notification, the
coordinate system prompt for a conical camera model whose aerial triangulation has none, and
the coordinate system selection for a GeoPackage with several systems.

```python
import digi3d

view = digi3d.current_view()
if view is not None:
    view.close()
view = digi3d.open_drawing(r"C:\Proyectos\hoja2.bin", code_table=r"C:\Proyectos\tabla.tab")
```

## Photogrammetric window and projects

### photogrammetric_view

```python
photogrammetric_view() -> PhotogrammetricView | None
```

Returns the active [photogrammetric window](photogrammetric-view.md), or `None` if there is none.

### open_photogrammetric_file

```python
open_photogrammetric_file(path) -> PhotogrammetricView
```

Opens a photogrammetric model file (`.d3d`) in a new photogrammetric window and returns it.
Raises `ValueError` if the file is not `.d3d`, and `RuntimeError` if Digi3D.AI cannot open it.

With [Store the photogrammetric project or the photogrammetric model as a reference file](../../../../referencia/cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-el-proyecto-o-el-modelo-fotogrametrico.md)
enabled, if a drawing window is open and the Photogrammetric project pane has no project
loaded, `open_photogrammetric_file` saves the model file path in the
[reference files file](../../../../referencia/archivos/archivo-de-archivos-de-referencia.md#photogrammetric-project-or-model)
of the drawing file belonging to the last drawing window that had focus, unless that drawing
file is read-only.

### open_project

```python
open_project(path) -> bool
```

Loads a photogrammetric project in the project pane, like the pane **Load** button,
without displaying any dialogs. Returns `False` if the project was not loaded; the reason appears as a
notification starting with `Warning:` in the script output. If the project has no coordinate
system, the function loads it with a local system, without creating the `.prj` file, as shown in the
[Opening without dialogs](#opening-without-dialogs) table.

If it loads the project, the function saves its path as the last project in the pane, like the **Load** button.
With [Store the photogrammetric project or the photogrammetric model as a reference file](../../../../referencia/cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-el-proyecto-o-el-modelo-fotogrametrico.md)
enabled, if a drawing window is open and the drawing file of the last drawing window that
had focus is not read-only, it also saves the path in the [reference files file](../../../../referencia/archivos/archivo-de-archivos-de-referencia.md#photogrammetric-project-or-model)
of that drawing file.

### project

```python
project() -> dict | None
```

Returns the project loaded in the project pane, or `None` if there is none:

| Key | Type | Description |
|---|---|---|
| `file` | `str` | Project file path. |
| `viewpoint` | `str` | Viewpoint selected in the pane. |
| `viewpoints` | `list[str]` | Project viewpoints. |
| `models` | `list[dict]` | For a model project, the models in the selected viewpoint: `strip` (strip), `name` (name), and `loadable` (whether it can be loaded). |
| `photos` | `list[str]` | For a photo project, the photo names. |

### load_model

```python
load_model(name, new_window=False) -> bool
```

Loads a model from the project, like clicking a model in the project pane. In a photo
project, the model name is `izquierda-derecha`, using the names of two different photos.

- If a photogrammetric window is open, the model replaces the one in that window and loads in
  the background **after the script finishes**. Check
  [`model_name`](photogrammetric-view.md#loaded-model) in a later script.
- If no window is open, or with `new_window=True`, opens a new photogrammetric window before
  returning control to the script.

Raises `RuntimeError` if no project is loaded, and `ValueError` if the project does not contain that
model in the selected viewpoint or the pane shows the model disabled. Returns
`False` if loading could not be started.

With [Store the photogrammetric project or the photogrammetric model as a reference file](../../../../referencia/cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-el-proyecto-o-el-modelo-fotogrametrico.md)
enabled, when the active photogrammetric window finishes loading the model, Digi3D.AI saves the project
path and model name in the [reference files file](../../../../referencia/archivos/archivo-de-archivos-de-referencia.md#photogrammetric-project-or-model)
of the open drawing file, unless that drawing file is read-only.

```python
import digi3d

if digi3d.open_project(r"C:\Proyectos\vuelo.d3dprj"):
    modelos = digi3d.project()["models"]
    digi3d.load_model(modelos[0]["name"])
```

## Messages and notifications

| Function | Description |
|---|---|
| `music(type=MusicType.Beep)` | Plays one of the standard sounds ([MusicType](enumerations.md#musictype)). |
| `print_statusbar(message)` | Writes a message to the status bar. |
| `show_ballon(title, body, icon=BallonType.Info, time=1000)` | Displays a temporary information balloon ([BallonType](enumerations.md#ballontype)). |
| `progress(value=-1)` | Updates the progress bar (percentage). |
| `ask_question(question)` | Displays a modal Yes/No dialog.<br>Returns `True` or `False`. |
| `show_info(message)` | Displays a modal dialog with information for the user. |

## Results and tasks panes

| Function | Description |
|---|---|
| `show_results(show=True)` | Shows or hides the results pane. |
| `clear_results()` | Clears the results pane. |
| `add_result(message, scroll=True, update=True)` | Adds a line to the results pane. |
| `get_results()` | Returns the contents of the results pane (`str`). |
| `show_tasks(show=True)` | Shows or hides the tasks pane. |
| `clear_tasks()` | Clears the tasks pane. |
| `add_task(task)` | Adds a [task](tasks.md) to the tasks pane. |

## File dialog

```python
ask_file(load, filetypes, title=None) -> str | None
```

Displays an open/save file dialog and returns the selected path, or
`None` if canceled.

| Argument | Type | Description |
|---|---|---|
| `load` | `bool` | `True` to open, `False` to save. |
| `filetypes` | `list[tuple]` | List of `(descripción, extensión)` pairs, e.g. `[("AutoCAD DWG", "*.dwg")]`. |
| `title` | `str` | Dialog title (optional). |

## Geometry utilities

| Function | Returns | Description |
|---|---|---|
| `same_coordinates(a, b)` | `bool` | Indicates whether two coordinates are identical, taking the active sigma into account. Accepts `(x,y,z)`, `(x,y)`, or a single value. |
| `non_connected(geometries)` | `list` | Returns unconnected endpoints: a list of `(geometría, índice_de_vértice)` whose start/end vertex does not share a node with any other. |
| `get_intersections(geometry, geometries)` | `dict` | Vertices of `geometry` that coincide with vertices of other geometries: `{(x, y): {geometría: índice_de_vértice}}`. |

## Example

```python
import digi3d

view = digi3d.current_view()

digi3d.show_results(True)
digi3d.add_result(f"La ventana tiene {len(view)} geometrías")

if digi3d.ask_question("¿Continuar?"):
    digi3d.music(digi3d.MusicType.End)
```

## See also

- [DrawingView](drawing-view.md)
- [PhotogrammetricView](photogrammetric-view.md)
- [Tasks](tasks.md)
- [Enumerations](enumerations.md)
