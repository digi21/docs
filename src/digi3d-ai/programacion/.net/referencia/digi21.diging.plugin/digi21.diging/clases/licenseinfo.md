# LicenseInfo
<!-- id: licenseinfo -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Identificación de la llave de protección con la que se ejecuta Digi3D.AI.

```csharp
public sealed class LicenseInfo
```

La clase no tiene constructores públicos. El objeto se obtiene con la propiedad estática [DigiNG.LicenseInfo](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que lanza `NullReferenceException` si no hay ninguna ventana de dibujo abierta.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string KeyID` | Identificador de la llave de protección. El valor se lee al activarse la ventana de dibujo. |

## Ejemplo

Esta orden escribe el identificador de la llave de protección en la ventana de resultados:

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
