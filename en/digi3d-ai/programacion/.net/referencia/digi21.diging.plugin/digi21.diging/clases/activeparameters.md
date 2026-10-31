# ActiveParameters
<!-- id: activeparameters -->
<!-- origen: 4a6df1f591332e6fde3bebf1bb4d856f990edd1f -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Digi3D.AI's active parameters: active angle, active distances, text height, contour interval and active scale. Digi3D.AI commands use these values when digitizing.

```csharp
public sealed class ActiveParameters
```

The class has no public constructors. Obtain the object through the static [DigiNG.ActiveParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) property, which returns `null` if no drawing window is open. The object is bound to the drawing window active when it is obtained: when that window closes, all properties throw `ObjectDisposedException`.

All properties except `Scale` read and write Digi3D.AI variables shared by all drawing windows. `Scale` belongs to the drawing window.

## Properties

| Property | Description |
| :--- | :--- |
| `double ActiveAngle` | Active angle, in radians. Digi3D.AI stores the value in degrees: the [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) variable. If the variable does not exist, returns the equivalent of 10°. |
| `double PrincipalActiveDistance` | Active distance. The first value of [AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md). If the variable does not exist, returns 1. |
| `double SecondaryActiveDistance` | Secondary active distance. The second value of [AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md). If the variable does not exist, returns 1. |
| `double TextHeight` | Text height. The [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) variable. If the variable does not exist, returns 1. |
| `double Equidistance` | Contour interval. The [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) variable. If the variable does not exist, returns 1. |
| [`Point3D`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) `Scale` | Drawing window's active scale in X, Y and Z, used by commands such as [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md) and [INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md). |

## Example

This command rotates the active angle by 90° and writes the new value in degrees to the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "GIRA_ANGULO_ACTIVO")]
public class GiraAnguloActivo : Command
{
    public GiraAnguloActivo()
    {
        Initialize += (sender, e) =>
        {
            var parámetros = DigiNG.ActiveParameters;

            // ActiveAngle is in radians.
            parámetros.ActiveAngle = (parámetros.ActiveAngle + Math.PI / 2) % (2 * Math.PI);

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Ángulo activo: {parámetros.ActiveAngle * 180 / Math.PI:F2}°");
            Dispose();
        };
    }
}
```
