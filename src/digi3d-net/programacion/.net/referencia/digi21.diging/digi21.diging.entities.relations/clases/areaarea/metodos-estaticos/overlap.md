# Overlap

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)\
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Indica si las dos áreas solapan.

![Área solapa área](../../../../../../../../../.gitbook/assets/areasolapaarea.png)

![Área solapa área](../../../../../../../../../.gitbook/assets/areasolapaarea2.png)

## Sobrecargas

|                                                                                                                            |                                                                                                                                                                                                                                                                                |
| -------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Overlap(ReadOnlyLine, ReadOnlyLine, out Point3D)](overlap.md#overlap-readonlyline-readonlyline-out-point-3-d)             | Indica si las dos áreas de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) solapan y devuelve además las coordenadas de un punto por el que se cruzan.                                                                                            |
| [Overlap(ReadOnlyLine, ReadOnlyPolygon, out Point3D)](overlap.md#overlap-readonlyline-readonlypolygon-out-point-3-d)       | Indica si el área de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Overlap(ReadOnlyPolygon, ReadOnlyLine, out Point3D)](overlap.md#overlap-readonlypolygon-readonlyline-out-point-3-d)       | Indica si el área de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Overlap(ReadOnlyPolygon, ReadOnlyPolygon, out Point3D)](overlap.md#overlap-readonlypolygon-readonlypolygon-out-point-3-d) | Indica si las dos áreas de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) solapan y devuelve además las coordenadas de un punto por el que se cruzan.                                                                                      |

## Overlap(ReadOnlyLine, ReadOnlyLine, out Point3D)

Indica si las dos áreas de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) solapan y devuelve además las coordenadas de un punto por el que se cruzan.

```csharp
public static bool Overlap(ReadOnlyLine a, ReadOnlyLine b, out Point3D coordinate)
```

### Parámetros

`a` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)\
Primera área.

`b` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)\
Segunda área.

`coordinate` [Point3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md)\
Una coordenada en la que cortan los polígonos. Este parámetro se puede utilizar para mostrar un error al usuario en caso de que el solape sea un error.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)\
_Verdadero_ si las dos áreas solapan.

## Overlap(ReadOnlyLine, ReadOnlyPolygon, out Point3D)

Indica si el área de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) y devuelve además las coordenadas de un punto por el que se cruzan.

```csharp
public static bool Overlap(ReadOnlyLine a, ReadOnlyPolygon b, out Point3D coordinate)
```

### Parámetros

`a` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)\
Primera área.

`b` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)\
Segunda área.

`coordinate` [Point3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md)\
Una coordenada en la que cortan los polígonos. Este parámetro se puede utilizar para mostrar un error al usuario en caso de que el solape sea un error.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)\
_Verdadero_ si las dos áreas solapan.

## Overlap(ReadOnlyPolygon, ReadOnlyLine, out Point3D)

Indica si el área de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) y devuelve además las coordenadas de un punto por el que se cruzan.

```csharp
public static bool Overlap(ReadOnlyPolygon a, ReadOnlyLine b, out Point3D coordinate)
```

### Parámetros

`a` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)\
Primera área.

`b` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)\
Segunda área.

`coordinate` [Point3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md)\
Una coordenada en la que cortan los polígonos. Este parámetro se puede utilizar para mostrar un error al usuario en caso de que el solape sea un error.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)\
_Verdadero_ si las dos áreas solapan.

## Overlap(ReadOnlyPolygon, ReadOnlyPolygon, out Point3D)

Indica si las dos áreas de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) solapan y devuelve además las coordenadas de un punto por el que se cruzan.

```csharp
public static bool Overlap(ReadOnlyPolygon a, ReadOnlyPolygon b, out Point3D coordinate)
```

### Parámetros

`a` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)\
Primera área.

`b` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)\
Segunda área.

`coordinate` [Point3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md)\
Una coordenada en la que cortan los polígonos. Este parámetro se puede utilizar para mostrar un error al usuario en caso de que el solape sea un error.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)\
_Verdadero_ si las dos áreas solapan.



