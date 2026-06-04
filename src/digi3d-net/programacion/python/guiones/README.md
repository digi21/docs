# Guiones en el panel de Digi3D.NET

Además de los paquetes autónomos [digi21.base](../referencia/digi21.base/README.md) y
[digi21.io](../referencia/digi21.io/README.md) (que se ejecutan en un intérprete de
Python normal), Digi3D.NET incorpora un **intérprete de Python embebido** que ejecuta
guiones **dentro de la propia aplicación**, con acceso a la ventana de dibujo, las
órdenes, los paneles y demás servicios del programa.

Estos guiones disponen de un módulo especial, **`digi3d`**, que solo existe dentro de
Digi3D.NET (no se puede importar desde un Python de consola).

```python
import digi3d

view = digi3d.current_view()
for geometry in view:
    print(type(geometry).__name__)
```

## Formas de ejecutar un guion

Un guion se puede ejecutar desde el **panel de Guiones Python**, **como una orden** (por su
nombre, desde la consola de órdenes) o como **control de calidad**. Lo explica
[Cómo ejecutar guiones](ejecutar-guiones.md).

## El módulo `digi3d`

El punto de entrada habitual es [`current_view()`](functions.md#current_view), que
devuelve la [DrawingView](drawing-view.md) activa.

`digi3d` **reexporta** además los tipos del núcleo de
[digi21.base](../referencia/digi21.base/README.md), de modo que dentro de un guion se
pueden usar directamente sin importar nada más:

`FeatureCode`, `Geometry`, `Point`, `Text`, `Line`, `Polygon`, `Complex`,
`DigiTabNode`, `DrawingFile`, `Camera`, `TextJustification`, `StandardViewpoint`,
`PointLineRelativePosition`.

```python
import digi3d

# Crear una línea y añadirla a la ventana de dibujo activa
linea = digi3d.Line(["CARR"], [(0, 0, 0), (10, 0, 0), (10, 10, 0)])
digi3d.current_view().add(linea)
```

## Contenido

### Guías

- [Cómo ejecutar guiones](ejecutar-guiones.md) — panel, orden (consola) y control de calidad.
- [Controles de calidad](controles-de-calidad.md) — funciones que validan geometrías.

### Clases

- [DrawingView](drawing-view.md) — la ventana de dibujo (geometrías, órdenes, configuración).
- [Command](command.md) — una orden de Digi3D.NET.
- [PythonCommand](python-command.md) — base para crear órdenes interactivas en Python.
- [Topology](topology.md) — topologías (`Topology`, `TopologyRing`, `TopologyPolygon`).
- [GeographicCalculator](geographic-calculator.md) — cálculos geográficos (áreas, distancias, azimuts).
- [Representation](representation.md) — representación gráfica de una geometría.
- [Tareas](tasks.md) — `TaskBase`, `TaskMessageBox`, `TaskGotoCoordinates`.

### Funciones y enumeraciones

- [Funciones del módulo](functions.md) — `current_view`, mensajes, paneles, diálogos y utilidades.
- [Enumeraciones](enumerations.md) — `InputDevice`, `MusicType`, `BallonType`, `TaskType`, `FillType`.
- [Excepciones](exceptions.md) — `GeometryError`, `GeometryRelationError`, `GeometryWarning`, `DatabaseFieldError`.

## Véase también

- [Referencia: digi21.base](../referencia/digi21.base/README.md) — los tipos del núcleo que `digi3d` reexporta.
