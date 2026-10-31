# Attributes
<!-- id: attributes -->
<!-- origen: e0d1f0bef85893066690625450a34b1551b068c6 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Code's database attributes: table field name and value.

```csharp
public IDictionary<string, object> Attributes { get; set; }
```

## Property value

| Code source | Dictionary |
| :--- | :--- |
| Created with `Code(string)`, `Code(string, int, int)` or `Code(string, int?, int?)` | Empty `Dictionary<string, object>` with case-sensitive keys. |
| Created with `Code(string, IDictionary<string, object>)` | Dictionary passed to the constructor. |
| Read from a drawing file | Read-only dictionary (`ReadOnlyDictionary`) with case-insensitive keys. `Add` and assignment by key throw `NotSupportedException`. To change attributes, assign another dictionary to the property. |
| Copy of an entity made with `Entity.Clone()` | `Dictionary<string, object>` with a copy of the original's attributes. |

The `set` accessor does not check the value: it accepts `null`.

`Code` is a structure: assigning `Attributes` on an element of `Entity.Codes` modifies a copy. Then assign the copy to `Entity.Codes[i]`.

When adding an entity to a `.bind` file with a database, each code's attributes are stored in the database. Read [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md).

## Example

```csharp
var código = new Code("020400")
{
    Attributes = new Dictionary<string, object>
    {
        { "Propietario", "Dylan" },
        { "Alturas", 3 },
        { "Superficie", 200.0 },
    },
};
```
