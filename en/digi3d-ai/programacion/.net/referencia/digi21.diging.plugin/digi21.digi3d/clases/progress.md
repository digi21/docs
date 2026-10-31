# Progress
<!-- id: progress-2 -->
<!-- origen: b7945a3a542e183920a4809c71e9bb9f76938af9 -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Progress bar in Digi3D.AI's status bar. This is the same bar used by Digi3D.AI commands to show the percentage completed of a lengthy operation.

```csharp
public class Progress
```

The class has no public constructors. Obtain the instance through [StatusBar.ProgressBar](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/statusbar.md).

The bar is hidden until `Value` is assigned. Its initial range is 0 to 100, and `Value` is a percentage.

## Properties

| Property | Description |
| :--- | :--- |
| `int Value { get; set; }` | Bar position. Assigning a value of 0 or greater shows the bar if hidden. A value above 100 is treated as 100, and a negative value hides the bar. Reading returns the bar position. From a thread other than the user interface thread, Digi3D.AI sends the value to that thread. |
| `bool Visible { get; set; }` | `true` if the bar is visible. Assigning `false` hides it; assigning `true` shows it at its current position. |
| `int Minimum { get; set; }` | Minimum value of the bar's range. |
| `int Maximum { get; set; }` | Maximum value of the bar's range. Because `Value` cannot exceed 100, a `Maximum` above 100 prevents the bar from filling completely. |

## Example

This command iterates the drawing file's non-deleted entities, shows progress as a percentage in the progress bar, counts line vertices and writes the result to the status bar:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "CUENTA_VERTICES")]
public class CuentaVertices : Command
{
    public CuentaVertices()
    {
        Initialize += (sender, e) =>
        {
            var entidades = Digi21.DigiNG.DigiNG.DrawingFile
                .Where(entidad => !entidad.Deleted)
                .ToList();

            var barra = Digi3D.StatusBar.ProgressBar;
            var vértices = 0;
            for (var i = 0; i < entidades.Count; i++)
            {
                barra.Value = i * 100 / entidades.Count;

                if (entidades[i] is ReadOnlyLine línea)
                    vértices += línea.Points.Count;
            }
            barra.Visible = false;

            Digi3D.StatusBar.Text = $"{vértices} vértices en {entidades.Count} entidades.";
            Dispose();
        };
    }
}
```
