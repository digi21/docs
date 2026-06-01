# Disjoint

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)\
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Indica si dos áreas son disjuntas.

![Área disjunta área](../../../../../../../../../.gitbook/assets/areadisjuntaarea.png)

## Sobrecargas

|                                                                                                    |                                                                                                                                                                                                 |
| -------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Disjoint(ReadOnlyLine, ReadOnlyLine)](disjoint.md#disjoint-readonlyline-readonlyline)             | Indica si las dos áreas de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son disjuntas.                                                                          |
| [Disjoint(ReadOnlyLine, ReadOnlyPolygon)](disjoint.md#disjoint-readonlyline-readonlypolygon)       | Indica dos áreas de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son disjuntas. |
| [Disjoint(ReadOnlyPolygon, ReadOnlyLine)](disjoint.md#disjoint-readonlypolygon-readonlyline)       | Indica dos áreas de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son disjuntas. |
| [Disjoint(ReadOnlyPolygon, ReadOnlyPolygon)](disjoint.md#disjoint-readonlypolygon-readonlypolygon) | Indica las dos áreas de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son disjuntas.                                                                       |

## Disjoint(ReadOnlyLine, ReadOnlyLine)

Indica si las dos áreas de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son disjuntas.

```csharp
public static bool Disjoint(ReadOnlyLine a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)\
Primera área.

`b` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)\
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)\
_Verdadero_ si las dos áreas son disjuntas.

## Disjoint(ReadOnlyLine, ReadOnlyPolygon)

Indica dos áreas de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son disjuntas.

```csharp
public static bool Disjoint(ReadOnlyLine a, ReadOnlyPolygon b)
```

### Parámetros

`a` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)\
Primera área.

`b` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)\
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)\
_Verdadero_ si las dos áreas son disjuntas.

## Disjoint(ReadOnlyPolygon, ReadOnlyLine)

Indica dos áreas de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son disjuntas.

```csharp
public static bool Disjoint(ReadOnlyPolygon a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)\
Primera área.

`b` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)\
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)\
_Verdadero_ si las dos áreas son disjuntas.

## Disjoint(ReadOnlyPolygon, ReadOnlyPolygon)

Indica las dos áreas de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son disjuntas.

```csharp
public static bool Disjoint(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

### Parámetros

`a` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)\
Primera área.

`b` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)\
Segunda área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)\
_Verdadero_ si las dos áreas son disjuntas.

