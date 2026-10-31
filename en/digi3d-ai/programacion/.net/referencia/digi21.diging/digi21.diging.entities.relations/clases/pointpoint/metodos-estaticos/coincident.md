# Coincident
<!-- id: coincident-3 -->
<!-- origen: f998e0b443da6bb31a85467ce39653c2a29875b5 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the two points are coincident.

![Two coincident points](../../../../../../../../../images/puntopuntocoincidentes.png)

```csharp
public static bool Coincident(ReadOnlyPoint a, ReadOnlyPoint b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First point, of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `b` | Second point. |

## Return value

`true` if the two points' X and Y coordinates are identical. The Z coordinate is not compared. See [PointPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/) for why the `Precision.Epsilon` tolerance does not apply and why a `Point` created in memory is never coincident.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |

## Example

See the [PointPoint example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/#example).
