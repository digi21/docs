# Across

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Indica si la línea cruza el área.

![L&#xED;nea que cruza &#xE1;rea](../../../../../../../../.gitbook/assets/lineacruzaarea.png)

![L&#xED;nea que cruza &#xE1;rea](../../../../../../../../.gitbook/assets/lineacruzaarea2.png)

## Sobrecargas

|  |  |
| :--- | :--- |
| [Across\(ReadOnlyLine, ReadOnlyLine\)](across.md#across-readonlyline-readonlyline) | Indica si la línea cruza el área de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/). |
| [Across\(ReadOnlyLine, ReadOnlyPolygon\)](across.md#across-readonlyline-readonlypolygon) | Indica si la línea cruza el área de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/). |

## Across\(ReadOnlyLine, ReadOnlyLine\)

Indica si la línea cruza el área de tipo [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/).

```csharp
public static bool Across(ReadOnlyLine line, ReadOnlyLine area)
```

### Parámetros

`line` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Línea.

`area` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si la línea cruza el área.

## Across\(ReadOnlyLine, ReadOnlyPolygon\)

Indica si la línea cruza el área de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/).

```csharp
 public static bool Across(ReadOnlyLine line, ReadOnlyPolygon area)
```

### Parámetros

`line` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Línea.

`area` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Área.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si la línea cruza el área.



