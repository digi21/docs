# Code
<!-- id: code -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Código de una entidad. El nombre del código identifica en la tabla de códigos lo que representa la entidad. Opcionalmente, el código enlaza con un registro de una tabla de la base de datos del archivo de dibujo mediante el número de tabla (`Table`) y el identificador del registro (`Id`).

```csharp
public struct Code
```

Herencia: `Object` → `ValueType` → `Code`

Una entidad tiene uno o más códigos, en su propiedad [Entity.Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md). `Code` es una estructura: al leer un elemento de `Entity.Codes` se obtiene una copia. Para cambiar un código de una entidad, modifica la copia y asígnala otra vez con el indexador de `Codes`.

`default(Code)` tiene `Name` a `null`; los operadores `==` y `!=` y `ToString` lanzan `NullReferenceException` con ese valor.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [`Code(string name)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md#code-string) | Código sin enlace a la base de datos. |
| [`Code(string name, IDictionary<string, object> attributes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md#code-string-idictionary-string-object) | Código sin enlace a la base de datos y con los atributos indicados. |
| [`Code(string name, int table, int id)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md#code-string-int-int) | Código enlazado con el registro `id` de la tabla `table`. |
| [`Code(string name, int? table, int? id)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md#code-string-int-int-1) | Código con tabla y registro opcionales. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`string Name { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/name.md) | Nombre del código. |
| [`int? Table { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/table.md) | Número de la tabla de la base de datos, o `null`. |
| [`int? Id { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/id.md) | Identificador del registro de la base de datos, o `null`. |
| [`IDictionary<string, object> Attributes { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/attributes.md) | Atributos de base de datos del código: nombre del campo y valor. |
| [`uint Visible { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/visible.md) | Máscara de bits de los tipos de entidad que se muestran con este código en la ventana de dibujo. |
| [`uint VisiblePhotogrammetricWindow { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/visiblephotogrammetricwindow.md) | La misma máscara de bits para la ventana fotogramétrica. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `string ToString()` | Devuelve un texto localizado con el nombre del código y, si `Table` tiene valor, con la tabla y el identificador. En inglés: `Code: "nombre" Table: t Id: i`. |

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [`bool Compare(string codeNameA, string codeNameB)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/metodos-estaticos/compare.md) | Compara dos nombres de código con los comodines `*` y `?`. |
| [`string Compose(string stringToCompose, string wildCard)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/metodos-estaticos/compose.md) | Sustituye caracteres de un nombre de código según un patrón con comodines. |

## Operadores

| Operador | Descripción |
| :--- | :--- |
| `bool operator ==(Code a, Code b)` | `true` si `Name`, `Table` e `Id` son iguales. `Name` se compara con `string.CompareTo`, que distingue mayúsculas de minúsculas y usa la referencia cultural actual. No compara `Attributes`, `Visible` ni `VisiblePhotogrammetricWindow`. |
| `bool operator !=(Code a, Code b)` | Negación de `==`. |

`Code` no redefine `Equals` ni `GetHashCode`: `Equals` es el de `ValueType`, que compara todos los campos, también la referencia del diccionario `Attributes`. Dos códigos con el mismo nombre creados por separado son iguales con `==` y distintos con `Equals`.

## Ejemplo

Este programa compara nombres de código con comodines y escribe en un archivo `.bind` una línea con dos códigos:

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

// Compare admite los comodines * y ? en los dos nombres.
Console.WriteLine(Code.Compare(maestra.Name, "02*"));       // True
Console.WriteLine(Code.Compare(directora.Name, "0204??"));  // False

// Compose copia los caracteres de wildCard que no son ? hasta el primer *.
Console.WriteLine(Code.Compose(maestra.Name, "03*"));       // 030400

// == compara Name, Table e Id.
Console.WriteLine(maestra == new Code("020400"));           // True
Console.WriteLine(maestra == new Code("020400", 2, 25522)); // False

// Una línea con los dos códigos.
var línea = new Line(new[] { maestra, directora });
línea.Points.Add(new Point3D(0, 0, 100));
línea.Points.Add(new Point3D(10, 0, 100));

using var archivo = new BinDouble(args[0]);
archivo.Add(línea);
return 0;
```
