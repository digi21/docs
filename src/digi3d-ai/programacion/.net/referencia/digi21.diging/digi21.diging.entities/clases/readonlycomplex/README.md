# ReadOnlyComplex
<!-- id: readonlycomplex -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Complejo de solo lectura: una entidad con sus propios códigos formada por otras entidades. Es el tipo de los complejos que devuelven los archivos de dibujo al recorrer sus entidades.

```csharp
public class ReadOnlyComplex : Entity
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyComplex`

Tipos derivados: [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/).

Implementa: las interfaces de `Entity`. A diferencia de las líneas y los polígonos, un complejo no implementa `ISnapable`, `IClippable` ni `ITrimable`.

La clase no tiene constructores públicos. Para crear un complejo, usa [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/).

Los miembros heredados de `Entity` se describen en [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`IEnumerable<Entity> Entities { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/propiedades/entities.md) | Entidades del complejo, en orden, del tipo de cada una. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [`Complex Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/metodos/clone.md) | Copia de lectura y escritura del complejo, con una copia de cada entidad. |
| `string ToString()` | Texto localizado con el tipo y los datos de `Entity`. No incluye las entidades del complejo. |

## Ejemplo

Este programa lista los complejos de un archivo `.bind` con el tipo y el código de cada una de sus entidades:

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
