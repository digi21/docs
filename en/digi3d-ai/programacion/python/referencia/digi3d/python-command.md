# PythonCommand
<!-- id: python-command -->
<!-- origen: eaf7db673ee890071cfacb16f692737aa2150cf4 -->

Module: `digi3d`

This class is the base for **creating interactive commands in Python**. Create a derived class and
override the event handlers (mouse movement, data, reset, snap, selection, etc.).
Start the command with [`DrawingView.add_command`](drawing-view.md#commands).

## Constructors

```python
PythonCommand()
PythonCommand(name)
```

| Argument | Type | Description |
|---|---|---|
| `name` | `str` | Command name (optional). |

## Properties

| Property | Type | Description |
|---|---|---|
| `view` | [DrawingView](drawing-view.md) | View in which the command is running. |

## Methods

| Method | Returns | Description |
|---|---|---|
| `new_transaction()` | — | Creates a new undo transaction (UNDO). |
| `select_geometry(coordinates, filter=None)` | `bool` | Selects the geometry nearest to `coordinates`, like the snap pedal, and passes it to `on_geometry_selected`. Returns `False` if selection could not start. See [Selecting a geometry](#selecting-a-geometry). |

## Events

In the derived class, override the handlers for events to which the command must respond. Pedal,
movement, and keyboard event handlers return `True` if the command has processed the event; in that case Digi3D.AI
does nothing else with it.

| Event | When Digi3D.AI calls it |
|---|---|
| `on_set_focus()` | When the command starts and whenever it becomes the active command again. |
| `on_lost_focus()` | When another command is pushed onto the stack above the current command. |
| `on_data_down(coordinates)` | When the data button or pedal is pressed. |
| `on_data_up(coordinates)` | When the data button or pedal is released. |
| `on_data_dbl_clk(coordinates)` | When the data button is double-clicked. |
| `on_reset_down(coordinates)` | When the reset button or pedal is pressed. |
| `on_reset_up(coordinates)` | When the reset button or pedal is released. |
| `on_snap_down(coordinates)` | When the snap button or pedal is pressed. |
| `on_snap_up(coordinates)` | When the snap button or pedal is released. |
| `on_move(coordinates, button)` | When the cursor moves. |
| `on_key_down(key)` | When a key is pressed. |
| `on_geometry_selected(geometry, coordinates, first_vertex, second_vertex)` | When you select a geometry with the snap pedal or the command selects it with `select_geometry`. Returns nothing. |
| `on_geometries_selected(geometries)` | When a multiple selection command or a pane passes several geometries to the command. See [Multiple selection](#multiple-selection). Returns nothing. |

`coordinates` is an `(x, y, z)` tuple containing ground coordinates.

## Selecting a geometry

`select_geometry(coordinates, filter=None)` searches for the geometry nearest to `coordinates`, like the
snap pedal. If it finds one, Digi3D.AI calls the command `on_geometry_selected` event:

- Without snap verification (the [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) variable,
  or `view.verify_snap` in [DrawingView](drawing-view.md#search-and-snap-modes)), the call
  occurs before `select_geometry` finishes.
- With verification enabled, Digi3D.AI displays the geometry it found and waits for you to
  confirm it with a data action. Digi3D.AI calls `on_geometry_selected` when you confirm the geometry.

If it finds no geometry, Digi3D.AI plays the error sound and does not call the event.

`select_geometry` selects nothing and returns `False` in these cases:

- A snap is already in progress, for example one awaiting your verification.
- The active [search mode](drawing-view.md#search-and-snap-modes) searches for intersections. This mode
  launches the INTERSECCION command, which does not support the filter.

| Argument | Type | Description |
|---|---|---|
| `coordinates` | `tuple` | Coordinates `(x, y, z)` at which to search for the geometry. Usually those received by `on_data_down` or `on_data_up`. |
| `filter` | function or `None` | Function that receives a [geometry](../digi21.base/geometry.md) and returns `True` if it can be selected. With `None`, points, lines, texts, and polygons can be selected. With a function, the function also decides whether complexes can be selected. If the function raises an exception, Digi3D.AI writes the error with `print` and discards that geometry. |

`on_geometry_selected` receives these arguments:

| Argument | Type | Description |
|---|---|---|
| `geometry` | [Geometry](../digi21.base/geometry.md) | Selected geometry. This is the drawing geometry and is read-only: to change it, delete the original with `view.delete` and add a clone with `view.add`. |
| `coordinates` | `tuple` | Coordinates `(x, y, z)` of the point on the geometry nearest to the selection. With the [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) variable enabled, `z` is the active Z coordinate. |
| `first_vertex` | `int` | Index of the first vertex of the selected segment. |
| `second_vertex` | `int` | Index of the second vertex of the selected segment. If equal to `first_vertex`, the selection is on that vertex. |

If the command defines `on_geometry_selected`, Digi3D.AI also passes it geometries that reach the active
command by other routes, including:

- the snap pedal;
- the [SELECT_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md) and
  [SELECT_INDEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-indice.md) commands;
- the **Send selection to the active command** option in the context menu of the database editor and the
  search results pane, which passes the first selected geometry if the command does not define
  `on_geometries_selected`;
- tasks in the tasks pane that launch a command on a geometry.

If the command does not define `on_geometry_selected`, Digi3D.AI treats it as a command that does not select
geometries: the snap pedal calls `on_data_down` with those same coordinates, and the other routes
pass it nothing.

```python
import digi3d

class MostrarCodigos(digi3d.PythonCommand):
    def on_data_up(self, coordinates):
        self.select_geometry(coordinates)
        return True

    def on_geometry_selected(self, geometry, coordinates, first_vertex, second_vertex):
        print([codigo.code for codigo in geometry.codes])

digi3d.current_view().add_command(MostrarCodigos("Mostrar códigos"))
```

The [Prefixing the codes of the selected geometry](../../panel-de-python/ejemplos/prefija-cod.md) example
uses `filter` to discard geometries from reference files.

## Multiple selection

A command that defines `on_geometries_selected(geometries)` supports multiple selection. While it is active, these
commands and options pass it the list of selected geometries:

- selection commands, such as [SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md),
  [SELECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md), or SELECT\_POLYGON;
- the **Send selection to the active command** option in the context menu of the database editor and the
  search results pane, which passes all selected geometries.

| Argument | Type | Description |
|---|---|---|
| `geometries` | `list` of [Geometry](../digi21.base/geometry.md) | Selected geometries. These are the drawing geometries and are read-only, as in `on_geometry_selected`. They may belong to any loaded file, including reference files: the command decides which ones to process by comparing their `file` property with `view.drawing_file`. |

If the command does not define `on_geometries_selected`, Digi3D.AI treats it as a command that does not support
multiple selection: selection commands display a notification that the active command does not support it and do not start.

With the DELETED variable enabled, the list may include deleted geometries. Discard them with the
`deleted` property: if the command deletes them again, an UNDO displays them again. The database editor may
pass the same geometry twice, once for each code linked to the selected record.

All changes made by the command before calling `new_transaction()` are undone with a single UNDO.
`view.delete` and `view.add` accept lists, but their list versions do not run quality checks or
notify extensions. For the functions to run quality checks and notify extensions, call each function for each geometry, or replace each geometry with
[`view.replace`](drawing-view.md#replacing-a-geometry):

```python
import digi3d

class Borrar(digi3d.PythonCommand):
    def on_geometries_selected(self, geometries):
        ruta = self.view.drawing_file.path
        for g in geometries:
            if not g.deleted and g.file is not None and g.file.path == ruta:
                self.view.delete(g)
        self.view.redraw()
        self.new_transaction()

digi3d.current_view().add_command(Borrar("Borrar la selección"))
```

## Example

```python
import digi3d

class MiOrden(digi3d.PythonCommand):
    def on_data_down(self, coordinates):
        self.new_transaction()
        self.view.add(digi3d.Point(coordinates, codes=["PUNTO"]))

digi3d.current_view().add_command(MiOrden("Insertar puntos"))
```

## See also

- [Command](command.md)
- [DrawingView](drawing-view.md)
- [Prefixing the codes of the selected geometry](../../panel-de-python/ejemplos/prefija-cod.md)
