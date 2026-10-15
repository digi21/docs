# LastSegment
<!-- id: lastsegment -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Último segmento de la línea.

```csharp
public Segment LastSegment { get; }
```

## Valor de la propiedad

Un [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md) con `Origin` en el penúltimo vértice y `Destination` en el último.

La propiedad no comprueba el número de vértices: no la uses en una línea con menos de 2 vértices (`Points.Count < 2`).
