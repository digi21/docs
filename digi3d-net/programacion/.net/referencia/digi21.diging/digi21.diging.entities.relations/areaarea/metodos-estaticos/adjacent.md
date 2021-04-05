# Adjacent

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Indica si dos áreas son adyacentes.

![&#xC1;rea adyacente &#xE1;rea](../../../../../../../../.gitbook/assets/areaadyacentearea.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Adjacent\(ReadOnlyLine, ReadOnlyLine\)](adjacent.md#adjacent-readonlyline-readonlyline) | Indica si dos areas de tipo [ReadOnlyLine ](../../../digi21.diging.entities/readonlyline/)son adyacentes. |
| [Adjacent\(ReadOnlyLine, ReadOnlyPolygon\)](adjacent.md#adjacent-readonlyline-readonlypolygon) | Indica si dos áreas de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/) y [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/) son adyacentes. |
| [Adjacent\(ReadOnlyPolygon, ReadOnlyLine\)](adjacent.md#adjacent-readonlypolygon-readonlyline) | Indica si dos áreas de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/) y [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/) son adyacentes. |
| [Adjacent\(ReadOnlyPolygon, ReadOnlyPolygon\)](adjacent.md#adjacent-readonlypolygon-readonlypolygon) | Indica si dos áreas de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/) son adyacentes. |

## Adjacent\(ReadOnlyLine, ReadOnlyLine\)

Indica si dos areas de tipo [ReadOnlyLine ](../../../digi21.diging.entities/readonlyline/)son adyacentes.

```csharp
public static bool Adjacent(ReadOnlyLine a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Primera área.

`b` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si las dos áreas son adyacentes.

## Adjacent\(ReadOnlyLine, ReadOnlyPolygon\)

Indica si dos áreas de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/) y [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/) son adyacentes.

```csharp
public static bool Adjacent(ReadOnlyLine a, ReadOnlyPolygon b)
```

### Parámetros

`a` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Primera área.

`b` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si las dos áreas son adyacentes.

## Adjacent\(ReadOnlyPolygon, ReadOnlyLine\)

Indica si dos áreas de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)y [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/) son adyacentes.

```csharp
public static bool Adjacent(ReadOnlyPolygon a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Primera área.

`b` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si las dos áreas son adyacentes.

## Adjacent\(ReadOnlyPolygon, ReadOnlyPolygon\)

Indica si dos áreas de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/) son adyacentes.

```csharp
public static bool Adjacent(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

### Parámetros

`a` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Primera área.

`b` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si las dos áreas son adyacentes.

