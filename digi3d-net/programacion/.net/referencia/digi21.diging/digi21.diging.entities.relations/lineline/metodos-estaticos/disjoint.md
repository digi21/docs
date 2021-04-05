# Disjoint

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Indica si las dos [ReadOnlyLine ](../../../digi21.diging.entities/readonlyline/)son disjuntas.

![L&#xED;nea disjunta con l&#xED;nea](../../../../../../../../.gitbook/assets/lineanocoincidentelinea.png)

```csharp
public static bool Disjoint(ReadOnlyLine a, ReadOnlyLine b)
```

### Parámetros

`a` [ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Primera línea.

`b` [ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Segunda línea.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si las dos líneas son disjuntas.

