# LicenseInfo
<!-- id: licenseinfo -->
<!-- origen: 10de2a2b1f97e1b95b2c8814a80d7b274217b3f8 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Identification of the dongle used to run Digi3D.AI.

```csharp
public sealed class LicenseInfo
```

The class has no public constructors. Obtain the object through the static [DigiNG.LicenseInfo](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) property, which throws `NullReferenceException` if no drawing window is open.

## Properties

| Property | Description |
| :--- | :--- |
| `string KeyID` | Dongle identifier. The value is read when the drawing window is activated. |

## Example

This command writes the dongle identifier to the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ESCRIBE_LLAVE")]
public class EscribeLlave : Command
{
    public EscribeLlave()
    {
        Initialize += (sender, e) =>
        {
            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Llave de protección: {DigiNG.LicenseInfo.KeyID}");
            Dispose();
        };
    }
}
```
