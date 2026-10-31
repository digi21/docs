# ISearcher
<!-- id: isearcher -->
<!-- origen: d395ab9e0d7aac771a2d0e265c22c6f0c97582ca -->

Namespace: `Digi21.DigiNG.Plugin.Search`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Search provider for Digi3D.AI's search panel: selects entities from the drawing file using its own criterion.

```csharp
public interface ISearcher
```

The implementing class needs the [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md) or [LocalizableSearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/localizablesearcherattribute.md) attribute and a public parameterless constructor. The [C# programming course](/digi3d-ai/programacion/.net/curso-de-programacion-en-c/buscadores.md) includes a lesson on search providers.

## Registration

On startup, Digi3D.AI loads extensions registered under `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\SearchProviders`: the name of each string value is the DLL's full path. Digi3D.AI resolves the DLL's dependencies through its `.deps.json` file.

In each DLL, Digi3D.AI creates an object for each public class with the attribute, using its public parameterless constructor, and stores it if it implements `ISearcher`. A class with the attribute that does not implement the interface is ignored. Digi3D.AI uses the same object and form throughout the session.

If a class has no public parameterless constructor, its constructor throws an exception, the attribute cannot read its resource or another class has already registered the same title, Digi3D.AI writes the error to the Windows event log and registers no more classes from that DLL. The user sees no message.

## Use from the search panel

1. The search panel displays each registered search provider's title in a drop-down list.
2. When the user chooses a provider, Digi3D.AI embeds the form returned by `Form` in the panel's parameter area and resizes it to fit that area.
3. When the user clicks the search button, Digi3D.AI calls `Search` with the active drawing file's entities and sends the returned entities to **Search results 1**, **Search results 2** or the active command, depending on the option selected in the panel.

## Properties

| Property | Description |
| :--- | :--- |
| `Form Form { get; }` | Windows Forms form with the search parameters, or `null` if the provider has no parameters. Digi3D.AI changes the form's window style from popup to child window and places it inside the panel. A borderless form (`FormBorderStyle.None`) fills the area without a title bar. |

## Methods

### Search

```csharp
IEnumerable<Entity> Search(IEnumerable<Entity> entities)
```

Returns entities satisfying the search provider's criterion.

| Parameter | Description |
| :--- | :--- |
| `entities` | Active drawing file's entities. |

Returned entities must belong to `entities`: Digi3D.AI locates them in the drawing file to display them in the results panel. Digi3D.AI iterates the returned sequence within the call, so an unmaterialized LINQ query can be returned.

If `Search` or iteration of the returned sequence throws an exception, Digi3D.AI displays a message with the search provider's title, exception message (the `InnerException` message, if present) and type name, and sends no entities.

## Example

This search provider returns non-deleted lines whose length exceeds the value in a form. The form is borderless so it fills the panel's parameter area.

```csharp
using System.Windows.Forms;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Search;

namespace BuscaLineasLargas;

// Form with the search parameters. Digi3D.AI embeds it in the search panel.
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

The [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#example) example has a search provider without a form.
