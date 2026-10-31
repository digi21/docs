# Tasks
<!-- id: tasks-2 -->
<!-- origen: d64dd7d75990227e5921dcd3b1b44c8e5166c3ee -->

Module: `digi3d`

**Tasks** are entries displayed in the Digi3D.AI tasks pane. Double-clicking
them performs an action (displaying a dialog, moving the window to
coordinates, etc.). Add them with
[`add_task()`](functions.md#results-and-tasks-panes).

## TaskBase

Base class for all tasks. Not instantiated directly.

## TaskMessageBox

A task that displays a dialog when double-clicked.

```python
TaskMessageBox(title, description, drawingFile="", module="", type=TaskType.Error)
```

| Argument | Type | Description |
|---|---|---|
| `title` | `str` | Task title. |
| `description` | `str` | Description / message. |
| `drawingFile` | `str` | Associated drawing file (optional). |
| `module` | `str` | Associated module (optional). |
| `type` | [TaskType](enumerations.md#tasktype) | Type (information/warning/error). |

## TaskGotoCoordinates

A task that moves the drawing window to coordinates when double-clicked.

```python
TaskGotoCoordinates(coordinates, title, description, drawingFile="", module="", type=TaskType.Error)
```

| Argument | Type | Description |
|---|---|---|
| `coordinates` | `tuple` | Target `(x, y, z)` or `(x, y)` coordinates. |
| `title` | `str` | Task title. |
| `description` | `str` | Description / message. |
| `drawingFile` | `str` | Associated drawing file (optional). |
| `module` | `str` | Associated module (optional). |
| `type` | [TaskType](enumerations.md#tasktype) | Type (information/warning/error). |

## Example

```python
import digi3d

digi3d.show_tasks(True)
digi3d.add_task(digi3d.TaskGotoCoordinates(
    (430000, 4480000, 700),
    "Vértice sospechoso",
    "La curva de nivel sube y baja en este punto",
    type=digi3d.TaskType.Warning))
```

## See also

- [Module functions](functions.md#results-and-tasks-panes) — `add_task`, `show_tasks`, `clear_tasks`.
- [TaskType](enumerations.md#tasktype)
