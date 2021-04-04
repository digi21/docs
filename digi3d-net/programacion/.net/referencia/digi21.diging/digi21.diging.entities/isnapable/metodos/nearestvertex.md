# NearestVertex

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Indica el vértice más cercano así como su índice y distancia.

```csharp
double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex);
```

## Parámetros

`coordinate`[Point3D](../../../digi21.math/point3d.md)  
Coordenadas del punto a analizar.

`nearestVertex` [Point3D](../../../digi21.math/point3d.md)  
Coordenadas del vértice más cercano de la geometría al punto `coordinate`.

`vertex` [Int32](https://docs.microsoft.com/en-us/dotnet/api/system.int32?view=net-5.0)  
Índice al vértice más cercano al punto `coordinate`

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Distancia del punto `coordinate` al vértice más cercano.



