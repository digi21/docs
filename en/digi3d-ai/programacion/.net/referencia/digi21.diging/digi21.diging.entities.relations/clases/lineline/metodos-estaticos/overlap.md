# Overlap
<!-- id: overlap-2 -->
<!-- origen: 545561a887428bc3fc1b648136acb61223a14ba9 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the two lines overlap: they share at least one edge.

![Line overlapping another line](../../../../../../../../../images/lineasolapalinea.png)

```csharp
public static bool Overlap(ReadOnlyLine a, ReadOnlyLine b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| `b` | Second line. |

## Return value

`true` if both conditions are met:

* Two consecutive vertices of `a` coincide with two consecutive vertices of `b`, in either direction.
* The two lines are not equal according to [Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/equal.md).

For each vertex of `a`, only the first coincident vertex of `b` is sought. A common section that does not start and end at vertices of both lines is not detected.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
