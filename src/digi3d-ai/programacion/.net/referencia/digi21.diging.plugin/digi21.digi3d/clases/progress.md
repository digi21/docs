# Progress
<!-- id: progress-2 -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Barra de progreso de la barra de estado de Digi3D.AI. Es la misma barra que usan las órdenes de Digi3D.AI para mostrar el porcentaje completado de una operación larga.

```csharp
public class Progress
```

La clase no tiene constructores públicos. La instancia se obtiene con [StatusBar.ProgressBar](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/statusbar.md).

La barra está oculta mientras no se asigna `Value`. El rango inicial de la barra es de 0 a 100, y `Value` es un porcentaje.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `int Value { get; set; }` | Posición de la barra. Al asignar un valor de 0 o mayor, la barra se muestra si estaba oculta. Un valor mayor que 100 se trata como 100, y un valor negativo oculta la barra. La lectura devuelve la posición de la barra. Desde un hilo que no es el de la interfaz de usuario, Digi3D.AI envía el valor a ese hilo. |
| `bool Visible { get; set; }` | `true` si la barra está visible. Asignar `false` oculta la barra; asignar `true` la muestra en su posición actual. |
| `int Minimum { get; set; }` | Valor mínimo del rango de la barra. |
| `int Maximum { get; set; }` | Valor máximo del rango de la barra. Como `Value` no pasa de 100, un `Maximum` mayor que 100 hace que la barra no llegue a llenarse. |

## Ejemplo

Esta orden recorre las entidades no eliminadas del archivo de dibujo, muestra el porcentaje recorrido en la barra de progreso, cuenta los vértices de las líneas y escribe el resultado en la barra de estado:

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
