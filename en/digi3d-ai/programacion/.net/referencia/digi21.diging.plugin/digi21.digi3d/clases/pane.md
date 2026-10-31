# Pane
<!-- id: pane -->
<!-- origen: 72576db0733ef465aa7ce26ad8db28ac01f77443 -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Docking pane created through [Panes.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/panes.md). Allows changing the pane's title, docking it, closing it and receiving events when the user interacts with it.

```csharp
public class Pane
```

## Constructors

```csharp
public Pane()
```

The constructor exists for derived classes created through the generic `Panes.Add<T>` overloads. A `Pane` created with `new` is not associated with any pane: its properties and methods throw `ObjectDisposedException`. `Panes.Add<T>` associates the object with the pane after running the constructor, so properties and methods also throw `ObjectDisposedException` in a derived class's constructor; the constructor can only subscribe to events.

Each property and method looks up the pane in Digi3D.AI's pane manager. If Digi3D.AI has already destroyed the pane (for example, when closing the application), properties and methods throw `ObjectDisposedException`.

## Properties

| Property | Description |
| :--- | :--- |
| `string Title { get; set; }` | Pane title. When the pane is created, equals the form's `Text`. |
| `string TabCaption { get; set; }` | Pane tab text when the pane shares a tab group with other panes. |
| `string Tooltip { get; set; }` | Tooltip text for the pane title. |
| `Size MinTrackSize { set; }` | Minimum size, in pixels, to which the user can shrink the pane. |
| `Size MaxTrackSize { set; }` | Maximum size, in pixels, to which the user can enlarge the pane. |
| `bool IsClosed { get; }` | `true` if the pane is closed. |
| `bool IsHidden { get; }` | `true` if the pane is hidden. |
| `bool IsSelected { get; }` | `true` if the pane is the selected tab in its group. |
| `bool IsFloating { get; }` | `true` if the pane is floating. |
| `bool IsSidePanel { get; }` | `true` if the pane is a side pane (docked through `DockSidePane`). |
| `bool IsTabsVisible { get; }` | `true` if the pane group's tab bar is visible. |
| `bool IsFocus { get; }` | `true` if the pane has keyboard focus. |

## Methods

| Method | Description |
| :--- | :--- |
| `void SetFocus()` | Gives the pane keyboard focus. |
| `void Select()` | Selects the pane in its tab group. |
| `void Hide()` | Hides the pane. |
| `void Close()` | Closes the pane. |
| `void ToggleDocking()` | Toggles the pane between docked and floating. |
| `void DockPane(PaneDock dock)` | Docks the pane to the main window's `dock` edge. |
| `void DockSidePane(PaneDock dock, Size size)` | Docks the pane as a side pane on edge `dock`, with `size` in pixels. |
| `void FloatPane(Rectangle rect)` | Floats the pane in a window with rectangle `rect`. |

## Events

All events are of type `EventHandler`. Each event's `sender` parameter is the `Pane` object and `e` is an empty `EventArgs`. Digi3D.AI raises each event when the pane manager notifies it of the corresponding action. Events ending in *-ing* occur before the state change indicated by the event name, and those ending in *-ed* occur after the corresponding state change.

| Event | Occurs when |
| :--- | :--- |
| `Closing`, `Closed` | The pane closes. Digi3D.AI also raises them when destroying the pane as a drawing file or the application closes. |
| `Floating`, `Floated` | The pane becomes floating. |
| `Docking`, `Docked` | The pane is docked. |
| `Attaching`, `Attached` | The pane joins another pane in a tab group. |
| `Detaching` | The pane separates from its tab group. |
| `Dragging` | The user drags the pane. |
| `Activated`, `Deactivated` | The pane is activated or deactivated. |
| `Pinning`, `Pinned` | The user clicks the pane's pin and the pane starts auto-hiding. |
| `Unpinning`, `Unpinned` | The user clicks the pane's pin and the pane stops auto-hiding. |
| `Expanding`, `Expanded` | An auto-hide pane expands from its tab. |
| `Collapsing`, `Collapsed` | An auto-hide pane collapses to its tab. |
| `SplitterResizing`, `SplitterResized` | The user resizes the pane using the splitter separating it from the adjacent area. |

## Example

This command adds a pane with a list of the messages it receives. The `PanelConRegistro` class derives from `Pane`, receives the list in its constructor and writes to it whenever the pane is docked, activated or closed:

```csharp
using System.Drawing;
using System.Windows.Forms;
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

public class PanelConRegistro : Pane
{
    private readonly ListBox _registro;

    public PanelConRegistro(ListBox registro)
    {
        _registro = registro;
        Docked += (sender, e) => _registro.Items.Add("Acoplado");
        Activated += (sender, e) => _registro.Items.Add("Activado");
        Closed += (sender, e) => Digi3D.OutputWindow.WriteLine("Panel de registro cerrado.");
    }
}

[Command(Name = "PANEL_REGISTRO")]
public class PanelRegistro : Command
{
    public PanelRegistro()
    {
        Initialize += (sender, e) =>
        {
            var lista = new ListBox { Dock = DockStyle.Fill };
            var formulario = new Form
            {
                Text = "Registro",
                FormBorderStyle = FormBorderStyle.None,
            };
            formulario.Controls.Add(lista);

            // The last argument is passed to the PanelConRegistro constructor.
            var panel = Digi3D.Panes.Add<PanelConRegistro>(formulario, new Size(250, 300), PaneDock.Right, lista);
            panel.TabCaption = "Registro";
            panel.MinTrackSize = new Size(150, 100);

            Dispose();
        };
    }
}
```
