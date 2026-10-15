# InputDeviceOptions
<!-- id: inputdeviceoptions -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Opciones del dispositivo de entrada de la ventana de dibujo: dispositivo activo, posición del cursor, bloqueos de coordenadas y autocentrado.

```csharp
public sealed class InputDeviceOptions
```

La clase no tiene constructores públicos. El objeto se obtiene con la propiedad estática [DigiNG.InputDeviceOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que devuelve `null` si no hay ninguna ventana de dibujo abierta. El objeto queda ligado a la ventana de dibujo activa en el momento de obtenerlo: cuando esa ventana se cierra, todas las propiedades lanzan `ObjectDisposedException`.

`LockXY`, `LockZ`, `AutoPanningMouse` y `AutoPanningPhotogrammetricWindow` leen y escriben variables booleanas de Digi3D.AI, que comparten todas las ventanas de dibujo. Si la variable no está definida, la propiedad devuelve `false`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`InputDevice`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevice.md) `InputDevice` | Dispositivo de entrada de la ventana de dibujo. El descriptor `get` devuelve `Mouse` si el dispositivo de entrada es el ratón y `PhotogrammetricView` si no lo es. El descriptor `set` activa el ratón con `Mouse` y la ventana fotogramétrica con `PhotogrammetricView`. |
| [`Point3D`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) `Position` | Coordenadas del cursor, después de aplicar [FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md). |
| `Point3D OriginalPosition` | Coordenadas del cursor sin modificar por `FIJAZ`. |
| `bool LockXY` | Variable [FIJAXY](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaxy.md): las coordenadas X e Y del cursor varían en múltiplos de la equidistancia. |
| `bool LockZ` | Variable [FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md): la coordenada Z del cursor se fija al múltiplo de la equidistancia más próximo. |
| `bool AutoPanningMouse` | Variable [AUTO_RATON](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/auto-raton.md): autocentrado de la ventana de dibujo cuando el dispositivo de entrada es el ratón. |
| `bool AutoPanningPhotogrammetricWindow` | Variable [AUTO](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/auto.md): autocentrado de la ventana de dibujo cuando el dispositivo de entrada es la ventana fotogramétrica. |
## Ejemplo

Esta orden escribe en la ventana de resultados el dispositivo de entrada y las coordenadas del cursor con y sin `FIJAZ`:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ESCRIBE_CURSOR")]
public class EscribeCursor : Command
{
    public EscribeCursor()
    {
        Initialize += (sender, e) =>
        {
            var opciones = DigiNG.InputDeviceOptions;
            var dispositivo = opciones.InputDevice == InputDevice.Mouse ? "ratón" : "ventana fotogramétrica";

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Dispositivo de entrada: {dispositivo}");
            Digi3D.OutputWindow.WriteLine($"Cursor: {opciones.Position.X:F3} {opciones.Position.Y:F3} {opciones.Position.Z:F3}");
            Digi3D.OutputWindow.WriteLine($"Cursor sin FIJAZ: {opciones.OriginalPosition.X:F3} {opciones.OriginalPosition.Y:F3} {opciones.OriginalPosition.Z:F3}");
            Digi3D.OutputWindow.WriteLine($"FIJAZ: {opciones.LockZ}");
            Dispose();
        };
    }
}
```
