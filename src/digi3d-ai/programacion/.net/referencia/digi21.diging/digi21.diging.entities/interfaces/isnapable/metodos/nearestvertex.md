# NearestVertex
<!-- id: nearestvertex -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Busca el vértice de la entidad más cercano a una coordenada. Es un método de [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/).

```csharp
double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `coordinate` | Coordenada de referencia. |
| `nearestVertex` | Devuelve las coordenadas X, Y y Z del vértice encontrado. |
| `vertex` | Devuelve el índice del vértice encontrado en `Points`. |

## Valor devuelto

Distancia en el plano XY entre `coordinate` y `nearestVertex`.

| Tipo | Cálculo |
| :--- | :--- |
| `ReadOnlyLine`, `Line`, `ReadOnlyPolygon`, `Polygon` | Recorre todos los vértices y elige el de menor distancia en el plano XY; con dos vértices a la misma distancia, el de menor índice. En un polígono solo se analiza el contorno exterior. |
| `ReadOnlyPoint`, `Point`, `ReadOnlyText`, `Text` | `nearestVertex` es `Coordinate` y `vertex` vale 0. |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea sin vértices. |

En la versión 26.0.0, `ReadOnlyPolygon.NearestVertex` no comprueba si el polígono tiene vértices: con un polígono vacío el resultado no está definido.

## Ejemplo

El [ejemplo de ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/#ejemplo) llama a este método con una línea y con un punto.
