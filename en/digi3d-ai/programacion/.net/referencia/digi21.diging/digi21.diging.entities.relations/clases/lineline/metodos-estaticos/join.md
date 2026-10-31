# Join
<!-- id: join-3 -->
<!-- origen: 273f337738a83d5a29be5bbd1c60fd1ff5cfcfc9 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the two lines touch at a common intermediate vertex without sharing edges or crossing.

![Line joining another line](../../../../../../../../../images/lineaunelinea.png)

```csharp
public static bool Join(ReadOnlyLine a, ReadOnlyLine b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| `b` | Second line. |

## Return value

`true` if all three conditions are met:

* An intermediate vertex of `a` coincides with an intermediate vertex of `b`.
* The lines share no edge: no two consecutive vertices of `a` coincide with two consecutive vertices of `b`.
* The lines do not cross at the first intermediate vertex of `a` coinciding with an intermediate vertex of `b`, using the criterion of [Across](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/across.md). Other common vertices are not analyzed.

If the lines only coincide at their endpoints, the method returns `false`; use [EndpointJoinEndpoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/endpointjoinendpoint.md) or [EndpointJoinExcludingEndpoints](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/endpointjoinexcludingendpoints.md) for that case.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
