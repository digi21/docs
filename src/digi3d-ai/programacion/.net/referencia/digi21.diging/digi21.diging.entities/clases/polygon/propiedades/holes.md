# Holes
<!-- id: holes -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Huecos del polígono, de lectura y escritura.

```csharp
public new IList<Line> Holes { get; }
```

## Valor de la propiedad

Una colección, siempre la misma instancia para cada polígono, que trabaja directamente sobre los huecos del polígono. Cada hueco es una [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) cerrada: el último vértice repite el primero.

| Miembro | Descripción |
| :--- | :--- |
| `Add(Line item)` | Añade `item` como último hueco. La línea pasa a pertenecer al polígono: no la añadas a otro polígono, a un complejo ni a un archivo de dibujo. Lanza `ArgumentNullException` si `item` es `null`. |
| `Insert(int index, Line item)` | Inserta `item` en la posición `index`. Con `index` igual a `Count`, añade `item` al final. Lanza `ArgumentOutOfRangeException` si `index` es negativo o mayor que `Count`, y `ArgumentNullException` si `item` es `null`. |
| `this[int index]` | `get`: el hueco de la posición `index`. `set`: sustituye el hueco por otra línea, que pasa a pertenecer al polígono. Lanza `ArgumentOutOfRangeException` si `index` no está entre `0` y `Count - 1`, y `ArgumentNullException` si la línea asignada es `null`. |
| `Remove(Line item)` | Quita de la colección el hueco que corresponde a la línea indicada (la misma instancia de la entidad nativa). `Remove` devuelve `false` si no encuentra la línea indicada por `item` o si `item` es `null`. |
| `RemoveAt(int index)` | Quita el hueco de la posición `index`. Lanza `ArgumentOutOfRangeException` si `index` no está entre `0` y `Count - 1`. |
| `Clear()` | Quita todos los huecos. |
| `IndexOf(Line item)`, `Contains(Line item)` | Buscan la misma línea, no una línea con los mismos vértices. Con `item` igual a `null`, `IndexOf` devuelve `-1` y `Contains` devuelve `false`. |
| `CopyTo(Line[] array, int arrayIndex)` | Copia los huecos. Lanza `ArgumentNullException` si `array` es `null` y `ArgumentOutOfRangeException` si `arrayIndex` es negativo. |
| `Count` | Número de huecos. |
| `IsReadOnly` | `true` si el polígono es de solo lectura. |

Los métodos que modifican la colección lanzan `InvalidOperationException` si el polígono es de solo lectura.

Esta propiedad oculta [ReadOnlyPolygon.Holes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/holes.md), de tipo `IReadOnlyList<ReadOnlyLine>`.

## Ejemplo

```csharp
var hueco = new Line(new Code("080100"));
hueco.Points.Add(new[]
{
    new Point3D(40, 40, 0),
    new Point3D(40, 60, 0),
    new Point3D(60, 60, 0),
    new Point3D(40, 40, 0),
});
polígono.Holes.Add(hueco);
```
