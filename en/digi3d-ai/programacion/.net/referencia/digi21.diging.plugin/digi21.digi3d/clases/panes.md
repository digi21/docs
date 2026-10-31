# Panes
<!-- id: panes -->
<!-- origen: 4b08c51bf4bf1c2e199f53436e7ecde4c5a755a6 -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Adds docking panes to Digi3D.AI's main window (panes placed along a window edge or grouped in tabs with other panes), containing a Windows Forms form.

```csharp
public class Panes
```

The class has no public constructors. Obtain the instance through [Digi3D.Panes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md).

## Methods

```csharp
public Pane Add(Form form)
public Pane Add(Form form, Size size)
public Pane Add(Form form, PaneDock initialDock)
public Pane Add(Form form, Size size, PaneDock initialDock)
public Pane Add(Form form, PaneDock initialDock, bool allowClose)
public Pane Add(Form form, Size size, PaneDock initialDock, bool allowClose)

public T Add<T>(Form form, params object[] args) where T : Pane
public T Add<T>(Form form, Size size, params object[] args) where T : Pane
public T Add<T>(Form form, Size size, bool allowClose, params object[] args) where T : Pane
public T Add<T>(Form form, PaneDock initialDock, params object[] args) where T : Pane
public T Add<T>(Form form, Size size, PaneDock initialDock, params object[] args) where T : Pane
public T Add<T>(Form form, PaneDock initialDock, bool allowClose, params object[] args) where T : Pane
public T Add<T>(Form form, Size size, PaneDock initialDock, bool allowClose, params object[] args) where T : Pane
```

Creates a docking pane containing `form` and returns the [Pane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md) representing it.

| Parameter | Description |
| :--- | :--- |
| `form` | Form displayed inside the pane. The pane title is the value of `form.Text`. Assign `FormBorderStyle.None` to the form, as in the example. |
| `size` | Initial pane size, in pixels. If `size.Width` is 0, or in overloads without `size`, the pane takes the form's current size. |
| `initialDock` | Main window edge where the pane docks, from the [PaneDock](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/enumeraciones/panedock.md) enumeration. Overloads without `initialDock` use `PaneDock.Right`. |
| `allowClose` | `false` to omit the pane's close button so the user cannot close it. Overloads without `allowClose` use `true`. |
| `args` | Arguments for the constructor of `T`. |

Generic overloads create the returned object through `Activator.CreateInstance(typeof(T), args)`: `T` is a class derived from `Pane` with a public constructor accepting `args`. This allows the derived class to receive data in its constructor and handle pane events. The constructor of `T` runs before the object is associated with the pane, so `Pane` properties and methods throw `ObjectDisposedException` in the constructor. The [Pane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md) example uses a generic overload.

The user cannot float a pane created through `Add`: the pane can only be docked.

Digi3D.AI destroys all panes created through `Add` when closing a drawing file and when closing the application. Before destroying each pane, Digi3D.AI raises its `Closing` and `Closed` events. After Digi3D.AI destroys a pane, the `Pane` object's properties and methods throw `ObjectDisposedException`.

Exceptions:

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `form` is `null`, or the method runs outside Digi3D.AI. |
| `MissingMethodException` | `T` has no public constructor accepting `args`. |

## Example

This command adds a 300 × 200 pixel pane with a label to the left of the main window, using Digi3D.AI's theme colors. The user cannot close the pane:

```csharp
using System.Drawing;
using System.Windows.Forms;
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "PANEL_SALUDO")]
public class PanelSaludo : Command
{
    public PanelSaludo()
    {
        Initialize += (sender, e) =>
        {
            var formulario = new Form
            {
                Text = "Saludo",
                FormBorderStyle = FormBorderStyle.None,
                BackColor = Digi3D.BackgroundColor,
                ForeColor = Digi3D.ForegroundColor,
            };
            formulario.Controls.Add(new Label
            {
                Text = "Panel añadido por una extensión.",
                Dock = DockStyle.Fill,
            });

            Digi3D.Panes.Add(formulario, new Size(300, 200), PaneDock.Left, false);
            Dispose();
        };
    }
}
```
