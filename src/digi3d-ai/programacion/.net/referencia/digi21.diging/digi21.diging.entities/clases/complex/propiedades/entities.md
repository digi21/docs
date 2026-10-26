# Entities
<!-- id: entities -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entidades del complejo, de lectura y escritura.

```csharp
public new IList<Entity> Entities { get; }
```

## Valor de la propiedad

Una colección, siempre la misma instancia para cada complejo, que trabaja directamente sobre las entidades del complejo.

| Miembro | Descripción |
| :--- | :--- |
| `Add(Entity item)` | Añade `item` como última entidad. La entidad pasa a pertenecer al complejo: no la añadas a otro complejo, a un polígono ni a un archivo de dibujo. |
| `Insert(int index, Entity item)` | Inserta `item` en la posición `index`. Con `index` igual a `Count`, añade `item` al final. Lanza `ArgumentOutOfRangeException` si `index` es negativo o mayor que `Count`. |
| `this[int index]` | `get`: la entidad de la posición `index`, del tipo de esa entidad (`Line`, `Point`, `Text`, `Polygon` o `Complex`). `set`: sustituye la entidad por otra, que pasa a pertenecer al complejo. Los dos lanzan `ArgumentOutOfRangeException` si `index` no está entre `0` y `Count - 1`. |
| `Remove(Entity item)` | Quita de la colección la entidad indicada si coincide con una de sus entidades (la misma instancia de la entidad nativa). `Remove` devuelve `false` si no encuentra la entidad indicada por `item`. |
| `RemoveAt(int index)` | Quita la entidad de la posición `index`. Lanza `ArgumentOutOfRangeException` si `index` no está entre `0` y `Count - 1`. |
| `Clear()` | Quita todas las entidades. |
| `IndexOf(Entity item)`, `Contains(Entity item)` | Buscan la misma entidad, no una entidad con las mismas coordenadas. |
| `CopyTo(Entity[] array, int arrayIndex)` | Copia las entidades. Lanza `ArgumentNullException` si `array` es `null` y `ArgumentOutOfRangeException` si `arrayIndex` es negativo. |
| `Count` | Número de entidades. |
| `IsReadOnly` | `true` si el complejo es de solo lectura. |
| `GetEnumerator()` | Enumerador de las entidades, del tipo de cada una (`Line`, `Point`, `Text`, `Polygon` o `Complex`). Lanza `InvalidOperationException` en `MoveNext` si el número de entidades cambia durante el recorrido. |

Los métodos que modifican la colección lanzan `InvalidOperationException` si el complejo es de solo lectura. `Add`, `Insert` y el `set` del indexador lanzan además `ArgumentNullException` si la entidad es `null`, e `InvalidOperationException` si la entidad es el propio complejo o uno de los complejos que lo contienen, porque se formaría un ciclo. Si el complejo es de solo lectura, la excepción de solo lectura se lanza antes que las otras dos; en el `set` del indexador, la comprobación del índice va primero.

Esta propiedad oculta [ReadOnlyComplex.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/propiedades/entities.md).

## Ejemplo

```csharp
foreach (var entidad in complejo.Entities)
{
    if (entidad is Point punto)
        Console.WriteLine(punto.Coordinate);
}
```
