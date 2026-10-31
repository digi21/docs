# DigitizingLineOptions
<!-- id: digitizinglineoptions -->
<!-- origen: f3a70077e7edec978b7c1571642140975a7bf7f7 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Static class with options Digi3D.AI applies to digitized lines: closing, generalizing, creating a parallel and smoothing on completion, and continuous digitizing parameters.

```csharp
public static class DigitizingLineOptions
```

Each property reads and writes a Digi3D.AI variable. Variables belong to the application: changes affect all drawing windows. All properties throw `NullReferenceException` if no drawing window is open. The default value in the table is what the property returns if the variable is undefined.

## Static properties

| Property | Variable | Default | Description |
| :--- | :--- | :--- | :--- |
| `bool CloseLineWhenFinish` | [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md) | `false` | Closes the line on completion. |
| `bool GeneralizeLineWhenFinish` | [G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) | `false` | Generalizes the line on completion. |
| `bool ParalelizeLineWhenFinish` | [P](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/p.md) | `false` | Draws a parallel to the line on completion. |
| `bool SmoothLineWhenFinish` | [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) | `false` | Smooths the line on completion. |
| `double GeneralizationTolerance` | [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) | 0.004 | Generalization tolerance factor. |
| `double AngularTolerance` | [TOL_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) | 4.58 | Generalization angular tolerance, in degrees. |
| `double ContinuousModeIncrement` | [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) | 0.004 | Digitizing increment: distance between vertices recorded in continuous mode. |

## Example

This command prepares generalized line digitizing: enables generalization on completion, disables smoothing and assigns the generalization tolerance:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "PREPARA_GENERALIZACION")]
public class PreparaGeneralizacion : Command
{
    public PreparaGeneralizacion()
    {
        Initialize += (sender, e) =>
        {
            DigitizingLineOptions.GeneralizeLineWhenFinish = true;
            DigitizingLineOptions.SmoothLineWhenFinish = false;
            DigitizingLineOptions.GeneralizationTolerance = 0.5;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"TOL = {DigitizingLineOptions.GeneralizationTolerance}, TOL_ANG = {DigitizingLineOptions.AngularTolerance}");
            Dispose();
        };
    }
}
```
