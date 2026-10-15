# CommandInMenuAttribute
<!-- id: commandinmenuattribute -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Menu`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Añade una opción al menú de la ventana de dibujo que ejecuta la orden implementada por la clase.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class CommandInMenuAttribute : Attribute
```

El atributo solo tiene efecto en una clase registrada como orden, es decir, con [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) o [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md).

Cada vez que el usuario abre el submenú que contiene la posición `Group`, Digi3D.AI lee este atributo en todas las órdenes .NET registradas y añade, en esa posición, una opción con el texto `Title` por cada orden cuyo `Group` coincide. Al seleccionar la opción, Digi3D.AI ejecuta la orden por su nombre, sin parámetros. La tabla de [MenuItemGroup](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/enumeraciones/menuitemgroup.md) indica la posición de cada grupo y los grupos que no aparecen en el menú.

Restricciones:

- Digi3D.AI no añade las opciones si está activa la opción de configuración `MostrarMenusNativos`.
- Digi3D.AI asigna a cada combinación distinta de grupo, título y orden un identificador del intervalo 22301 a 22399, y conserva la asignación durante la sesión. Dos órdenes con el mismo `Title` en el mismo grupo reciben identificadores distintos y cada opción ejecuta su orden. A partir de la combinación número 100 de la sesión no quedan identificadores, y Digi3D.AI no añade la opción al menú.
- Si el constructor del atributo lanza una excepción al abrir el submenú, Digi3D.AI no añade la opción de esa orden y escribe el mensaje de la excepción con `System.Diagnostics.Trace`.

## Constructores

```csharp
public CommandInMenuAttribute(string title, MenuItemGroup group)
```

| Parámetro | Descripción |
| :--- | :--- |
| `title` | Texto de la opción del menú. Se asigna a `Title`. |
| `group` | Posición del menú. Se asigna a `Group`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Title { get; set; }` | Texto de la opción del menú. |
| `MenuItemGroup Group { get; set; }` | Posición del menú en la que aparece la opción. |

## Ejemplo

La orden de ejemplo de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md#ejemplo) tiene los atributos `[Command(Name = "MIDE_DISTANCIA")]` y `[CommandInMenu("Medir la distancia entre dos puntos", MenuItemGroup.InmediateGroup4)]`. La opción **Medir la distancia entre dos puntos** aparece en el menú **Inmediato**, después de **Mide segmento**, y ejecuta `MIDE_DISTANCIA`.
