# Holes

Espacio de nombres: [Digi21.DigiNG.Entities](../../../)  
Ensamblado: [Digi21.DigiNG](../../../../)

Devuelve una lista de solo lectura con los huecos del [ReadOnlyPolygon](../).

```csharp
public IReadOnlyList<ReadOnlyLine> Holes { get; }
```

## Valor de la propiedad

[IReadOnlyList&lt;ReadOnlyLine&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0)

Huecos del polígono.

## Observaciones

Un polígono puede tener 0 o más huecos. Los son líneas cerradas que tienen la particularidad de que no se salen del polígono principal.



