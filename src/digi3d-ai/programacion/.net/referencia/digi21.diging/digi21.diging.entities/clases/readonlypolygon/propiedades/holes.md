# Holes
<!-- id: holes-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Huecos del polígono.

```csharp
public IReadOnlyList<ReadOnlyLine> Holes { get; }
```

## Valor de la propiedad

Una colección de solo lectura con los huecos, en orden. Cada hueco es una línea cerrada. Los huecos de un polígono que pertenece a un archivo de dibujo tienen como `Owner` ese archivo y son de solo lectura.

La primera lectura de la propiedad crea la colección, y las lecturas siguientes devuelven la misma instancia. La colección refleja los huecos que tiene el polígono en cada momento.

En un [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/), `Polygon.Holes` oculta esta propiedad y devuelve una colección de lectura y escritura.

## Ejemplo

```csharp
foreach (var hueco in polígono.Holes)
    Console.WriteLine($"Hueco de {hueco.Points.Count} vértices");
```
