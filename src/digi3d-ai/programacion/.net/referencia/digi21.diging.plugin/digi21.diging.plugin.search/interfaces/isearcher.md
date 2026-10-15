# ISearcher
<!-- id: isearcher -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Search`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Buscador del panel de búsqueda de Digi3D.AI: selecciona entidades del archivo de dibujo según un criterio propio.

```csharp
public interface ISearcher
```

La clase que implementa la interfaz necesita el atributo [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md) o [LocalizableSearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/localizablesearcherattribute.md) y un constructor público sin parámetros. El [curso de programación en C#](/digi3d-ai/programacion/.net/curso-de-programacion-en-c/buscadores.md) tiene una lección sobre buscadores.

## Registro

Digi3D.AI carga al arrancar las extensiones registradas en la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\SearchProviders`: el nombre de cada valor de tipo cadena es la ruta completa de la DLL. Digi3D.AI resuelve las dependencias de la DLL con su archivo `.deps.json`.

En cada DLL, Digi3D.AI crea un objeto de cada clase pública con el atributo, con su constructor público sin parámetros, y lo guarda si implementa `ISearcher`. Una clase con el atributo que no implementa la interfaz se ignora. Digi3D.AI usa el mismo objeto, y el mismo formulario, durante toda la sesión.

Si una clase no tiene constructor público sin parámetros, si su constructor lanza una excepción, si el atributo no puede leer su recurso o si otra clase ya ha registrado el mismo título, Digi3D.AI escribe el error en el registro de eventos de Windows y no registra ninguna clase más de esa DLL. El usuario no ve ningún mensaje.

## Uso desde el panel de búsqueda

1. El panel de búsqueda muestra en una lista desplegable el título de cada buscador registrado.
2. Cuando el usuario elige un buscador, Digi3D.AI incrusta el formulario que devuelve `Form` en el panel, en el área de parámetros, y ajusta su tamaño al del área.
3. Cuando el usuario pulsa el botón de búsqueda, Digi3D.AI llama a `Search` con las entidades del archivo de dibujo activo y envía las entidades devueltas al panel **Resultados de la búsqueda 1**, al panel **Resultados de la búsqueda 2** o a la orden activa, según la opción elegida en el panel.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Form Form { get; }` | Formulario de Windows Forms con los parámetros de la búsqueda, o `null` si el buscador no tiene parámetros. Digi3D.AI cambia el estilo de la ventana del formulario de ventana emergente a ventana hija y la coloca dentro del panel. Un formulario sin borde (`FormBorderStyle.None`) ocupa el área sin barra de título. |

## Métodos

### Search

```csharp
IEnumerable<Entity> Search(IEnumerable<Entity> entities)
```

Devuelve las entidades que cumplen el criterio del buscador.

| Parámetro | Descripción |
| :--- | :--- |
| `entities` | Entidades del archivo de dibujo activo. |

Las entidades devueltas tienen que pertenecer a `entities`: Digi3D.AI las localiza en el archivo de dibujo para mostrarlas en el panel de resultados. Digi3D.AI recorre la secuencia devuelta dentro de la llamada, así que se puede devolver una consulta LINQ sin materializar.

Si `Search` o el recorrido de la secuencia devuelta lanzan una excepción, Digi3D.AI muestra un mensaje con el título del buscador, el mensaje de la excepción (el de `InnerException`, si existe) y el nombre del tipo, y no envía ninguna entidad.

## Ejemplo

Este buscador devuelve las líneas no eliminadas cuya longitud supera el valor de un formulario. El formulario no tiene borde, para ocupar el área de parámetros del panel.

```csharp
using System.Windows.Forms;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Search;

namespace BuscaLineasLargas;

// Formulario con los parámetros de la búsqueda. Digi3D.AI lo incrusta en el panel de búsqueda.
public class FormularioLongitud : Form
{
    private readonly NumericUpDown longitud = new()
    {
        Minimum = 0,
        Maximum = 1_000_000,
        DecimalPlaces = 2,
        Value = 100,
        Dock = DockStyle.Top,
    };

    public FormularioLongitud()
    {
        FormBorderStyle = FormBorderStyle.None;
        Controls.Add(longitud);
        Controls.Add(new Label { Text = "Longitud mínima:", Dock = DockStyle.Top });
    }

    public double LongitudMínima => (double)longitud.Value;
}

[Searcher(Title = "Líneas más largas que una longitud")]
public sealed class BuscadorLineasLargas : ISearcher, IDisposable
{
    private readonly FormularioLongitud formulario = new();

    public Form Form => formulario;

    public IEnumerable<Entity> Search(IEnumerable<Entity> entities) =>
        entities.OfType<ReadOnlyLine>().Where(l => !l.Deleted && l.Perimeter > formulario.LongitudMínima);

    public void Dispose() => formulario.Dispose();
}
```

El ejemplo de [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#ejemplo) tiene un buscador sin formulario.
