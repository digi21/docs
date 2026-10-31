# Code
<!-- id: code -->
<!-- origen: f225bba39dfab074dafd7ac3cd1be1afb5f5aa1d -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity code. The code name identifies what the entity represents in the code table. Optionally, the code links to a record in a table of the drawing file's database through the table number (`Table`) and record identifier (`Id`).

```csharp
public struct Code
```

Inheritance: `Object` → `ValueType` → `Code`

An entity has one or more codes in its [Entity.Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md) property. `Code` is a structure: reading an element of `Entity.Codes` returns a copy. To change an entity's code, modify the copy and assign it back through the `Codes` indexer.

`default(Code)` has `Name` set to `null`; the `==` and `!=` operators and `ToString` throw `NullReferenceException` for that value.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [`Code(string name)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md#code-string) | Code with no database link. |
| [`Code(string name, IDictionary<string, object> attributes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md#code-string-idictionary-string-object) | Code with no database link and the specified attributes. |
| [`Code(string name, int table, int id)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md#code-string-int-int) | Code linked to record `id` in table `table`. |
| [`Code(string name, int? table, int? id)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md#code-string-int-int-1) | Code with optional table and record. |

## Properties

| Property | Description |
| :--- | :--- |
| [`string Name { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/name.md) | Code name. |
| [`int? Table { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/table.md) | Database table number, or `null`. |
| [`int? Id { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/id.md) | Database record identifier, or `null`. |
| [`IDictionary<string, object> Attributes { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/attributes.md) | Code's database attributes: field name and value. |
| [`uint Visible { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/visible.md) | Bitmask of entity types displayed with this code in the drawing window. |
| [`uint VisiblePhotogrammetricWindow { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/visiblephotogrammetricwindow.md) | The same bitmask for the photogrammetric window. |

## Methods

| Method | Description |
| :--- | :--- |
| `string ToString()` | Returns localized text with the code name and, if `Table` has a value, the table and identifier. In English: `Code: "nombre" Table: t Id: i`. |

## Static methods

| Method | Description |
| :--- | :--- |
| [`bool Compare(string codeNameA, string codeNameB)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/metodos-estaticos/compare.md) | Compares two code names using `*` and `?` wildcards. |
| [`string Compose(string stringToCompose, string wildCard)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/metodos-estaticos/compose.md) | Replaces characters in a code name according to a wildcard pattern. |

## Operators

| Operator | Description |
| :--- | :--- |
| `bool operator ==(Code a, Code b)` | `true` if `Name`, `Table` and `Id` are equal. `Name` is compared using `string.CompareTo`, which is case-sensitive and uses the current culture. Does not compare `Attributes`, `Visible` or `VisiblePhotogrammetricWindow`. |
| `bool operator !=(Code a, Code b)` | Negation of `==`. |

`Code` does not override `Equals` or `GetHashCode`: `Equals` is inherited from `ValueType` and compares all fields, including the `Attributes` dictionary reference. Two codes with the same name created separately are equal with `==` and different with `Equals`.

## Example

This program compares code names using wildcards and writes a line with two codes to a `.bind` file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: CodigosLinea <salida.bind>");
    return 1;
}

var maestra = new Code("020400");
var directora = new Code("020200");

// Compare supports * and ? wildcards in both names.
Console.WriteLine(Code.Compare(maestra.Name, "02*"));       // True
Console.WriteLine(Code.Compare(directora.Name, "0204??"));  // False

// Compose copies wildCard characters other than ? up to the first *.
Console.WriteLine(Code.Compose(maestra.Name, "03*"));       // 030400

// == compares Name, Table and Id.
Console.WriteLine(maestra == new Code("020400"));           // True
Console.WriteLine(maestra == new Code("020400", 2, 25522)); // False

// A line with both codes.
var línea = new Line(new[] { maestra, directora });
línea.Points.Add(new Point3D(0, 0, 100));
línea.Points.Add(new Point3D(10, 0, 100));

using var archivo = new BinDouble(args[0]);
archivo.Add(línea);
return 0;
```
