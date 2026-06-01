# Across

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Indica si la línea cruza el área.

![L&#xED;nea que cruza &#xE1;rea](../../../../../../../../.gitbook/assets/lineacruzaarea.png)

![L&#xED;nea que cruza &#xE1;rea](../../../../../../../../.gitbook/assets/lineacruzaarea2.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Across\(ReadOnlyLine, ReadOnlyLine\)](across.md#across-readonlyline-readonlyline) | Indica si la línea cruza el área de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [Across\(ReadOnlyLine, ReadOnlyPolygon\)](across.md#across-readonlyline-readonlypolygon) | Indica si la línea cruza el área de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Across\(ReadOnlyLine, ReadOnlyLine\)

Indica si la línea cruza el área de tipo [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/).

```csharp
public static bool Across(ReadOnlyLine line, ReadOnlyLine area)
```

### Parámetros

`line` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Línea.

`area` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si la línea cruza el área.

## Across\(ReadOnlyLine, ReadOnlyPolygon\)

Indica si la línea cruza el área de tipo [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/).

```csharp
 public static bool Across(ReadOnlyLine line, ReadOnlyPolygon area)
```

### Parámetros

`line` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Línea.

`area` [ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si la línea cruza el área.



