# Point3DEventArgs
<!-- id: point3deventargs -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Argumento de los eventos que notifican una coordenada. Lo reciben los eventos `DataDown`, `DataUp`, `ResetDown`, `ResetUp`, `SnapDown` y `SnapUp` de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/clases/command.md), declarados como `EventHandler<Point3DEventArgs>`.

```csharp
public class Point3DEventArgs : EventArgs
```

## Constructores

```csharp
public Point3DEventArgs(Point3D coordinates)
```

Crea el argumento con la coordenada `coordinates`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Point3D Coordinates { get; }` | Coordenada que se pasó al constructor. |

## Ejemplo

Esta orden escribe en la ventana de resultados las coordenadas de cada pulsación del botón de datos y termina al pulsar el botón de reset:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;
using Digi21.Math;

namespace Ejemplos;

[Command(Name = "MARCA_COORDENADAS")]
public class MarcaCoordenadas : Command
{
    public MarcaCoordenadas()
    {
        DataUp += MuestraCoordenadas;
        ResetUp += (sender, e) => Dispose();
    }

    private void MuestraCoordenadas(object sender, Point3DEventArgs e)
    {
        Digi3D.OutputWindow.Show();
        Digi3D.OutputWindow.WriteLine($"X={e.Coordinates.X:F3} Y={e.Coordinates.Y:F3} Z={e.Coordinates.Z:F3}");
    }
}
```
