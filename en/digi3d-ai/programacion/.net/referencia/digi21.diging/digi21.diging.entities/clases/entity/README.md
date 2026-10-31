# Entity
<!-- id: entity -->
<!-- origen: 59dedda1e472aebf3ac9b23ca380c09a87d11813 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Abstract base class of all entities. Defines codes, colors, attributes, the drawing file to which each entity belongs, and minimum and maximum coordinates.

```csharp
public abstract class Entity : IWindow3D, ICloneable
```

Implements: [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable`. The installed assembly also implements `IDisposable`; the reference package does not declare it.

Derived types: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/), [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/), [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) and [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/).

The class has no public constructors. Entities are created using the constructors of [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/), [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) and [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/), or read from a drawing file.

## Read-only entities

An entity is read-only ([ReadOnly](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md) is `true`) when it belongs to a drawing file: entities returned by the file during iteration and those added using `Add`. In a read-only entity, the `set` accessors of `Color`, `Weight` and `FillColor`, methods modifying `Codes`, and modifying members of derived classes throw `InvalidOperationException`. `Hidden`, `Attributes` and `UserData` can also be assigned on a read-only entity.

To modify a file's entity, modify the copy returned by [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md) and add it to the file.

## Minimum and maximum coordinates

The `IWindow3D` properties describe the box containing the entity's coordinates. A newly created entity has no box: `Valid` is `false` until the entity has coordinates. The `Points` collections of `Line` and `Polygon` update the box on each change. Assigning `Coordinate` in a `Point` or `Text` does not update the box.

While `Valid` is `false`:

- `Xmin` is `null`, and `Ymin`, `Zmin`, `Xmax`, `Ymax` and `Zmax` return empty-box values (`double.MaxValue` for minima and `-double.MaxValue` for maxima);
- `Width`, `Height`, `Depth`, `Center`, `NW`, `N`, `NE`, `E`, `SE`, `S`, `SW` and `W` throw `InvalidOperationException`;
- the `get` accessors of `Color`, `Weight` and `FillColor` throw `InvalidOperationException`.

## Properties

| Property | Description |
| :--- | :--- |
| [`IDictionary<string, object> Attributes { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/attributes_entity.md) | Entity attributes: name and value. |
| [`IList<Code> Codes { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md) | Entity codes. |
| [`int? Color { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/color.md) | Entity's own color, or `null` to use the code table's color. |
| [`DateTime CreationTime { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/creationtime.md) | Entity creation date and time. |
| [`bool Deleted { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/deleted.md) | `true` if the entity is marked as deleted. |
| [`string FilePointer { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/filepointer.md) | Entity identifier in its drawing file. |
| [`int? FillColor { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/fillcolor.md) | Own fill color, or `null` to use the code table's fill color. |
| [`bool Hidden { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md) | `true` to hide the entity. |
| [`IDrawingFile Owner { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/owner.md) | Drawing file to which the entity belongs, or `null`. |
| [`bool ReadOnly { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md) | `true` if `Owner` is not `null`. |
| [`object UserData { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/userdata.md) | Programmer's object associated with the entity. |
| [`bool Visible { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/visible.md) | `true` if the entity is displayed in the drawing window. |
| [`int? Weight { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/weight.md) | Own line weight, or `null` to use the code table's line weight. |
| [`double? Xmin { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md) | Minimum X coordinate, or `null` if `Valid` is `false`. |
| [`double Ymin { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md), [`Zmin`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md), [`Xmax`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md), [`Ymax`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md), [`Zmax`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md) | Remaining minimum and maximum coordinates. The installed assembly also declares a `set` accessor on all six properties (including `Xmin`), which throws `InvalidOperationException`. |
| [`bool Valid { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md) | `true` if the box is valid: each minimum is less than or equal to its maximum. |
| [`double Width { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md), [`Height`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md), [`Depth`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md) | `Xmax - Xmin`, `Ymax - Ymin` and `Zmax - Zmin`. |
| [`Point3D Center { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md) | Box center. Not necessarily a point on the entity; to obtain a point inside an enclosed area, use [ICloseable.InteriorPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md). |
| [`Point3D NW`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md), [`N`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/n.md), [`NE`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md), [`E`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/e.md), [`SE`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md), [`S`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/s.md), [`SW`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md), [`W`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md) | Corners and side midpoints of the box in the X, Y plane. All eight points have `Z` equal to `Zmin`. |

## Methods

| Method | Description |
| :--- | :--- |
| [`Entity Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md) | Returns a copy of the entity. The copy does not belong to any drawing file. |
| `string ToString()` | Localized text with the entity type, minimum and maximum coordinates, codes and type-specific data (vertices, coordinate, text). |
| `void Dispose()` | Releases the native entity. `Dispose` is available only in the installed assembly: the reference package does not declare `IDisposable`, so code compiled with the package cannot call `Dispose` or use `using` with an entity. For entities forming part of another (polygon holes, complex entities), this method does not release the native entity. After calling `Dispose`, you cannot use the entity. |

## Example

This program assigns colors to a line, checks that the line becomes read-only when added to a `.bind` file, and adds an offset copy:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: PropiedadesEntidad <salida.bind>");
    return 1;
}

var línea = new Line(new Code("050100"));
línea.Points.Add(new Point3D(0, 0, 0));
línea.Points.Add(new Point3D(10, 5, 2));

// Read Color, Weight and FillColor once the entity has coordinates (Valid is true).
línea.Color = 3;
línea.Weight = 2;
Console.WriteLine($"{línea.Color} {línea.Weight} {línea.FillColor?.ToString() ?? "null"}"); // 3 2 null
Console.WriteLine($"{línea.Width} {línea.Height} {línea.Depth}");                         // 10 5 2
Console.WriteLine(línea.ReadOnly);                                                        // False

using var archivo = new BinDouble(args[0]);
archivo.Add(línea);

// The entity now belongs to the file and is read-only.
Console.WriteLine(línea.ReadOnly);                          // True
Console.WriteLine(ReferenceEquals(línea.Owner, archivo));   // True

try
{
    línea.Color = 5;
}
catch (InvalidOperationException e)
{
    Console.WriteLine(e.Message);
}

// Clone returns a copy that does not belong to any file.
var copia = línea.Clone();
copia.Color = 5;
copia.Offset(0, 10);
archivo.Add(copia);
return 0;
```
