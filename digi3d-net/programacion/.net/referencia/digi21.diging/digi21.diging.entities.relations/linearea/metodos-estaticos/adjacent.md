# Adjacent

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Indica si la línea es adyacente al área.

![L&#xED;nea adyacente a &#xE1;rea](../../../../../../../../.gitbook/assets/lineaadyacentearea.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Adjacent\(ReadOnlyLine, ReadOnlyLine\)](adjacent.md#adjacent-readonlyline-readonlyline) | Indica si la línea es adyacente al área de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/). |
| [Adjacent\(ReadOnlyLine, ReadOnlyPolygon\)](adjacent.md#adjacent-readonlyline-readonlypolygon) | Indica si la línea es adyacente al área de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/). |

## Adjacent\(ReadOnlyLine, ReadOnlyLine\)

Indica si la línea es adyacente al área de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/).

```csharp
public static bool Adjacent(ReadOnlyLine line, ReadOnlyLine area)
```

### Parámetros

`line` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Línea.

`area` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si la línea es adyacente al área.

## Adjacent\(ReadOnlyLine, ReadOnlyPolygon\)

Indica si la línea es adyacente al área de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/).

```csharp
public static bool Adjacent(ReadOnlyLine line, ReadOnlyPolygon area)
```

### Parámetros

`line` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Línea.

`area` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si la línea es adyacente al área.

