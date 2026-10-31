# Attributes
<!-- id: attributes-entity -->
<!-- origen: 62d417112f3babcdeb81152d123754335eb008dd -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity attributes: name and value. These are attributes stored with the entity in the drawing file, rather than its codes' database attributes (those are in [Code.Attributes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/attributes.md)).

```csharp
public IDictionary<string, object> Attributes { get; set; }
```

## Property value

| Entity source | Dictionary |
| :--- | :--- |
| Created with a constructor | Empty `Dictionary<string, object>` with case-sensitive keys. |
| Read from a drawing file, or copied with `Clone()` | Read-only dictionary (`ReadOnlyDictionary`) with the native entity's attributes and case-insensitive keys. `Add` and assignment by key throw `NotSupportedException`. |

The `set` accessor does not check the value or whether the entity is read-only: to change a copy's attributes, assign a new dictionary.

When adding an entity to a drawing file, each format determines which attributes it stores. For example, [BinDouble.Add(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md) stores non-`null` values.

## Example

```csharp
var copia = entidad.Clone();
copia.Attributes = new Dictionary<string, object>(entidad.Attributes)
{
    ["Revisado"] = true,
};
```
