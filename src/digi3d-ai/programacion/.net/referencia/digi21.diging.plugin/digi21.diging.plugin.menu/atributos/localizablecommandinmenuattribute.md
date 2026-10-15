# LocalizableCommandInMenuAttribute
<!-- id: localizablecommandinmenuattribute -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Menu`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Igual que [CommandInMenuAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/atributos/commandinmenuattribute.md), con el texto de la opción del menú leído de los recursos de la extensión.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class LocalizableCommandInMenuAttribute : CommandInMenuAttribute
```

Hereda de: [CommandInMenuAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/atributos/commandinmenuattribute.md).

## Constructores

```csharp
public LocalizableCommandInMenuAttribute(Type resourceManagerProvider, string titleResource, MenuItemGroup group)
```

| Parámetro | Descripción |
| :--- | :--- |
| `resourceManagerProvider` | Tipo con una propiedad estática no pública de tipo `ResourceManager`. Las condiciones son las de [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#proveedor-de-recursos). |
| `titleResource` | Clave del recurso con el texto de la opción. Se asigna a `Title`. |
| `group` | Posición del menú. Se asigna a `Group`. |

El constructor lanza `ArgumentException` si `resourceManagerProvider` no tiene una propiedad estática no pública de tipo `ResourceManager` o si el recurso no contiene la clave `titleResource`.

Digi3D.AI crea el atributo cada vez que el usuario abre el submenú de la posición `group`, no al cargar la extensión. Si el constructor lanza `ArgumentException` en ese momento, Digi3D.AI no añade la opción de esa orden al menú y escribe el mensaje de la excepción con `System.Diagnostics.Trace`.

## Ejemplo

El ejemplo de [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#ejemplo) añade la orden `CUENTA_LINEAS` al menú **Herramientas**, después de **Configuración...**, con el texto del recurso `CuentaLineasMenu`.
