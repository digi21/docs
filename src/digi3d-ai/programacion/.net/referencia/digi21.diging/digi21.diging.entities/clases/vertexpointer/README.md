# VertexPointer
<!-- id: vertexpointer -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Identifica un vértice de una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) por la línea y el índice del vértice.

```csharp
public struct VertexPointer
```

Herencia: `Object` → `ValueType` → `VertexPointer`

La estructura solo guarda los dos valores que recibe el constructor: no comprueba que `line` no sea `null` ni que el índice esté dentro de `line.Points`, y no se actualiza si la línea cambia. `default(VertexPointer)` tiene `Line` a `null` y `Vertex` a 0.

El método `DetectNodes` de la clase `NodeDetector` del paquete [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology.md) agrupa por coordenada los `VertexPointer` de los vértices que forman nodos.

## Constructores

| Miembro | Descripción |
| :--- | :--- |
| [`VertexPointer(ReadOnlyLine line, int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/constructores.md) | Crea el puntero al vértice `vertex` de `line`. |

## Propiedades

| Miembro | Descripción |
| :--- | :--- |
| [`ReadOnlyLine Line { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md) | Línea a la que pertenece el vértice. |
| [`int Vertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/vertex.md) | Índice del vértice en `Line.Points`. |

## Ejemplo

El [ejemplo de SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/#ejemplo) crea un `VertexPointer` por cada vértice de una línea guardada en un archivo `.bind`.
