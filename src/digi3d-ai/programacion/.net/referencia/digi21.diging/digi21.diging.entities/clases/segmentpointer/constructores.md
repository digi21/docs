# Constructores
<!-- id: constructores-9 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Crea un [SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/) al segmento de una línea que une dos vértices.

```csharp
public SegmentPointer(ReadOnlyLine line, int firstVertex, int secondVertex)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `line` | [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) a la que pertenece el segmento. Se devuelve en `Line`. |
| `firstVertex` | Índice del primer vértice en `line.Points`. Se devuelve en `FirstVertex`. |
| `secondVertex` | Índice del segundo vértice en `line.Points`. Se devuelve en `SecondVertex`. |

El constructor no comprueba los parámetros.

## Ejemplo

El [ejemplo de SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/#ejemplo) crea un `SegmentPointer` por segmento de una línea.
