# DrawingView
<!-- id: drawing-view -->
<!-- origen: 8b17e3b9b6282f22fbe1410c76290f37d9583fde -->

Module: `digi3d`

The Digi3D.AI **drawing window**, central to pane scripts: access loaded geometries, commands, drawing settings, and view services.

Obtain it with [`current_view()`](functions.md#current_view):

```python
import digi3d

view = digi3d.current_view()
```

## Accessing geometries

The window behaves as a sequence containing **all** geometries from **all** loaded drawing files:

| Operation | Description |
|---|---|
| `len(view)` | Total geometry count |
| `view[i]` | Geometry at position `i` |
| `for geometry in view:` | Iterate over every geometry |

> Returned geometries belong to the application and cannot be reassigned (`view[i] = ...` raises `TypeError`).

### Geometries in each file

`view.files` lists loaded files: first the drawing file, then references. Each geometry [`file`](../digi21.base/geometry.md#properties) identifies its containing file.

Each `view.files[i]` is an in-memory [DrawingFile](../digi21.base/drawingfile.md). `for g in view.files[i]`, `len(view.files[i])`, and `view.files[i][j]` iterate, count, and index its geometries. Iteration of `view.files[i]` includes deleted geometries and preserves their file order in `view`.

```python
import collections
import digi3d

view = digi3d.current_view()

# Geometry count for each loaded file
por_archivo = collections.Counter(g.file.path for g in view if g.file is not None)
for ruta, cantidad in por_archivo.items():
    print(f"{ruta}: {cantidad} geometrías")

# Geometries of a specific reference file
referencia = view.files[1]
print(len(referencia))
borradas = [g for g in referencia if g.deleted]
```

For example, locate files containing geometries far from the working area that make zoom extents reduce mapping to a point:

```python
import math
import statistics
import digi3d

view = digi3d.current_view()
geometrias = [g for g in view if not g.deleted]

# Work area center: median of geometry centers
cx = statistics.median((g.min[0] + g.max[0]) / 2 for g in geometrias)
cy = statistics.median((g.min[1] + g.max[1]) / 2 for g in geometrias)

for g in geometrias:
    distancia = math.hypot((g.min[0] + g.max[0]) / 2 - cx, (g.min[1] + g.max[1]) / 2 - cy)
    if distancia > 20000:
        archivo = g.file.path if g.file is not None else "(sin archivo)"
        print(f"{distancia / 1000:.1f} km  {[c.code for c in g.codes]}  {archivo}")
```

## Adding, deleting, and recovering geometries

| Method | Description |
|---|---|
| `add(geometry)` | Add to the active drawing file. Error if already owned by a file |
| `add(geometries)` | Add a geometry list |
| `delete(geometry)` | Delete a geometry |
| `delete(geometries)` | Delete an iterable or list of geometries |
| `recover(geometry)` | Recover a deleted geometry |
| `recover(geometries)` | Recover an iterable or list of deleted geometries |
| `replace(original, new)` | Replace `original` with `new` in one operation. Return the stored geometry or `None` if unchanged. See [Replacing a geometry](#replacing-a-geometry) |

> Deletion **does not physically remove** geometry: it **marks it as deleted** ([Geometry](../digi21.base/geometry.md) `deleted`). Thus `recover` restores it. Passing a **list** to `delete`/`recover` is much faster than individual calls, but list `add` and `delete` skip quality checks and extension notifications.

```python
linea = digi3d.Line(["CARR"], [(0, 0, 0), (10, 0, 0)])
view.add(linea)

# Delete in bulk, retaining the ability to undo
seleccion = [g for g in view if g.has_code("020123")]
view.delete(seleccion)
# ... if something goes wrong:
view.recover(seleccion)
```

### Replacing a geometry

Drawing geometries are read-only. To edit one, `clone()` it, modify the clone, and call `replace(original, new)`. `replace` deletes the original and adds the new geometry with the same checks as `add(geometry)`: quality control, extensions, database, and format exporter.

* Returns the stored geometry, normally `new`, but potentially another if an extension or quality check changes it during storage.
* Returns `None` without changes if `original` was already deleted or could not be deleted.
* Returns `None` and restores `original` if `new` is rejected, for example because its code is unsupported by the drawing format.
* If `original` belongs to another loaded file, leave it undeleted and add `new` to the active drawing file.

If `replace` returns `None`, do not reuse `new` in `replace` or `add`: Digi3D.AI may have stored it among rejected geometries. Create another clone.

First collect geometries into a list and iterate that list, rather than the view: `replace` appends geometries to the file being iterated.

```python
textos = [g for g in view if isinstance(g, digi3d.Text) and not g.deleted]
for texto in textos:
    clon = texto.clone()
    clon.rotation = 0.0
    if view.replace(texto, clon) is None:
        print("No se ha podido sustituir un texto")
view.redraw()
```

## Code table

Access the project code table (`digi.tab`) through [`digitab`](#information-properties), a sequence of [DigiTabNode](../digi21.base/digitabnode.md), or `digi_tab`, a `{código: DigiTabNode}` dictionary.

| Method | Returns | Description |
|---|---|---|
| `find_codes(concept)` | `list[str]` | Codes whose name, description, tags, or aliases contain the concept, ignoring case and accents |

`find_codes` locates geometries by concept without knowing codes beforehand:

```python
# Zoom to the first building in the drawing
codigos = view.find_codes("edificio")          # e.g. ['050146', '050147', ...]
for g in view:
    if any(c.code in codigos for c in g.codes):
        view.zoom_geometry(g)
        break
```

> `find_codes` searches the project code table (catalog). A code can exist without any loaded geometry using it.

## Commands

| Member | Type | Description |
|---|---|---|
| `run_command(command)` | method | Run a command by name |
| `add_command(command)` | method | Run and initialize a [PythonCommand](python-command.md) |
| `command_push(command, send_on_lost_event_to_current_command=True)` | method | Push a [Command](command.md) onto the stack. Also accepts its name (`str`) |
| `command_pop()` | method (`bool`) | Pop the active command.<br>Return `True` if another remains |
| `command_top` | read-only property | Current [Command](command.md) |

## Coordinate transformation

| Method | Returns | Description |
|---|---|---|
| `to_geo(coordinates)` | `tuple` | Transform view coordinates to geographic (EPSG:4326).<br>Return `(longitud, latitud)` |
| `project(coordinates)` | `float` \| `None` | Project onto terrain and return `z`, or `None` if impossible. Accepts `(x, y, z)`, `(x, y)`, or `x, y` |

```python
lon, lat = view.to_geo((430000, 4480000, 700))
z = view.project((430000, 4480000))
```

## Zoom and redraw

| Method | Description |
|---|---|
| `redraw()` | Regenerate the drawing window |
| `zoom_extents()` | Zoom to the full extent |
| `zoom_geometry(geometry)` | Zoom to the specified geometry |

## Dialogs

| Method | Returns | Description |
|---|---|---|
| `ask_code(title, allow_multiple_selection=False)` | `tuple[str]` | Open code selection and return selected codes |

## Information properties

| Property | Type | Description |
|---|---|---|
| `min` | `tuple` | Minimum view coordinates `(x, y, z)` |
| `max` | `tuple` | Maximum view coordinates `(x, y, z)` |
| `cursor_coordinates` | `tuple` | Cursor `(x, y, z)` |
| `wkt` | `str` | View coordinate system WKT |
| `epsg_codes` | `tuple` | `(epsg_horizontal, epsg_vertical)` |
| `files` | iterable | Loaded reference files ([DrawingFile](../digi21.base/drawingfile.md)) |
| `drawing_file` | `DrawingFile` | Active drawing file |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Active project code table (a [DigiTabNode](../digi21.base/digitabnode.md) sequence).<br>Node positions match geometry code `digitab_index` |
| `digi_tab` | `dict` | Active table `{código: DigiTabNode}` dictionary |
| `geographic_calculator` | [GeographicCalculator](geographic-calculator.md) | View geographic calculator |
| `topologies` | `dict` | Loaded topology `{nombre: [Topology]}` dictionary |
| `camera` | [Camera](../digi21.base/camera.md) | Active camera (read/write) |
| `epsilon` | `float` | Configured epsilon |

## Active drawing values

| Property | Type | Description |
|---|---|---|
| `codes` | `list[str]` | Active codes |
| `active_scale` | `tuple` | Block insertion scale `(x, y, z)` |
| `active_distance` | `float` | Active distance |
| `secondary_active_distance` | `float` | Secondary active distance |
| `text_height` | `float` | Active text height |
| `active_angle` | `float` | Active angle |
| `equidistance` | `float` | Contour interval |
| `drawing_scale` | `tuple` | Drawing scale for symbols and patterns |
| `text_justification` | `int` | Active text justification, 0–8, using [TextJustification](../digi21.base/textjustification.md). JT variable |
| `active_z` | `float` | Z used with `fixed_z` enabled. Z variable |
| `elevation_point_codes` | `str` | Automatic spot elevation point code and optional text code. COD_HEIGHTS variable |
| `force_active_codes` | `bool` | Assign active codes to geometries created by every command. FORCE_ACTIVE_CODE variable |
| `force_active_angle` | `bool` | Assign active angle to all text created by commands. FORCE_ACTIVE_AA variable |
| `force_text_height` | `bool` | Assign active height to all text created by commands. FORCE_TH_ACTIVE variable |
| `force_text_justification` | `bool` | Assign active justification to all text created by commands. FORCE_ACTIVE_JT variable |
| `camera_oriented_text` | `bool` | TEXT places text perpendicular to the camera viewing direction; TEXT_R places it vertically. CAMERA_ORIENTED_TEXT variable |

## Display

| Property | Type | Description |
|---|---|---|
| `background_color` | `int` | Background color |
| `unknown_color` | `int` | Unknown-code geometry color |
| `show_solid_polygons` | `bool` | Toggle closed geometry fill |
| `blending` | `bool` | Toggle color blending |
| `show_deleted` | `bool` | Show geometries marked as deleted |
| `show_pattern` | `bool` | Show patterns |
| `cursor_size` | `int` | Cursor size |
| `decimal_count` | `int` | Coordinate decimal places |
| `lock_coordinate_z` | `bool` | Lock or unlock Z |
| `show_virtual` | `bool` | Show virtual geometries. SEE_VIRTUAL variable; call `redraw()` to see changes |
| `show_non_virtual` | `bool` | Show nonvirtual geometries. SEE_NO_VIRTUAL variable; call `redraw()` to see changes |
| `show_pattern_photogrammetric` | `bool` | Show photogrammetric window line patterns. SPATTERN variable |
| `extra_weight` | `int` | Width added to drawing window geometries. THICKNESS variable; call `redraw()` to see changes |
| `extra_weight_photogrammetric` | `int` | Width added to photogrammetric window vectors. STHICKNESS variable |
| `show_contour_step` | `bool` | Show contour crossings. SHOW_CONTOUR_PASS variable |
| `dynamic_representation_while_drawing` | `bool` | Apply dynamic representation to the geometry being drawn. APPLY_DYNAMIC_REPRESENTATION_DRAWING_GEOMETRY variable |

## Search and snap modes

| Property | Type | Description |
|---|---|---|
| `search_mode` | `int` | Active search mode, first in `search_modes`. Assignment makes it the only mode |
| `search_modes` | `list[int]` | Active modes, tried in order by snap. SMODE variable; at least one required |
| `snap_texts` | `bool` | Include text when snapping. SNAP_TEXTS variable |
| `auto_search_mode` | `bool` | Automatic search mode |
| `exhaustive_auto_search_mode` | `bool` | Exhaustive automatic search mode |
| `verify_snap` | `bool` | Snap verification |
| `goto_snap` | `bool` | Go to snap |
| `finalize_line_when_snap` | `bool` | Finish the line on snap |
| `cut_lines_when_snap` | `bool` | Cut lines on snap |
| `insert_vertex_when_snap` | `bool` | Insert a vertex on snap |

## When finishing a line

| Property | Type | Description |
|---|---|---|
| `close_line_when_finish_line` | `bool` | Close on completion |
| `generalize_line_when_finish_line` | `bool` | Generalize on completion |
| `parallelize_line_when_finish_line` | `bool` | Parallelize on completion |
| `smooth_line_when_finish_line` | `bool` | Smooth on completion |
| `generalization_tolerance` | `float` | Generalization tolerance |
| `angular_tolerance` | `float` | Angular generalization tolerance |

## Other options

| Property | Type | Description |
|---|---|---|
| `fixed_xy` | `bool` | Lock X,Y |
| `fixed_z` | `bool` | Lock Z |
| `continuous_mode_increment` | `float` | Continuous mode distance |
| `input_device` | [InputDevice](enumerations.md#inputdevice) | Input device |
| `auto_panning_mouse` | `bool` | Automatic mouse panning |
| `auto_panning_photogrammetric_window` | `bool` | Automatic photogrammetric window panning |
| `overlap` | `float` | Automatic panning overlap percentage |
| `automatic_mode` | `bool` | Automatic mode |
| `repeat` | `bool` | Automatic command repetition |
| `block_repeat` | `bool` | Block repetition |
| `beep` | `bool` | Enable sounds. BEEPS variable |
| `dtm_moves_z` | `bool` | Update cursor Z over loaded digital terrain models. DTM_MOVES_Z variable |
| `dtm_moves_photogrammetric_window` | `bool` | Loaded DTMs change photogrammetric window Z. DTM_MOVES_DIGI3D variable |
| `force_store_geometries_without_database_link` | `bool` | Store geometries that could not be linked to the database. FORCE_STORE_GEOMETRIES_WITHOUT_BBDD_LINK variable |
| `create_topologies_in_reference_files` | `bool` | Also create topologies in reference files. CREATE_TOPOLOGIES_REFERENCE_FILES variable |
| `spacemouse_speed_xyz` | `float` | SpaceMouse X,Y,Z speed. SPACEMOUSE_SPEED_XYZ variable |
| `spacemouse_speed_rotation` | `float` | SpaceMouse rotation speed. SPACEMOUSE_SPEED_ROTATION variable |

## Other methods

| Method | Description |
|---|---|
| `close()` | Close the drawing window and its files, as when closing the window manually. Geometries are already saved, so none are lost. Return `False` if canceling the deleted-geometry notice leaves it open. After closing, do not use its `DrawingView` object |

## See also

* [Module functions](functions.md) — `current_view`.
* [Reference: Geometry](../digi21.base/geometry.md)
