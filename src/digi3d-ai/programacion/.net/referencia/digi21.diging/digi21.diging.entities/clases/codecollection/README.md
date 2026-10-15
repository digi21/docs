# CodeCollection
<!-- id: digi21.diging.entities.codecollection -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Colección de los códigos de una entidad. Es el objeto que devuelve [Entity.Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md). Cada cambio en la colección se aplica a la entidad.

```csharp
public class CodeCollection : IList<Code>
```

Implementa: `IList<Code>`, `ICollection<Code>`, `IEnumerable<Code>`.

El paquete NuGet de referencia `Digi21.DigiNG` no declara `CodeCollection`: `Entity.Codes` es de tipo `IList<Code>`. El código compilado con el paquete solo usa los miembros de `IList<Code>`; el indexador por nombre no está disponible.

La clase no tiene constructores públicos.

La colección guarda una copia de cada [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/). `Code` es una estructura: para cambiar un código, lee el elemento, modifícalo y asígnalo otra vez con el indexador.

Si la entidad es de solo lectura (pertenece a un archivo de dibujo), los métodos que modifican la colección lanzan `InvalidOperationException`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `int Count { get; }` | Número de códigos. |
| `bool IsReadOnly { get; }` | `true` si la entidad es de solo lectura ([Entity.ReadOnly](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md)). |
| `Code this[int index] { get; set; }` | Código de la posición `index`. Lanza `ArgumentOutOfRangeException` si `index` no está entre `0` y `Count - 1`. |
| `Code this[string name] { get; set; }` | Primer código cuyo `Name` es igual a `name`, sin comodines. Lanza `ArgumentOutOfRangeException` si no hay ningún código con ese nombre. El descriptor `set` sustituye ese código. No está en el paquete de referencia. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Add(Code item)` | Añade el código al final. |
| `void Insert(int index, Code item)` | Inserta el código en la posición `index`. Lanza `ArgumentOutOfRangeException` si `index` es negativo o mayor que `Count`. |
| `void Clear()` | Quita todos los códigos. |
| `bool Remove(Code item)` | Quita de la colección y de la entidad el código de la posición que devuelve `IndexOf(item)`: el primero cuyo nombre coincide con `item.Name` según [Code.Compare](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/metodos-estaticos/compare.md). Devuelve `false` si ningún nombre coincide. |
| `void RemoveAt(int index)` | Quita el código de la posición `index`. Lanza `ArgumentOutOfRangeException` si `index` no está entre `0` y `Count - 1`. |
| `int IndexOf(Code item)` | Posición del primer código cuyo nombre coincide con `item.Name` según `Code.Compare`, con los comodines `*` y `?`. Devuelve `-1` si ninguno coincide. No compara `Table` ni `Id`. |
| `bool Contains(Code item)` | `true` si `IndexOf(item)` no devuelve `-1`: compara el nombre, con los comodines `*` y `?`, y no compara `Table`, `Id` ni `Attributes`. |
| `void CopyTo(Code[] array, int arrayIndex)` | Copia los códigos en `array` a partir de `arrayIndex`. |
| `IEnumerator<Code> GetEnumerator()` | Enumerador de los códigos. |

Excepciones de los métodos que modifican la colección (`Add`, `Insert`, `Clear`, `Remove`, `RemoveAt` y los descriptores `set` de los indexadores):

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es de solo lectura. |

## Ejemplo

Este programa añade, modifica y quita códigos de una línea y la escribe en un archivo `.bind`:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ColeccionCodigos <salida.bind>");
    return 1;
}

var línea = new Line(new Code("020400"));
línea.Points.Add(new Point3D(0, 0, 100));
línea.Points.Add(new Point3D(10, 0, 100));

// Codes es una CodeCollection: cada cambio se aplica a la entidad.
línea.Codes.Add(new Code("040100"));
línea.Codes.Insert(0, new Code("030100"));

// IndexOf compara solo el nombre, con los comodines de Code.Compare.
Console.WriteLine(línea.Codes.IndexOf(new Code("04*")));   // 2

// Code es una estructura: se modifica una copia y se asigna de nuevo.
var código = línea.Codes[1];
código.Visible = 0;
línea.Codes[1] = código;

línea.Codes.RemoveAt(0);

foreach (var c in línea.Codes)
    Console.WriteLine($"{c.Name} {c.Visible:X8}");          // 020400 00000000, 040100 FFFFFFFF

using var archivo = new BinDouble(args[0]);
archivo.Add(línea);

// La línea ya pertenece al archivo: la colección es de solo lectura.
Console.WriteLine(línea.Codes.IsReadOnly);                  // True
return 0;
```
