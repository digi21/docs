# DigiTab
<!-- id: digitab -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tabla de códigos en memoria.

```csharp
public sealed class DigiTab : IDisposable
```

Implementa: `IDisposable`.

La clase no tiene constructores públicos. Una `DigiTab` se obtiene de dos formas:

| Origen | Modificable |
| :--- | :--- |
| [DigiTab.Load](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos-estaticos/load.md), que carga un archivo de tabla de códigos. | Sí. |
| La propiedad estática `DigiTab` de la clase [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que devuelve la tabla de códigos de la ventana de dibujo activa. | No. |

En una tabla de códigos no modificable, `AddCode` y las asignaciones a las propiedades de sus [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) lanzan `InvalidOperationException`.

Los cambios se hacen en memoria. Para guardarlos, llama a [Write](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/write.md).

`Dispose` libera la tabla de códigos nativa. Después de `Dispose`, la instancia no se puede usar: sus miembros no comprueban si la instancia está liberada y no lanzan `ObjectDisposedException`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [string Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/path.md) | Ruta del archivo del que se cargó la tabla de códigos. |
| [IEnumerable&lt;NodeDigiTab&gt; Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/codes.md) | Códigos de la tabla. |
| [NodeDigiTab this[string name]](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/item-string.md) | Código con el nombre o el alias indicado. Lanza `ArgumentOutOfRangeException` si no existe. |
| [IDictionary&lt;string, IList&lt;Tuple&lt;string, Type&gt;&gt;&gt; Tables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/tables.md) | Tablas de base de datos que define la tabla de códigos, con sus campos. |

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [DigiTab Load(string path)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos-estaticos/load.md) | Carga una tabla de códigos de un archivo. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [bool HasCode(string name)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/hascode.md) | Indica si la tabla tiene un código o un alias con ese nombre exacto. |
| [bool HasCode(string name, bool allowWilcards)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/hascode.md) | Igual, con comodines `*` y `?` si `allowWilcards` es `true`. |
| [void AddCode(NodeDigiTab code)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/addcode.md) | Añade un código a la tabla. |
| [void Write(string path)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/write.md) | Guarda la tabla de códigos en un archivo. |
| `void Dispose()` | Libera la tabla de códigos nativa. |

## Ejemplo

Este programa muestra el nombre, el tipo de geometría y la descripción de cada código de una tabla de códigos, las tablas de base de datos con sus campos, y si algún código empieza por `0204`:

```csharp
using Digi21.DigiNG.DigiTab;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ListaCodigos <tabla.tab.xml>");
    return 1;
}

using var tabla = DigiTab.Load(args[0]);

foreach (var código in tabla.Codes)
{
    // Type.ToString() devuelve el nombre del valor que tiene el ensamblado instalado.
    Console.WriteLine($"{código.Name}\t{código.Type.ToString()}\t{código.Description}");
}

foreach (var (nombreTabla, campos) in tabla.Tables)
    Console.WriteLine($"{nombreTabla}: {string.Join(", ", campos.Select(c => $"{c.Item1} ({c.Item2?.Name})"))}");

Console.WriteLine(tabla.HasCode("0204*", true)
    ? "Hay códigos que empiezan por 0204."
    : "Ningún código empieza por 0204.");
return 0;
```

El motivo de usar `Type.ToString()` se explica en [GeometryType](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/geometrytype.md).
