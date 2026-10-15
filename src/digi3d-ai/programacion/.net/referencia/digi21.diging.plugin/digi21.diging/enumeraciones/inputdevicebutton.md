# InputDeviceButton
<!-- id: inputdevicebutton -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Botón del dispositivo de entrada. Lo usan [DigiNG.SendInputDeviceEvent](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), para indicar el botón del evento que se envía, y `OnMove` de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/clases/command.md) (evento `Move`), para indicar el botón pulsado mientras se mueve el cursor.

```csharp
public enum InputDeviceButton
```

## Valores

| Valor | Número | Descripción |
| :--- | :--- | :--- |
| `None` | 0 | Ningún botón. |
| `Data` | 1 | Botón de dato. |
| `Snap` | 2 | Botón de tentativo. |
| `Cancel` | 3 | Botón de cancelar. |

## Ejemplo

Este método simula que el usuario pulsa el botón de dato en unas coordenadas de terreno. La orden activa recibe el punto como si el usuario lo hubiera digitalizado:

```csharp
using Digi21.DigiNG;
using Digi21.Math;

namespace Ejemplos;

public static class DispositivoSimulado
{
    public static void PulsaDato(double x, double y, double z) =>
        DigiNG.SendInputDeviceEvent(new Point3D(x, y, z), InputDeviceButton.Data);
}
```
