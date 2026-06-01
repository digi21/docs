# Join

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Indica si la línea se junta con el área.

![L&#xED;nea junta &#xE1;rea](../../../../../../../../.gitbook/assets/lineajuntaarea.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Join\(ReadOnlyLine, ReadOnlyLine\)](join.md#join-readonlyline-readonlyline) | Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [Join\(ReadOnlyLine, ReadOnlyPolygon\)](join.md#join-readonlyline-readonlypolygon) | Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Join\(ReadOnlyLine, ReadOnlyLine\)

Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/).

```csharp
public static bool Join(ReadOnlyLine line, ReadOnlyLine area)
```

### Parámetros

`line` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Línea.

`area` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si la línea se junta con el área.

## Join\(ReadOnlyLine, ReadOnlyPolygon\)

Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/).

```csharp
 public static bool Join(ReadOnlyLine line, ReadOnlyPolygon area)
```

### Parámetros

`line` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Línea.

`area` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si la línea se junta con el área.

