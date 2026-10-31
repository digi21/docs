# Digi21.DigiNG.Entities
<!-- id: digi21.diging.entities -->
<!-- origen: 942872df206c447f5303231ff21c0f95dfc5cc13 -->

Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Types for drawing file entities (lines, points, text, polygons and complexes), their codes and geometric operations on them.

Each entity type has two classes:

- The read-only class (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon`, `ReadOnlyComplex`) is returned by drawing files when iterating through their entities.
- The read/write class (`Line`, `Point`, `Text`, `Polygon`, `Complex`) inherits from the preceding class, has public constructors and adds members that modify the entity.

An entity cannot be modified when it belongs to a drawing file (its `Owner` property is not `null`). To modify an entity read from a file, modify the copy returned by `Clone()`.

## Classes

| Class | Description |
| :--- | :--- |
| [CodeCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/codecollection/) | Collection of an entity's codes, returned by `Entity.Codes`. |
| [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/) | Read/write complex: an entity composed of other entities. |
| [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) | Abstract base class of all entities. |
| [GeometryFactory](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/) | Extension methods creating new entities from others. |
| [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) | Read/write line. |
| [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) | Read/write point. |
| [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) | Read/write polygon: an outer boundary and its holes. |
| [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/) | Read-only complex. |
| [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) | Read-only line. |
| [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) | Read-only point. |
| [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) | Read-only polygon. |
| [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/) | Read-only text. |
| [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) | Read/write text. |

## Structures

| Structure | Description |
| :--- | :--- |
| [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/) | Entity code: name and, optionally, a link to a database record. |
| [SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/) | Reference to a line segment. |
| [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) | Reference to a line vertex. |

## Interfaces

| Interface | Description |
| :--- | :--- |
| [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/) | Entities that can be split by a boundary line. |
| [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/) | Entities that can enclose an area. |
| [IDirectionable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/) | Entities whose direction can be reversed. |
| [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/) | Entities in which the closest vertex or segment to a coordinate can be found. |
| [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/) | Entities from which a boundary line's enclosed area is subtracted. |

## Enumerations

| Enumeration | Description |
| :--- | :--- |
| [PointPosition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/pointposition.md) | Coordinate's position relative to an enclosed area. |
| [TextJustification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/textjustification.md) | Text insertion point. |
