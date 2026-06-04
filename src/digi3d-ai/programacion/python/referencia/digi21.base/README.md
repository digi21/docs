# digi21.base

Tipos del núcleo de Digi3D.AI. No abre archivos (para eso está
[digi21.io](../digi21.io/README.md)).

```python
import digi21.base
from digi21.base import Point, Line, Polygon, FeatureCode, DigiTab, Camera
```

## Clases

| Clase | Descripción |
|---|---|
| [FeatureCode](featurecode.md) | Un código de Digi3D.AI. |
| [DigiTab](digitab.md) | Tabla de códigos (`digi.tab`). |
| [DigiTabNode](digitabnode.md) | Nodo de una tabla de códigos. |
| [Geometry](geometry.md) | Clase base de todas las geometrías. |
| [Point](point.md) | Un punto. |
| [Text](text.md) | Un texto. |
| [Line](line.md) | Una polilínea. |
| [Polygon](polygon.md) | Un polígono (línea cerrada con huecos). |
| [Complex](complex.md) | Un elemento complejo que agrupa geometrías. |
| [Camera](camera.md) | Una cámara (posición, rotaciones, proyección). |
| [DrawingFile](drawingfile.md) | Un archivo de dibujo abierto (lo devuelve `digi21.io`). |

## Enumeraciones

| Enumeración | Descripción |
|---|---|
| [TextJustification](textjustification.md) | Justificación de un `Text`. |
| [PointLineRelativePosition](pointlinerelativeposition.md) | Posición de un punto respecto a una línea. |
| [StandardViewpoint](standardviewpoint.md) | Punto de vista estándar de una cámara. |
