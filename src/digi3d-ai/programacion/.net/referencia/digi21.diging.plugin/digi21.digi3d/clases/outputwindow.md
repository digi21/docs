# OutputWindow
<!-- id: outputwindow -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Ventana de resultados de Digi3D.AI: el panel de texto donde las órdenes escriben información para el usuario.

```csharp
public class OutputWindow
```

La clase no tiene constructores públicos. La instancia se obtiene con [Digi3D.OutputWindow](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md).

Escribir una línea no muestra la ventana de resultados ni desplaza el texto hasta la última línea. Para que el usuario vea el texto, llama a `Show` y, después de escribir, a `ScrollToEnd`.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void WriteLine(string stringToAdd)` | Añade `stringToAdd` como una línea nueva al final de la ventana de resultados. |
| `void WriteLine(IEnumerable<string> strings)` | Añade cada cadena de `strings` como una línea, en el orden de la enumeración. |
| `void WriteLine(string format, object arg0)`<br>`void WriteLine(string format, object arg0, object arg1)`<br>`void WriteLine(string format, object arg0, object arg1, object arg2)`<br>`void WriteLine(string format, object arg0, object arg1, object arg2, object arg3)`<br>`void WriteLine(string format, params object[] arg)` | Añade una línea con el texto que devuelve `String.Format(format, …)` con los argumentos. Lanzan las excepciones de `String.Format`: `ArgumentNullException` si `format` es `null` y `FormatException` si `format` no es válido o hace referencia a un argumento que no existe. |
| `void Clear()` | Borra todo el texto de la ventana de resultados. |
| `void Show()` | Muestra la ventana de resultados y la pone delante de los paneles que comparten su grupo de pestañas. No hace nada si el usuario ha desactivado la opción de configuración «Las órdenes pueden abrir la ventana de resultados». |
| `void Hide()` | Oculta la ventana de resultados. |
| `void ToggleDocking()` | Alterna la ventana de resultados entre acoplada y flotante. Si la ventana se oculta automáticamente al perder el foco, la fija y la deja visible. No hace nada si la ventana está cerrada u oculta y el usuario ha desactivado la opción «Las órdenes pueden abrir la ventana de resultados». |
| `void ScrollToEnd()` | Desplaza el texto hasta la última línea. Si la ventana tiene texto, añade antes una línea vacía al final. |

Todos los métodos, salvo `WriteLine(IEnumerable<string>)`, lanzan `NullReferenceException` si no se ejecutan dentro de Digi3D.AI.

## Ejemplo

Esta orden borra la ventana de resultados y escribe el número de entidades no eliminadas del archivo de dibujo, agrupadas por tipo:

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
