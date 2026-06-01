# Trim

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)   
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)​‌

Indica el vértice más cercano así como su índice y distancia.

```csharp
IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity);‌
```

## Parámetros

`limit`[ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Línea límite por la que se cortará la geometría.

`coordinateZFromThisEntity` [Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Indica si la coordenada Z de aquellos vértices sobre la línea de límite deben tener la coordenada Z de la línea de límite.

## Devuelve

[IEnumerable&lt;&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Enumeración con los polígonos resultantes de cortar la geometría por el límite.



