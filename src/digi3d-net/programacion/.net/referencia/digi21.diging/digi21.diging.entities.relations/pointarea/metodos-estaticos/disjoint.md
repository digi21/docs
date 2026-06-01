# Disjoint

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Indica si el punto y el área son disjuntos.

![Punto y &#xE1;rea disjuntos](../../../../../../../../.gitbook/assets/puntoareanocoincidentes.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Disjoint\(ReadOnlyPoint, ReadOnlyLine\)](disjoint.md#disjoint-readonlypoint-readonlyline) | Indica si el [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) son disjuntos. |
| [Disjoint\(ReadOnlyPoint, ReadOnlyPolygon\)](disjoint.md#disjoint-readonlypoint-readonlypolygon) | Indica si el [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) son disjuntos. |

## Disjoint\(ReadOnlyPoint, ReadOnlyLine\)

Indica si el [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) son disjuntos.

```csharp
public static bool Disjoint(ReadOnlyPoint point, ReadOnlyLine area)
```

### Parámetros

`point` [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/)  
Punto.

`area` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Area.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si el punto y la línea son disjuntos.

## Disjoint\(ReadOnlyPoint, ReadOnlyPolygon\)

Indica si el [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) son disjuntos.

```csharp
public static bool Disjoint(ReadOnlyPoint point, ReadOnlyPolygon area)
```

### Parámetros

`point` [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/)  
Punto.

`area` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)  
Area.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si el punto y la línea son disjuntos.

