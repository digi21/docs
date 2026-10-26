# NodeDigiTab
<!-- id: nodedigitab -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Código de una tabla de códigos [DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/).

```csharp
public sealed class NodeDigiTab : IDisposable
```

Implementa: `IDisposable`. El ensamblado de referencia del paquete NuGet declara `public sealed class NodeDigiTab`, sin `IDisposable`: el código compilado con el paquete no puede usar `using` con un `NodeDigiTab` ni llamar a `Dispose`, y el código nativo se libera cuando el recolector de basura finaliza el objeto.

Un `NodeDigiTab` se obtiene de dos formas:

- Con [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/codes.md) o con el indizador [this[string]](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/item-string.md) de una `DigiTab`. El objeto no es una copia: asignar una propiedad cambia el código en la tabla de códigos, en memoria. Si la tabla de códigos no es modificable, la asignación lanza `InvalidOperationException`.
- Con el [constructor](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/constructores.md), para añadirlo después a una tabla con [AddCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/addcode.md). Después de `AddCode`, ese objeto es de solo lectura.

Las asignaciones a las propiedades de un objeto de solo lectura lanzan `InvalidOperationException`.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [NodeDigiTab(string name)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/constructores.md) | Crea un código lineal con el nombre indicado. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [string Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/name.md) | Nombre del código. Solo lectura. |
| [string Description](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/description.md) | Descripción del código. |
| [GeometryType Type](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/type.md) | Tipo de geometría: punto, línea o virtual. |
| [int Priority](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/priority.md) | Prioridad del código. |
| [string Color](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/color.md) | Color en la ventana de dibujo. |
| [string ColorPhotogrammetric](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/colorphotogrammetric.md) | Color en la ventana fotogramétrica. |
| [IEnumerable&lt;string&gt; Tags](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/tags.md) | Etiquetas del código. |
| [IEnumerable&lt;string&gt; Alias](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/alias.md) | Alias del código. |
| [string Table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/table.md) | Tabla de base de datos vinculada al código. |
| [Dictionary&lt;string, string&gt; Values](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/values.md) | Valores del código. Solo lectura. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Dispose()` | Libera el código nativo. Después de `Dispose`, el objeto no se puede usar. No existe en el ensamblado de referencia del paquete NuGet. |

## Ejemplo

Este programa añade el código de punto `PUNTO_CONTROL` a una tabla de códigos y la guarda en otro archivo:

```csharp
using Digi21.DigiNG.DigiTab;

if (args.Length != 2)
{
    Console.WriteLine("Uso: AnadeCodigo <entrada.tab.xml> <salida.tab.xml>");
    return 1;
}

using var tabla = DigiTab.Load(args[0]);

if (tabla.HasCode("PUNTO_CONTROL"))
{
    Console.WriteLine("La tabla ya tiene el código PUNTO_CONTROL.");
    return 1;
}

var código = new NodeDigiTab("PUNTO_CONTROL")
{
    Description = "Punto de control",
    Color = "#FF0000FF",
    ColorPhotogrammetric = "#FFFF00FF",
    Priority = 10,
    Tags = ["control", "topografía"],
    // Enum.Parse obtiene el número del ensamblado instalado; lee la página de GeometryType.
    Type = Enum.Parse<GeometryType>("Point"),
};

// Después de AddCode, las propiedades de 'código' son de solo lectura.
tabla.AddCode(código);
tabla.Write(args[1]);

Console.WriteLine($"{tabla.Codes.Count()} códigos escritos en {args[1]}.");
return 0;
```
