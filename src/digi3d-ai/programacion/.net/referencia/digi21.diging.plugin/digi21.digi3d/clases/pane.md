# Pane
<!-- id: pane -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Panel acoplable creado con [Panes.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/panes.md). Permite cambiar el título del panel, acoplarlo, cerrarlo y recibir eventos cuando el usuario actúa sobre él.

```csharp
public class Pane
```

## Constructores

```csharp
public Pane()
```

El constructor existe para las clases derivadas que se crean con las sobrecargas genéricas de `Panes.Add<T>`. Un `Pane` creado con `new` no está asociado a ningún panel: sus propiedades y métodos acceden a un puntero nulo de código nativo.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Title { get; set; }` | Título del panel. Al crear el panel vale lo mismo que `Text` del formulario. |
| `string TabCaption { get; set; }` | Texto de la pestaña del panel cuando el panel comparte grupo de pestañas con otros paneles. |
| `string Tooltip { get; set; }` | Texto de la información sobre herramientas (*tooltip*) del título del panel. |
| `Size MinTrackSize { set; }` | Tamaño mínimo, en píxeles, al que el usuario puede reducir el panel. |
| `Size MaxTrackSize { set; }` | Tamaño máximo, en píxeles, al que el usuario puede ampliar el panel. |
| `bool IsClosed { get; }` | `true` si el panel está cerrado. |
| `bool IsHidden { get; }` | `true` si el panel está oculto. |
| `bool IsSelected { get; }` | `true` si el panel es la pestaña seleccionada de su grupo. |
| `bool IsFloating { get; }` | `true` si el panel está flotando. |
| `bool IsSidePanel { get; }` | `true` si el panel es un panel lateral (acoplado con `DockSidePane`). |
| `bool IsTabsVisible { get; }` | `true` si se ve la barra de pestañas del grupo del panel. |
| `bool IsFocus { get; }` | `true` si el panel tiene el foco del teclado. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void SetFocus()` | Da el foco del teclado al panel. |
| `void Select()` | Selecciona el panel en su grupo de pestañas. |
| `void Hide()` | Oculta el panel. |
| `void Close()` | Cierra el panel. |
| `void ToggleDocking()` | Alterna el panel entre acoplado y flotante. |
| `void DockPane(PaneDock dock)` | Acopla el panel al borde `dock` de la ventana principal. |
| `void DockSidePane(PaneDock dock, Size size)` | Acopla el panel como panel lateral en el borde `dock`, con el tamaño `size` en píxeles. |
| `void FloatPane(Rectangle rect)` | Pone el panel flotante en una ventana con el rectángulo `rect`. |

## Eventos

Todos los eventos son de tipo `EventHandler`. El parámetro `sender` es este `Pane` y `e` es un `EventArgs` vacío. Digi3D.AI produce cada evento cuando el gestor de paneles le notifica la acción correspondiente. Los eventos acabados en *-ing* se producen antes del cambio, y los acabados en *-ed*, después.

| Evento | Se produce cuando |
| :--- | :--- |
| `Closing`, `Closed` | El panel se cierra. Digi3D.AI también los produce al destruir el panel cuando se cierra un archivo de dibujo o la aplicación. |
| `Floating`, `Floated` | El panel pasa a ser flotante. |
| `Docking`, `Docked` | El panel se acopla. |
| `Attaching`, `Attached` | El panel se une a otro panel en un grupo de pestañas. |
| `Detaching` | El panel se separa de su grupo de pestañas. |
| `Dragging` | El usuario arrastra el panel. |
| `Activated`, `Deactivated` | El panel se activa o se desactiva. |
| `Pinning`, `Pinned` | El usuario pulsa la chincheta del panel y el panel pasa a ocultarse automáticamente. |
| `Unpinning`, `Unpinned` | El usuario pulsa la chincheta del panel y el panel deja de ocultarse automáticamente. |
| `Expanding`, `Expanded` | Un panel que se oculta automáticamente se despliega desde su pestaña. |
| `Collapsing`, `Collapsed` | Un panel que se oculta automáticamente se repliega a su pestaña. |
| `SplitterResizing`, `SplitterResized` | El usuario cambia el tamaño del panel con el divisor que lo separa de la zona contigua. |

## Ejemplo

Esta orden añade un panel con una lista de los mensajes que recibe. La clase `PanelConRegistro` deriva de `Pane`, recibe la lista en su constructor y escribe en ella cada vez que el panel se acopla, se activa o se cierra:

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

            // El último argumento se pasa al constructor de PanelConRegistro.
            var panel = Digi3D.Panes.Add<PanelConRegistro>(formulario, new Size(250, 300), PaneDock.Right, lista);
            panel.TabCaption = "Registro";
            panel.MinTrackSize = new Size(150, 100);

            Dispose();
        };
    }
}
```
