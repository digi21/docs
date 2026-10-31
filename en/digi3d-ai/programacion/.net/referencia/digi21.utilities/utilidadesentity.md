# UtilidadesEntity
<!-- id: digi21.utilities.utilidadesentity -->
<!-- origen: 62d3675ae44f469c029d13fb0bf16cd0f171b717 -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

[Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) extension methods for querying codes and visibility, and converting an entity to lines.

```csharp
public static class UtilidadesEntity
```

## Wildcards

Methods whose names end in `ConComodín` compare code names through [Code.Compare](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/), which supports two wildcards:

- `*`: if it appears at position `i` in either name, the names match when their first `i` characters match. `02*` matches `020012` and `02`.
- `?`: matches any character at the same position. `0200?2` matches `020012`.

Without `*`, both names must have the same length. Wildcards can occur in the entity's code or in the code being sought. Comparison is case-sensitive.

Methods without `ConComodín` compare names through `==`: `*` and `?` are ordinary characters.

## Static methods

| Method | Description |
| :--- | :--- |
| `bool TieneElCódigo(this Entity entidad, string código)` | `true` if an entity code is named exactly `código`. |
| `bool TieneElCódigoConComodín(this Entity entidad, string código)` | `true` if an entity code matches `código` under the wildcard rules. |
| `bool TieneAlgúnCódigo(this Entity entidad, IEnumerable<string> códigos)` | `true` if an entity code has exactly the same name as an element of `códigos`. |
| `bool TieneAlgúnCódigoConComodín(this Entity entidad, IEnumerable<string> códigos)` | `true` if an entity code matches an element of `códigos` under the wildcard rules. |
| `IEnumerable<string> CódigosComunes(this Entity entidad, IEnumerable<string> códigos)` | Returns elements of `códigos` matching an entity code, using wildcards. Returns strings from `códigos`, rather than the entity's code names, without duplicates. Order follows the search: for each entity code, in its order, elements of `códigos` are traversed. |
| `bool AlgúnCódigoVisible(this Entity entidad)`<br>`bool AlgúnCódigoVisible(this Entity entidad, bool códigosDesconocidosSonVisibles)` | `true` if an entity code's `Visible` property is not `0`. An entity without codes returns `false`. The entity's `Hidden` property is not queried. `códigosDesconocidosSonVisibles` does not change the result: it is only used if reading `Code.Visible` throws an exception, and `Code.Visible` throws none. |
| `IEnumerable<ReadOnlyLine> ExplotaAReadOnlyLine(this Entity entidad)` | Returns the entity converted to lines. See details below. |
| `bool CódigosIdénticos(this Entity entidadA, Entity entidadB, List<string> listaErrores = null)` | `true` if both entities have the same codes by name, regardless of order. See details below. |

If `entidad` is `null`, all methods throw `NullReferenceException` except `ExplotaAReadOnlyLine`, which returns an empty sequence.

### ExplotaAReadOnlyLine

Depending on entity type:

| Type of `entidad` | Lines returned |
| :--- | :--- |
| `ReadOnlyLine` (and `Line`) | The entity itself. |
| `ReadOnlyPolygon` (and `Polygon`) | First, a new `Line` with the polygon's codes and outer boundary vertices; then each hole from `Holes`. The new line belongs to no file and does not copy the polygon's attributes or color. |
| `ReadOnlyComplex` (and `Complex`) | Subentities in `Entities` that are lines. Polygons and complexes contained in the complex are not returned. |
| Other (points and text) | None. |

The sequence is evaluated when iterated.

### CódigosIdénticos

Compares code counts and names. Names are compared through `==`, without wildcards, and code order does not matter. Each code of `entidadA` is paired with a same-named code of `entidadB` not previously paired: a name appearing twice in one entity must appear twice in the other.

- If `listaErrores` is `null`, returns `false` when code counts differ or a code remains unpaired, and `true` otherwise.
- If `listaErrores` is not `null`, adds "The two entities have a different number of codes" to the list if counts differ, and "The code *name* is not in the other entity" for each unpaired code: first those of `entidadA`, then those of `entidadB`. Returns `true` only if the list is empty at the end, so a list already containing messages causes `false`.

## Example

This program creates a line with two codes and queries its codes with and without wildcards:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;
using Digi21.Utilities;

var línea = new Line([new Code("020012"), new Code("030100")]);
línea.Points.Add(new Point3D(0, 0, 0));
línea.Points.Add(new Point3D(10, 0, 0));

Console.WriteLine(línea.TieneElCódigo("02*"));                        // False: without wildcards
Console.WriteLine(línea.TieneElCódigoConComodín("02*"));              // True
Console.WriteLine(línea.TieneAlgúnCódigo(["010000", "030100"]));      // True
Console.WriteLine(string.Join(", ", línea.CódigosComunes(["03*", "0?0012", "99*"]))); // 0?0012, 03*
Console.WriteLine(línea.ExplotaAReadOnlyLine().Count());              // 1
```
