# EndpointJoinExcludingEndpoints

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../../)  
Ensamblado: [Digi21.DigiNG](../../../../)

Indica uno de los extremos de la primera [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) está unido a la segunda [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/) excluyendo los extremos de la segunda\).

![Extremo de l&#xED;nea que se une a l&#xED;nea \(excluyendo sus extremos\)](../../../../../../../../../.gitbook/assets/extremolineaunelineaexcluyendoextremos.png)

```csharp
public static bool EndpointJoinExcludingEndpoints(ReadOnlyLine a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/)  
Primera línea.

`b` [ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Segunda línea.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si uno de los extremos de la primera línea se une a la segunda línea \(excepto por los extremos de la segunda línea\).

