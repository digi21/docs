# OuterRingAdjacent

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../../)  
Ensamblado: [Digi21.DigiNG](../../../../)

Indica si los límites exteriores de las áreas son adyacentes.

![&#xC1;rea adyacente &#xE1;rea](../../../../../../../../../.gitbook/assets/areaadyacentearea.png)

## Observaciones

Este método tiene en consideración únicamente el límite exterior de los [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/), de manera que, si la otra área es adyacente a algún hueco, no se considerará.

## Sobrecargas

|  |  |
| :--- | :--- |
| [OuterRingAdjacent\(ReadOnlyLine, ReadOnlyPolygon\)](outerringadjacent.md#outerringadjacent-readonlyline-readonlypolygon) | Indica si el área [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) es adyacente al área representada por el límite exterior del [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/). |
| [OuterRingAdjacent\(ReadOnlyPolygon, ReadOnlyLine\)](outerringadjacent.md#outerringadjacent-readonlypolygon-readonlyline) | Indica si el área [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) es adyacente al área representada por el límite exterior del [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/). |
| [OuterRingAdjacent\(ReadOnlyPolygon, ReadOnlyPolygon\)](outerringadjacent.md#outerringadjacent-readonlypolygon-readonlypolygon) | Indica si el límite exterior de los dos  [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/) son adyacentes. |

## OuterRingAdjacent\(ReadOnlyLine, ReadOnlyPolygon\)

Indica si el área [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) es adyacente al área representada por el límite exterior del [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/).

```csharp
public static bool OuterRingAdjacent(ReadOnlyLine a, ReadOnlyPolygon b) 
```

### Parámetros

`a` [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/)  
Primera área.

`b` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si las dos áreas son adyacentes.

## OuterRingAdjacent\(ReadOnlyPolygon, ReadOnlyLine\)

Indica si el área [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) es adyacente al área representada por el límite exterior del [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/).

```csharp
public static bool OuterRingAdjacent(ReadOnlyPolygon a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Primera área.

`b` [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si las dos áreas son adyacentes.

## OuterRingAdjacent\(ReadOnlyPolygon, ReadOnlyPolygon\)

Indica si el límite exterior de los dos  [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/) son adyacentes.

```csharp
public static bool OuterRingAdjacent(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

### Parámetros

`a` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Primera área.

`b` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si las dos áreas son adyacentes.

