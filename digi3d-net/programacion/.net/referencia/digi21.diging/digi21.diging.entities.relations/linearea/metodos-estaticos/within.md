# Within

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Indica si la línea está completamente dentro del área.

![L&#xED;nea dentro del &#xE1;rea](../../../../../../../../.gitbook/assets/lineadentroarea.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Within\(ReadOnlyLine, ReadOnlyLine\)](within.md#within-readonlyline-readonlyline) | Indica si la línea está completamente dentro del área de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/). |
| [Within\(ReadOnlyLine, ReadOnlyPolygon\)](within.md#within-readonlyline-readonlypolygon) | Indica si la línea está completamente dentro del área de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/). |

## Within\(ReadOnlyLine, ReadOnlyLine\)

Indica si la línea está completamente dentro del área de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/).

```csharp
public static bool Within(ReadOnlyLine line, ReadOnlyLine area)
```

### Parámetros

`line` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Línea.

`area` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si la línea está completamente dentro del área.

## Within\(ReadOnlyLine, ReadOnlyPolygon\)

Indica si la línea está completamente dentro del área de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/).

```csharp
public static bool Within(ReadOnlyLine line, ReadOnlyPolygon area)
```

### Parámetros

`line` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Línea.

`area` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si la línea está completamente dentro del área.

