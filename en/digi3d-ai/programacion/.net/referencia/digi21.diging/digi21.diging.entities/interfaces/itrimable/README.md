# ITrimable
<!-- id: itrimmable -->
<!-- origen: f9a2d7cd337435980e4c431176285df5ea810898 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Enclosed area from which another enclosed area's area can be subtracted.

```csharp
public interface ITrimable
```

Implementing types: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) (and [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/)) and [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) (and [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)).

## Methods

| Member | Description |
| :--- | :--- |
| [`IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/metodos/trim.md) | Returns the parts of this entity outside `limit` as new polygons. |

## Example

The [IClippable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/#example) uses `Trim` to obtain the part of a parcel outside a boundary.
