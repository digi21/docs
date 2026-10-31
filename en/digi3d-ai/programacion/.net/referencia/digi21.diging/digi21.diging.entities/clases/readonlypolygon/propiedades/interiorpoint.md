# InteriorPoint
<!-- id: interiorpoint -->
<!-- origen: 956c9fcbba07797942cf854c6b1828386df797f4 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordinates of a point in the polygon's enclosed area, outside all holes.

```csharp
public Point3D InteriorPoint { get; }
```

## Property value

A point calculated on the horizontal line through the mean Y of the polygon's minimum and maximum coordinates, inside the outer boundary and outside holes. Unlike [Entity.Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md), this point lies inside the enclosed area even for concave polygons or polygons with holes.

The property does not check whether the polygon has vertices. Its implementation for lines is described in [ICloseable.InteriorPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md).
