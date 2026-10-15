# Constructores
<!-- id: constructores-11 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Crea un [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) a un vértice de una línea.

```csharp
public VertexPointer(ReadOnlyLine line, int vertex)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `line` | [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) a la que pertenece el vértice. Se devuelve en `Line`. |
| `vertex` | Índice del vértice en `line.Points`. Se devuelve en `Vertex`. |

El constructor no comprueba los parámetros.

## Ejemplo

El [ejemplo de SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/#ejemplo) crea un `VertexPointer` por vértice de una línea.
