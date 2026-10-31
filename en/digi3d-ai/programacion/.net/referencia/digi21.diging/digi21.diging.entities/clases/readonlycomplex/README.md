# ReadOnlyComplex
<!-- id: readonlycomplex -->
<!-- origen: 539b5e720e695cddaabf5047a6e28f2b4d70c491 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read-only complex: an entity with its own codes composed of other entities. The type of complexes returned by drawing files when iterating through their entities.

```csharp
public class ReadOnlyComplex : Entity
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyComplex`

Derived types: [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/).

Implements: the interfaces of `Entity`. Unlike lines and polygons, a complex does not implement `ISnapable`, `IClippable` or `ITrimable`.

The class has no public constructors. To create a complex, use [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/).

Members inherited from `Entity` are described in [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Properties

| Property | Description |
| :--- | :--- |
| [`IEnumerable<Entity> Entities { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/propiedades/entities.md) | Complex entities, in order, with each entity's type. |

## Methods

| Method | Description |
| :--- | :--- |
| [`Complex Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/metodos/clone.md) | Read/write copy of the complex, with a copy of each entity. |
| `string ToString()` | Localized text with the type and `Entity` data. Does not include the complex's entities. |

## Example

This program lists a `.bind` file's complexes with the type and code of each contained entity:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;

if (args.Length != 1)
{
    Console.WriteLine("Uso: LeeComplejos <entrada.bind>");
    return 1;
}

using var entrada = new BinDouble(args[0], true);

foreach (var entidad in entrada)
{
    if (entidad.Deleted || entidad is not ReadOnlyComplex complejo)
        continue;

    Console.WriteLine($"Complejo {complejo.Codes[0].Name}");

    foreach (var parte in complejo.Entities)
        Console.WriteLine($"  {parte.GetType().Name} {parte.Codes[0].Name}");
}

return 0;
```
