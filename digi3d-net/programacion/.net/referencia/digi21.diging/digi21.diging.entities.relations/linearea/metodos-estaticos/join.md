# Join

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Indica si la línea se junta con el área.

![L&#xED;nea junta &#xE1;rea](../../../../../../../../.gitbook/assets/lineajuntaarea.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Join\(ReadOnlyLine, ReadOnlyLine\)](join.md#join-readonlyline-readonlyline) | Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/). |
| [Join\(ReadOnlyLine, ReadOnlyPolygon\)](join.md#join-readonlyline-readonlypolygon) | Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/). |

## Join\(ReadOnlyLine, ReadOnlyLine\)

Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/).

```csharp
public static bool Join(ReadOnlyLine line, ReadOnlyLine area)
```

### Parámetros

`line` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Línea.

`area` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si la línea se junta con el área.

## Join\(ReadOnlyLine, ReadOnlyPolygon\)

Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/).

```csharp
 public static bool Join(ReadOnlyLine line, ReadOnlyPolygon area)
```

### Parámetros

`line` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Línea.

`area` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si la línea se junta con el área.

