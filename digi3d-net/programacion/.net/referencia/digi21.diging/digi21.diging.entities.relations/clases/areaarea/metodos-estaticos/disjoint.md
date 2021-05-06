# Disjoint

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../../)  
Ensamblado: [Digi21.DigiNG](../../../../)

Indica si dos áreas son disjuntas.

![&#xC1;rea disjunta &#xE1;rea](../../../../../../../../../.gitbook/assets/areadisjuntaarea.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Disjoint\(ReadOnlyLine, ReadOnlyLine\)](disjoint.md#disjoint-readonlyline-readonlyline) | Indica si las dos áreas de tipo [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) son disjuntas. |
| [Disjoint\(ReadOnlyLine, ReadOnlyPolygon\)](disjoint.md#disjoint-readonlyline-readonlypolygon) | Indica dos áreas de tipo [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) y [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/) son disjuntas. |
| [Disjoint\(ReadOnlyPolygon, ReadOnlyLine\)](disjoint.md#disjoint-readonlypolygon-readonlyline) | Indica dos áreas de tipo [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/) y [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) son disjuntas. |
| [Disjoint\(ReadOnlyPolygon, ReadOnlyPolygon\)](disjoint.md#disjoint-readonlypolygon-readonlypolygon) | Indica las dos áreas de tipo [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/) son disjuntas. |

## Disjoint\(ReadOnlyLine, ReadOnlyLine\)

Indica si las dos áreas de tipo [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) son disjuntas.

```csharp
public static bool Disjoint(ReadOnlyLine a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/)  
Primera área.

`b` [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si las dos áreas son disjuntas.

## Disjoint\(ReadOnlyLine, ReadOnlyPolygon\)

Indica dos áreas de tipo [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) y [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/) son disjuntas.

```csharp
public static bool Disjoint(ReadOnlyLine a, ReadOnlyPolygon b)
```

### Parámetros

`a` [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/)  
Primera área.

`b` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si las dos áreas son disjuntas.

## Disjoint\(ReadOnlyPolygon, ReadOnlyLine\)

Indica dos áreas de tipo [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/) y [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) son disjuntas.

```csharp
public static bool Disjoint(ReadOnlyPolygon a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Primera área.

`b` [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si las dos áreas son disjuntas.

## Disjoint\(ReadOnlyPolygon, ReadOnlyPolygon\)

Indica las dos áreas de tipo [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/) son disjuntas.

```csharp
public static bool Disjoint(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

### Parámetros

`a` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Primera área.

`b` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si las dos áreas son disjuntas.



