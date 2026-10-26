# LocalizableCommandAttribute
<!-- id: localizablecommandattribute -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Command`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Marca una clase como orden de Digi3D.AI y lee el nombre, la descripción y la dirección de la ayuda de los recursos de la extensión. Así el nombre de la orden puede cambiar con el idioma de la interfaz.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class LocalizableCommandAttribute : CommandAttribute
```

Hereda de: [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md). Digi3D.AI trata las dos clases igual.

## Proveedor de recursos

El parámetro `resourceManagerProvider` es un tipo con una propiedad estática **no pública** de tipo `System.Resources.ResourceManager`. Es la clase que genera Visual Studio para un archivo `.resx` con la herramienta `ResXFileCodeGenerator`, cuya propiedad `ResourceManager` es `internal`. La clase que genera `PublicResXFileCodeGenerator` declara la propiedad como `public` y no sirve.

El constructor busca la primera propiedad estática no pública de tipo `ResourceManager` y llama a `GetString` con cada clave, con la referencia cultural de la interfaz de usuario del hilo. Los valores se leen cuando Digi3D.AI lee los atributos de la clase, al cargar la extensión.

El constructor lanza `ArgumentException`:

| Parámetro | Cuándo |
| :--- | :--- |
| `resourceManagerProvider` | El tipo no tiene ninguna propiedad estática no pública de tipo `ResourceManager`. |
| `resourceKey` | El recurso no contiene una cadena con la clave indicada. El mensaje incluye la clave. |

Si el constructor lanza la excepción, Digi3D.AI no puede leer los atributos de la clase: muestra un mensaje de error al cargar la extensión y no registra ninguna orden más de esa extensión.

## Constructores

```csharp
public LocalizableCommandAttribute(Type resourceManagerProvider, string nameResource)
public LocalizableCommandAttribute(Type resourceManagerProvider, string nameResource, string descriptionResource)
public LocalizableCommandAttribute(Type resourceManagerProvider, string nameResource, string descriptionResource, string helpUrlResource)
```

| Parámetro | Descripción |
| :--- | :--- |
| `resourceManagerProvider` | Tipo que proporciona el `ResourceManager`. |
| `nameResource` | Clave del recurso con el nombre de la orden. La cadena del recurso se asigna a `Name`. |
| `descriptionResource` | Clave del recurso con la descripción. La cadena del recurso se asigna a `Description`, que el cuadro de diálogo [Buscar orden](/digi3d-ai/referencia/cuadros-de-dialogo/buscar-orden.md) muestra y en la que busca el texto introducido por el usuario. Con el constructor de dos parámetros, `Description` vale `null` y la orden no tiene descripción en el cuadro de diálogo Buscar orden. |
| `helpUrlResource` | Clave del recurso con la dirección de la ayuda. La cadena del recurso se asigna a `HelpUrl`. |

Las propiedades que no tienen parámetro en la sobrecarga usada quedan a `null`.

## Ejemplo

Esta extensión tiene un archivo `Recursos.resx` con las claves `CuentaLineasNombre`, `CuentaLineasDescripcion`, `CuentaLineasAyuda`, `CuentaLineasMenu` y `BuscarLineasCerradas`. La clase `Recursos` hace lo mismo que la clase que genera Visual Studio. El mismo archivo usa [LocalizableCommandInMenuAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/atributos/localizablecommandinmenuattribute.md) y [LocalizableSearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/localizablesearcherattribute.md).

```csharp
using System.Resources;
using System.Windows.Forms;
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.Menu;
using Digi21.DigiNG.Plugin.Search;

namespace Localizables;

// Proveedor de recursos: una propiedad estática no pública de tipo ResourceManager.
// Es la que genera Visual Studio para un .resx con el generador ResXFileCodeGenerator.
internal static class Recursos
{
    internal static ResourceManager ResourceManager { get; } =
        new("Localizables.Recursos", typeof(Recursos).Assembly);
}

[LocalizableCommand(typeof(Recursos), "CuentaLineasNombre", "CuentaLineasDescripcion", "CuentaLineasAyuda")]
[LocalizableCommandInMenu(typeof(Recursos), "CuentaLineasMenu", MenuItemGroup.ToolsGroup1)]
public class OrdenCuentaLineas : Command
{
    public OrdenCuentaLineas()
    {
        Initialize += (sender, e) =>
        {
            var líneas = Digi21.DigiNG.DigiNG.DrawingFile.OfType<ReadOnlyLine>().Count(l => !l.Deleted);
            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"{líneas} líneas.");
            Dispose();
        };
    }
}

[LocalizableSearcher(typeof(Recursos), "BuscarLineasCerradas")]
public class BuscadorLineasCerradas : ISearcher
{
    public Form Form => null;

    public IEnumerable<Entity> Search(IEnumerable<Entity> entities) =>
        entities.OfType<ReadOnlyLine>().Where(l => l.Closed);
}
```
