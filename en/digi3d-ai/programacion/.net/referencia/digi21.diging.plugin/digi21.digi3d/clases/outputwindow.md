# OutputWindow
<!-- id: outputwindow -->
<!-- origen: 1a89929cb23ad287663b9e54f99e06fa93f0bb40 -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Digi3D.AI's results window: the text panel where commands write information for the user.

```csharp
public class OutputWindow
```

The class has no public constructors. Obtain the instance through [Digi3D.OutputWindow](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md).

Writing a line does not display the results window or scroll to the last line. To make the text visible to the user, call `Show` and, after writing, `ScrollToEnd`.

## Methods

| Method | Description |
| :--- | :--- |
| `void WriteLine(string stringToAdd)` | Appends `stringToAdd` as a new line at the end of the results window. |
| `void WriteLine(IEnumerable<string> strings)` | Appends each string in `strings` as a line, in enumeration order. |
| `void WriteLine(string format, object arg0)`<br>`void WriteLine(string format, object arg0, object arg1)`<br>`void WriteLine(string format, object arg0, object arg1, object arg2)`<br>`void WriteLine(string format, object arg0, object arg1, object arg2, object arg3)`<br>`void WriteLine(string format, params object[] arg)` | These overloads append a line with the text returned by `String.Format(format, …)` using the arguments. They throw `String.Format` exceptions: `ArgumentNullException` if `format` is `null`, and `FormatException` if `format` is invalid or references an argument that does not exist. |
| `void Clear()` | Deletes all text from the results window. |
| `void Show()` | Displays the results window and brings it in front of panes sharing its tab group. Does nothing if the user has disabled the **Commands can open the results window** configuration option. |
| `void Hide()` | Hides the results window. |
| `void ToggleDocking()` | Toggles the results window between docked and floating. If the window auto-hides when it loses focus, pins it and leaves it visible. Does nothing if the window is closed or hidden and the user has disabled **Commands can open the results window**. |
| `void ScrollToEnd()` | Scrolls the text to the last line. If the window contains text, first appends an empty line at the end. |

All methods except `WriteLine(IEnumerable<string>)` throw `NullReferenceException` when run outside Digi3D.AI.

## Example

This command clears the results window and writes the number of non-deleted entities in the drawing file, grouped by type:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "CUENTA_ENTIDADES")]
public class CuentaEntidades : Command
{
    public CuentaEntidades()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;
            var líneas = archivo
                .Where(entidad => !entidad.Deleted)
                .GroupBy(entidad => entidad.GetType().Name)
                .Select(grupo => $"  {grupo.Key}: {grupo.Count()}")
                .ToList();

            var ventana = Digi3D.OutputWindow;
            ventana.Clear();
            ventana.Show();
            ventana.WriteLine("Entidades de {0}:", archivo.Path);
            ventana.WriteLine(líneas);
            ventana.ScrollToEnd();

            Dispose();
        };
    }
}
```
