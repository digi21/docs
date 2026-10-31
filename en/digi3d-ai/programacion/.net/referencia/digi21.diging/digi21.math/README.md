# Digi21.Math
<!-- id: digi21.math -->
<!-- origen: c1ce267da48f2a8d8c568326145f758bca2bb169 -->

Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Types for points, segments, windows (boxes of minimum and maximum coordinates), angles, rotation quaternions and real number comparison with tolerance.

## Classes

| Class | Description |
| :--- | :--- |
| [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/) | Conversion between radians, degrees and gradians, between azimuths and trigonometric angles, and between rotations and rotation matrices. |
| [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) | Point or vector in the X, Y plane. |
| [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) | Point or vector in space. |
| [Point3DCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3dcollection.md) | Modifiable list of a line or polygon's vertices. |
| [Point3DEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3deventargs.md) | Argument of a command's events reporting a coordinate. |
| [Point3DReadOnlyCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3dreadonlycollection.md) | Read-only list of `Point3D` values. |
| [Precision](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) | Tolerance (epsilon) and comparisons of `double` values using that tolerance. |
| [Quaternion](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md) | Rotation quaternion with components `W`, `X`, `Y` and `Z`. The type used for text orientation in space. |
| [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md) | Segment between two `Point3D` values and operations on the infinite line through its endpoints. |
| [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) | Window in the X, Y plane. |
| [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) | Window in space. |

## Interfaces

| Interface | Description |
| :--- | :--- |
| [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) | Object moved by adding an offset to its coordinates. |
| [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/) | Object with minimum and maximum coordinates in the X, Y plane. |
| [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) | Object with minimum and maximum coordinates in space. |

## Enumerations

| Enumeration | Description |
| :--- | :--- |
| [SegmentRelation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/enumeraciones/segmentrelation.md) | Relative position of the infinite lines of two `Segment` values. |
