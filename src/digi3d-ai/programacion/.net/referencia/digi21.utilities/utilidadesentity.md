# UtilidadesEntity
<!-- id: digi21.utilities.utilidadesentity -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Métodos de extensión de [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) para consultar sus códigos y su visibilidad, y para convertir una entidad en líneas.

```csharp
public static class UtilidadesEntity
```

## Comodines

Los métodos cuyo nombre termina en `ConComodín` comparan los nombres de código con [Code.Compare](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/), que admite dos comodines:

- `*`: si aparece en la posición `i` de cualquiera de los dos nombres, los nombres coinciden cuando sus `i` primeros caracteres coinciden. `02*` coincide con `020012` y con `02`.
- `?`: coincide con un carácter cualquiera en la misma posición. `0200?2` coincide con `020012`.

Sin `*`, los dos nombres deben tener la misma longitud. Los comodines pueden estar en el código de la entidad o en el código que se busca. La comparación distingue mayúsculas de minúsculas.

Los métodos sin `ConComodín` comparan los nombres con `==`: `*` y `?` son caracteres normales.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| `bool TieneElCódigo(this Entity entidad, string código)` | `true` si algún código de la entidad se llama exactamente `código`. |
| `bool TieneElCódigoConComodín(this Entity entidad, string código)` | `true` si algún código de la entidad coincide con `código` según las reglas de los comodines. |
| `bool TieneAlgúnCódigo(this Entity entidad, IEnumerable<string> códigos)` | `true` si algún código de la entidad se llama exactamente como alguno de `códigos`. |
| `bool TieneAlgúnCódigoConComodín(this Entity entidad, IEnumerable<string> códigos)` | `true` si algún código de la entidad coincide con alguno de `códigos` según las reglas de los comodines. |
| `IEnumerable<string> CódigosComunes(this Entity entidad, IEnumerable<string> códigos)` | Devuelve los elementos de `códigos` que coinciden, con comodines, con algún código de la entidad. Devuelve los textos de `códigos`, no los nombres de los códigos de la entidad, sin repetir. El orden es el de la búsqueda: para cada código de la entidad, en su orden, se recorren los elementos de `códigos`. |
| `bool AlgúnCódigoVisible(this Entity entidad)`<br>`bool AlgúnCódigoVisible(this Entity entidad, bool códigosDesconocidosSonVisibles)` | `true` si la propiedad `Visible` de algún código de la entidad es distinta de `0`. Una entidad sin códigos devuelve `false`. No se consulta la propiedad `Hidden` de la entidad. El parámetro `códigosDesconocidosSonVisibles` no cambia el resultado: solo se usa si leer `Code.Visible` lanza una excepción, y `Code.Visible` no lanza excepciones. |
| `IEnumerable<ReadOnlyLine> ExplotaAReadOnlyLine(this Entity entidad)` | Devuelve la entidad convertida en líneas. Lee los detalles a continuación. |
| `bool CódigosIdénticos(this Entity entidadA, Entity entidadB, List<string> listaErrores = null)` | `true` si las dos entidades tienen los mismos códigos, por nombre y sin importar el orden. Lee los detalles a continuación. |

Si `entidad` es `null`, todos los métodos lanzan `NullReferenceException` menos `ExplotaAReadOnlyLine`, que devuelve una secuencia vacía.

### ExplotaAReadOnlyLine

Según el tipo de la entidad:

| Tipo de `entidad` | Líneas que devuelve |
| :--- | :--- |
| `ReadOnlyLine` (y `Line`) | La propia entidad. |
| `ReadOnlyPolygon` (y `Polygon`) | Primero, una `Line` nueva con los códigos del polígono y los vértices de su contorno exterior; después, cada hueco de `Holes`. La línea nueva no pertenece a ningún archivo y no copia los atributos ni el color del polígono. |
| `ReadOnlyComplex` (y `Complex`) | Las subentidades de `Entities` que son líneas. Los polígonos y los complejos que contiene el complejo no se devuelven. |
| Otro (puntos y textos) | Ninguna. |

La secuencia se evalúa al recorrerla.

### CódigosIdénticos

Compara el número de códigos y sus nombres. Los nombres se comparan con `==`, sin comodines, y el orden de los códigos no importa. Cada código de `entidadA` se empareja con un código de `entidadB` del mismo nombre que no se ha emparejado antes: un nombre que aparece dos veces en una entidad tiene que aparecer dos veces en la otra.

- Si `listaErrores` es `null`, devuelve `false` cuando el número de códigos es distinto o algún código queda sin pareja, y `true` en otro caso.
- Si `listaErrores` no es `null`, añade a la lista el mensaje «Las dos entidades tienen un número distinto de códigos» si el número de códigos es distinto, y el mensaje «El código *nombre* no está en la otra entidad» por cada código que queda sin pareja: primero los de `entidadA` y después los de `entidadB`. Devuelve `true` solo si la lista está vacía al terminar, así que una lista que ya tenía mensajes produce `false`.

## Ejemplo

Este programa crea una línea con dos códigos y consulta sus códigos con y sin comodines:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;
using Digi21.Utilities;

var línea = new Line([new Code("020012"), new Code("030100")]);
línea.Points.Add(new Point3D(0, 0, 0));
línea.Points.Add(new Point3D(10, 0, 0));

Console.WriteLine(línea.TieneElCódigo("02*"));                        // False: sin comodines
Console.WriteLine(línea.TieneElCódigoConComodín("02*"));              // True
Console.WriteLine(línea.TieneAlgúnCódigo(["010000", "030100"]));      // True
Console.WriteLine(string.Join(", ", línea.CódigosComunes(["03*", "0?0012", "99*"]))); // 0?0012, 03*
Console.WriteLine(línea.ExplotaAReadOnlyLine().Count());              // 1
```
