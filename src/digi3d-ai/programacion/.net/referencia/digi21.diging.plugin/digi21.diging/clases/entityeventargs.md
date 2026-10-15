# EntityEventArgs
<!-- id: entityeventargs -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Argumentos de los eventos [DigiNG.EntityAdded, DigiNG.EntityDeleted y DigiNG.EntityRecovered](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que se producen después de añadir, eliminar o recuperar una entidad del archivo de dibujo activo.

```csharp
public class EntityEventArgs : EventArgs
```

## Constructores

```csharp
public EntityEventArgs(Entity entity)
```

Crea los argumentos con la entidad `entity`. Digi3D.AI crea estos argumentos al producir los eventos; una extensión solo necesita el constructor para producir un evento propio con este tipo.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`Entity`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) `Entity` | Entidad que se ha añadido, eliminado o recuperado. |

## Ejemplo

Esta orden activa o desactiva un registro que escribe en la ventana de resultados el código de cada entidad que se elimina del archivo de dibujo. El manejador sigue suscrito después de que la orden termine, hasta que la orden se ejecuta otra vez:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "REGISTRA_ELIMINADAS")]
public class RegistraEliminadas : Command
{
    static bool activo;

    static void EscribeEliminada(object sender, EntityEventArgs e)
    {
        var código = e.Entity.Codes.Count > 0 ? e.Entity.Codes[0].Name : "";
        Digi3D.OutputWindow.WriteLine($"Eliminada una entidad con el código {código}");
    }

    public RegistraEliminadas()
    {
        Initialize += (sender, e) =>
        {
            activo = !activo;

            if (activo)
                DigiNG.EntityDeleted += EscribeEliminada;
            else
                DigiNG.EntityDeleted -= EscribeEliminada;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine(activo ? "Registro de eliminadas activado." : "Registro de eliminadas desactivado.");
            Dispose();
        };
    }
}
```

`EntityDeleted` no se produce en las eliminaciones en bloque, como `DrawingFile.Delete(IEnumerable<Entity>)`. Lee las notas sobre los eventos en [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/).
