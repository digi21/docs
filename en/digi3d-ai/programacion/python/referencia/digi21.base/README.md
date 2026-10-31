# digi21.base
<!-- id: digi21.base -->
<!-- origen: be79bf95fd8bb6760742d513fb36ea40803ea82d -->

Core Digi3D.AI types. This package does not open or create files; use [digi21.io](../digi21.io/README.md) for that.

```python
import digi21.base
from digi21.base import Point, Line, Polygon, FeatureCode, DigiTab, Camera
```

## Classes

| Class | Description |
|---|---|
| [FeatureCode](featurecode.md) | Digi3D.AI code |
| [DigiTab](digitab.md) | Code table (`digi.tab`) |
| [DigiTabNode](digitabnode.md) | Code table node |
| [Geometry](geometry.md) | Base class for all geometries |
| [Point](point.md) | Point |
| [Text](text.md) | Text |
| [Line](line.md) | Polyline |
| [Polygon](polygon.md) | Polygon (closed line with holes) |
| [Complex](complex.md) | Complex entity grouping geometries |
| [Camera](camera.md) | Camera (position, rotations, projection) |
| [DrawingFile](drawingfile.md) | Open drawing file (returned by `open` in `digi21.io`) |
| [DrawingWriter](drawingwriter.md) | Drawing file being written (returned by `create` in `digi21.io`) |

## Enumerations

| Enumeration | Description |
|---|---|
| [TextJustification](textjustification.md) | `Text` justification |
| [PointLineRelativePosition](pointlinerelativeposition.md) | Point position relative to a line |
| [StandardViewpoint](standardviewpoint.md) | Standard camera viewpoint |
