# CommandAttribute
<!-- id: commandattribute -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Command`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Marca una clase como orden de Digi3D.AI y le asigna el nombre con el que el usuario la ejecuta.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class CommandAttribute : Attribute
```

Digi3D.AI registra como orden cada clase pública de la extensión que tiene este atributo o un atributo derivado, como [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/atributos/localizablecommandattribute.md). La clase tiene que derivar de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/clases/command.md) y tener un constructor público sin parámetros.

El nombre de la orden es `Name` convertido a minúsculas: Digi3D.AI no distingue mayúsculas de minúsculas al ejecutarla. Si ya hay una orden .NET registrada con ese nombre, Digi3D.AI conserva la que ya tenía y no registra la nueva; la orden `CARGA_ENSAMBLADO` lo indica en la ventana de resultados. Si `Name` es `null`, Digi3D.AI no registra la clase.

## Constructores

```csharp
public CommandAttribute()
```

Crea el atributo con las tres propiedades a `null`. Las propiedades se asignan con la sintaxis de argumentos con nombre: `[Command(Name = "MI_ORDEN")]`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Name { get; set; }` | Nombre de la orden. |
| `string Description { get; set; }` | Descripción de la orden. En la versión 26.0.0, Digi3D.AI no la muestra. |
| `string HelpUrl { get; set; }` | Dirección de la página de ayuda de la orden. En la versión 26.0.0, Digi3D.AI no la usa. |

## Ejemplo

```csharp
using Digi21.DigiNG.Plugin.Command;

namespace MideDistancia;

[Command(
    Name = "MIDE_DISTANCIA_2D",
    Description = "Mide la distancia en planta entre dos puntos.",
    HelpUrl = "https://ejemplo.com/ayuda/mide_distancia_2d")]
[RelatedCommand(Name = "MIDE_DISTANCIA")]
public class OrdenMideDistancia2D : Command
{
    public OrdenMideDistancia2D()
    {
        Initialize += (sender, e) => Dispose();
    }
}
```

La orden completa de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/clases/command.md#ejemplo) usa `[Command(Name = "MIDE_DISTANCIA")]`.
