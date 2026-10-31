# digi3d module
<!-- id: digi3d-4 -->
<!-- origen: f8b8da4fc1d3cc92c883f3e526c9873b5d91fa2a -->

`digi3d` is available to scripts running **inside Digi3D.AI**: the [Python pane](../../panel-de-python/README.md) and [quality checks](../../controles-de-calidad/README.md). It provides drawing and photogrammetric windows, photogrammetric projects, commands, panes, and other services. It cannot be imported in console applications.

The usual entry point is [`current_view()`](functions.md#current_view), returning the active [DrawingView](drawing-view.md).

`digi3d` also **re-exports** core [digi21.base](../digi21.base/README.md) types. After `import digi3d`, use them with `digi3d.` (for example, `digi3d.Line`) without importing `digi21.base`. To omit the `digi3d.` prefix, import with `from digi3d import ...`:

`FeatureCode`, `Geometry`, `Point`, `Text`, `Line`, `Polygon`, `Complex`, `DigiTab`, `DigiTabNode`, `DrawingFile`, `Camera`, `TextJustification`, `StandardViewpoint`, `PointLineRelativePosition`.

## Classes

* [DrawingView](drawing-view.md) — drawing window (geometries, commands, configuration).
* [PhotogrammetricView](photogrammetric-view.md) — photogrammetric window (cursor, zoom, model, 3D camera).
* [Command](command.md) — Digi3D.AI command.
* [PythonCommand](python-command.md) — base for interactive Python commands.
* [Topology](topology.md) — `Topology`, `TopologyRing`, `TopologyPolygon`.
* [GeographicCalculator](geographic-calculator.md) — geographic calculations (areas, distances, azimuths).
* [Representation](representation.md) — geometry graphic representation.
* [Tasks](tasks.md) — `TaskBase`, `TaskMessageBox`, `TaskGotoCoordinates`.

## Functions and enumerations

* [Module functions](functions.md) — `current_view`, `open_drawing`, photogrammetric window and projects, messages, panes, dialogs, utilities.
* [Enumerations](enumerations.md) — `InputDevice`, `MusicType`, `BallonType`, `TaskType`, `FillType`.
* [Exceptions](exceptions.md) — `GeometryError`, `GeometryRelationError`, `GeometryWarning`, `DatabaseFieldError`.
