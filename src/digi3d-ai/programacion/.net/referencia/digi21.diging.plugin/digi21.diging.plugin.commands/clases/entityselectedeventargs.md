# EntitySelectedEventArgs
<!-- id: entityselectedeventargs -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Command`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Datos del evento `EntitySelected` de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/clases/command.md): la entidad que recibe la orden y el punto y el segmento de la selección.

```csharp
public class EntitySelectedEventArgs : EventArgs
```

La orden recibe una entidad seleccionada en estos casos:

- La orden llama a `DigiNG.SelectEntity` (página de [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/README.md)) y el usuario selecciona una entidad.
- El usuario selecciona una entidad con la orden de tentativo mientras la orden está activa.
- El usuario envía entidades a la orden activa desde el panel de resultados de la búsqueda o desde el panel de base de datos. Si envía varias, la orden recibe solo la primera.
- El usuario elige en el menú contextual del panel de tareas una opción que ejecuta la orden sobre la entidad de la tarea.

En los dos últimos casos, `Coordinates` son las coordenadas del primer vértice de la entidad y `FirstVertex` y `SecondVertex` valen 0.

## Constructores

```csharp
public EntitySelectedEventArgs(Entity entity, Point3D groundPoint, int firstVertex, int secondVertex)
```

Crea los datos del evento con los valores de los parámetros, que se devuelven en `Entity`, `Coordinates`, `FirstVertex` y `SecondVertex`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Entity Entity { get; }` | Entidad seleccionada. Si pertenece a un archivo de dibujo cargado, su propiedad `Owner` es ese archivo. |
| `Point3D Coordinates { get; }` | Coordenadas terreno de la selección. |
| `int FirstVertex { get; }` | Índice del primer vértice del segmento seleccionado. |
| `int SecondVertex { get; }` | Índice del segundo vértice del segmento seleccionado. |

## Ejemplo

Esta orden pide al usuario que seleccione una línea y escribe en la ventana de resultados su código, su número de vértices y el segmento seleccionado. En lugar de suscribirse a `DataUp`, sobrescribe `OnDataUp`.

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.Math;

namespace InformaEntidad;

[Command(Name = "INFORMA_ENTIDAD")]
public class OrdenInformaEntidad : Command
{
    public OrdenInformaEntidad()
    {
        Initialize += (sender, e) => Digi3D.StatusBar.Text = "Selecciona una línea";

        EntitySelected += (sender, e) =>
        {
            if (e.Entity is ReadOnlyLine línea)
            {
                Digi3D.OutputWindow.Show();
                Digi3D.OutputWindow.WriteLine(
                    $"Código {línea.Codes[0].Name}, {línea.Points.Count} vértices, " +
                    $"segmento seleccionado: {e.FirstVertex}-{e.SecondVertex}, punto: {e.Coordinates}");
            }

            Dispose();
        };
    }

    // Sustituye al evento DataUp: el método no lanza el evento.
    public override bool OnDataUp(Point3D groundPoint)
    {
        Digi21.DigiNG.DigiNG.SelectEntity(groundPoint, entidad => entidad is ReadOnlyLine);
        return true;
    }
}
```
