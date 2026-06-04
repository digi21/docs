# Módulo digi3d

`digi3d` es el módulo que Digi3D.AI pone a disposición de los guiones que se ejecutan **dentro
del programa**: el [panel de Python](../../panel-de-python/README.md) y los
[controles de calidad](../../controles-de-calidad/README.md). Da acceso a la ventana de dibujo
activa, las órdenes, los paneles y demás servicios. No se puede importar desde una aplicación de
consola.

El punto de entrada habitual es [`current_view()`](functions.md#current_view), que devuelve la
[DrawingView](drawing-view.md) activa.

`digi3d` **reexporta** además los tipos del núcleo de [digi21.base](../digi21.base/README.md),
de modo que dentro de un guion se pueden usar directamente sin importar nada más:

`FeatureCode`, `Geometry`, `Point`, `Text`, `Line`, `Polygon`, `Complex`, `DigiTabNode`,
`DrawingFile`, `Camera`, `TextJustification`, `StandardViewpoint`, `PointLineRelativePosition`.

## Clases

- [DrawingView](drawing-view.md) — la ventana de dibujo (geometrías, órdenes, configuración).
- [Command](command.md) — una orden de Digi3D.AI.
- [PythonCommand](python-command.md) — base para crear órdenes interactivas en Python.
- [Topology](topology.md) — topologías (`Topology`, `TopologyRing`, `TopologyPolygon`).
- [GeographicCalculator](geographic-calculator.md) — cálculos geográficos (áreas, distancias, azimuts).
- [Representation](representation.md) — representación gráfica de una geometría.
- [Tareas](tasks.md) — `TaskBase`, `TaskMessageBox`, `TaskGotoCoordinates`.

## Funciones y enumeraciones

- [Funciones del módulo](functions.md) — `current_view`, mensajes, paneles, diálogos y utilidades.
- [Enumeraciones](enumerations.md) — `InputDevice`, `MusicType`, `BallonType`, `TaskType`, `FillType`.
- [Excepciones](exceptions.md) — `GeometryError`, `GeometryRelationError`, `GeometryWarning`, `DatabaseFieldError`.
