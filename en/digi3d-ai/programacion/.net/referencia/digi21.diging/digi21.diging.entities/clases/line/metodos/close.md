# Close
<!-- id: close -->
<!-- origen: 7b4ec9dfd948b200202e690f131174ab5f662dc6 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Closes the line: appends a copy of the first vertex.

```csharp
public void Close()
```

If the last vertex already has the same X, Y and Z as the first, the method does nothing. If X and Y match but Z does not, it appends the copy: after the call, `ClosedXYZ` is `true`.

The line must have at least one vertex: the method does not check this.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The line is read-only. |

## Example

```csharp
var línea = new Line(new Code("080100"));
línea.Points.Add(new Point3D(0, 0, 0));
línea.Points.Add(new Point3D(0, 10, 0));
línea.Points.Add(new Point3D(10, 10, 0));
línea.Close();
Console.WriteLine(línea.Points.Count); // 4
```
