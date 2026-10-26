# Panes
<!-- id: panes -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Añade a la ventana principal de Digi3D.AI paneles acoplables (*docking panes*: paneles que se colocan en un borde de la ventana o se agrupan en pestañas con otros paneles) cuyo contenido es un formulario de Windows Forms.

```csharp
public class Panes
```

La clase no tiene constructores públicos. La instancia se obtiene con [Digi3D.Panes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md).

## Métodos

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

Crea un panel acoplable que contiene `form` y devuelve el [Pane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md) que lo representa.

| Parámetro | Descripción |
| :--- | :--- |
| `form` | Formulario que se muestra dentro del panel. El título del panel es el valor de `form.Text`. Asigna `FormBorderStyle.None` al formulario, como en el ejemplo. |
| `size` | Tamaño inicial del panel, en píxeles. Si `size.Width` es 0, o en las sobrecargas sin `size`, el panel toma el tamaño actual del formulario. |
| `initialDock` | Borde de la ventana principal donde se acopla el panel, de la enumeración [PaneDock](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/enumeraciones/panedock.md). Las sobrecargas sin `initialDock` usan `PaneDock.Right`. |
| `allowClose` | `false` para que el panel no tenga botón de cerrar y el usuario no pueda cerrarlo. Las sobrecargas sin `allowClose` usan `true`. |
| `args` | Argumentos del constructor de `T`. |

Las sobrecargas genéricas crean el objeto devuelto con `Activator.CreateInstance(typeof(T), args)`: `T` es una clase derivada de `Pane` con un constructor público que admite `args`. Así, la clase derivada puede recibir datos en el constructor y manejar los eventos del panel. El constructor de `T` se ejecuta antes de que el objeto quede asociado al panel, así que en el constructor las propiedades y los métodos de `Pane` lanzan `ObjectDisposedException`. El ejemplo de [Pane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md) usa una sobrecarga genérica.

El usuario no puede poner flotante un panel creado con `Add`: el panel solo se puede acoplar.

Digi3D.AI destruye todos los paneles creados con `Add` al cerrar un archivo de dibujo y al cerrar la aplicación. Antes de destruir cada panel, Digi3D.AI produce los eventos `Closing` y `Closed` del panel. Después de que Digi3D.AI destruya un panel, las propiedades y los métodos del objeto `Pane` lanzan `ObjectDisposedException`.

Excepciones:

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `form` es `null`, o el método no se ejecuta dentro de Digi3D.AI. |
| `MissingMethodException` | `T` no tiene un constructor público que admita `args`. |

## Ejemplo

Esta orden añade a la izquierda de la ventana principal un panel de 300 × 200 píxeles con una etiqueta, con los colores del tema de Digi3D.AI. El usuario no puede cerrar el panel:

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
