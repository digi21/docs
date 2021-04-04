# NearestSegment

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Indica el segmento más cercano y calcula la proyección a dicho segmento además de devolver la distancia a dicho punto.

```csharp
double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment);‌
```

## Parámetros

`coordinate`[Point3D](../../../digi21.math/point3d.md)  
Coordenadas del punto a analizar.

`calculatedCoordinate` [Point3D](../../../digi21.math/point3d.md)  
Coordenadas de la proyección del punto `coordinate` contra el segmento.

`segment` [Int32](https://docs.microsoft.com/en-us/dotnet/api/system.int32?view=net-5.0)  
Segmento más cercano al punto `coordinate`

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Distancia del punto `coordinate` al punto `calculatedCoordinate`.



