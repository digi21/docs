# Clone
<!-- id: clone -->
<!-- origen: bcb5562f8d228cdacd8a0b3d5d1cd0305928a5a0 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns a copy of the entity. The copy does not belong to any drawing file and can therefore be modified.

```csharp
public Entity Clone()
```

Each derived class declares with `new` a `Clone()` returning the read/write type: [ReadOnlyLine.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/metodos/clone.md) returns `Line`, [ReadOnlyPolygon.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/metodos/clone.md) returns `Polygon`, [ReadOnlyComplex.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/metodos/clone.md) returns `Complex`, `ReadOnlyPoint.Clone` returns `Point`, and `ReadOnlyText.Clone` returns `Text`. The method executed depends on the variable's type: `Entity.Clone()` calls the derived class's `Clone()` and also copies code attributes (see the table). `ICloneable.Clone()` calls `Entity.Clone()`.

## Return value

A new entity of the read/write type, with `Owner` set to `null` and `ReadOnly` set to `false`.

| Data | Copy |
| :--- | :--- |
| Coordinates, polygon holes and complex entities | Copied. |
| `Color`, `Weight`, `FillColor` and `Deleted` | Copied. |
| `Codes` | Names, tables, identifiers and visibility are copied. |
| Each code's `Code.Attributes` | With `Entity.Clone()`: a new `Dictionary<string, object>` containing a copy of each code's attributes. With the derived class's `Clone()`: a read-only dictionary containing attributes stored in the native entity (those of an entity read from a file); attributes assigned to codes in .NET are not copied. |
| `Attributes` | Read-only dictionary containing attributes stored in the native entity (those of an entity read from a file). Attributes assigned in .NET are not copied. To change them, assign another dictionary. |
| `UserData` and `Hidden` | Not copied. |

## Example

```csharp
// línea is a ReadOnlyLine read from a file: the copy is a Line.
var copia = línea.Clone();
copia.Points.Add(new Point3D(0, 0, 0));
```
