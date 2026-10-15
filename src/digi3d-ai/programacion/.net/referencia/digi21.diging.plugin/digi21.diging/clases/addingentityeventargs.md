# AddingEntityEventArgs
<!-- id: addingentityeventargs -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Argumentos del evento [DigiNG.AddingEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que se produce antes de guardar una entidad que se añade al archivo de dibujo activo.

```csharp
public class AddingEntityEventArgs : EventArgs
```

## Constructores

```csharp
public AddingEntityEventArgs(Entity entity)
```

Crea los argumentos con la entidad `entity` y `Cancel` a `false`. Digi3D.AI crea estos argumentos al producir el evento; una extensión solo necesita el constructor para producir un evento propio con este tipo.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`Entity`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) `Entity` | Entidad que se va a guardar. |
| `bool Cancel` | `true` para descartar la entidad: Digi3D.AI no la guarda en el archivo de dibujo y no produce el evento `EntityAdded`. Vale `false` al empezar el evento. Si hay varios manejadores, todos reciben el mismo objeto, y Digi3D.AI lee `Cancel` cuando terminan todos. |

## Ejemplo

Esta orden activa o desactiva un filtro que descarta los textos vacíos que se añaden al archivo de dibujo. El manejador sigue suscrito después de que la orden termine, hasta que la orden se ejecuta otra vez:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "FILTRO_TEXTOS_VACIOS")]
public class FiltroTextosVacios : Command
{
    static bool activo;

    static void DescartaTextoVacío(object sender, AddingEntityEventArgs e)
    {
        if (e.Entity is ReadOnlyText texto && string.IsNullOrWhiteSpace(texto.Txt))
            e.Cancel = true;
    }

    public FiltroTextosVacios()
    {
        Initialize += (sender, e) =>
        {
            activo = !activo;

            if (activo)
                DigiNG.AddingEntity += DescartaTextoVacío;
            else
                DigiNG.AddingEntity -= DescartaTextoVacío;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine(activo ? "Filtro de textos vacíos activado." : "Filtro de textos vacíos desactivado.");
            Dispose();
        };
    }
}
```
