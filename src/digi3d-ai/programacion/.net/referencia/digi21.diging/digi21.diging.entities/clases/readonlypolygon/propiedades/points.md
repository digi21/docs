# Points
<!-- id: points-4 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Vértices del contorno exterior del polígono.

```csharp
public IReadOnlyList<Point3D> Points { get; }
```

## Valor de la propiedad

Una colección de solo lectura con las coordenadas de los vértices del contorno exterior, en orden. El último vértice repite el primero. Los vértices de los huecos están en [Holes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/holes.md).

La primera lectura de la propiedad copia los vértices, y las lecturas siguientes devuelven esa misma copia. En un [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/), `Polygon.Points` oculta esta propiedad y devuelve una colección de lectura y escritura que siempre refleja los vértices actuales; si se lee `ReadOnlyPolygon.Points` de un `Polygon` (por ejemplo, con una variable de tipo `ReadOnlyPolygon`), los cambios posteriores en los vértices no se ven en la copia.
