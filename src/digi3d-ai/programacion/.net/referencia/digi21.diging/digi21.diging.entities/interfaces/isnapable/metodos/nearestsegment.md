# NearestSegment
<!-- id: nearestsegment -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Busca el segmento de la entidad más cercano a una coordenada y calcula la proyección perpendicular de la coordenada sobre ese segmento. Es un método de [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/).

```csharp
double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `coordinate` | Coordenada que se proyecta. |
| `calculatedCoordinate` | Devuelve la proyección de `coordinate` sobre el segmento encontrado. |
| `segment` | Devuelve el índice del segmento encontrado: el segmento `i` une los vértices `i` e `i + 1`. |

## Valor devuelto

Distancia en el plano XY entre `coordinate` y `calculatedCoordinate`.

| Tipo | Cálculo |
| :--- | :--- |
| `ReadOnlyLine`, `Line`, `ReadOnlyPolygon`, `Polygon` | Proyecta `coordinate` en perpendicular, en el plano XY, sobre la recta de cada segmento. Solo considera los segmentos en los que la proyección cae dentro del rectángulo que forman sus dos vértices, y de ellos elige el de menor distancia; con dos segmentos a la misma distancia, el de menor índice. En un polígono solo se analiza el contorno exterior. |
| `ReadOnlyPoint`, `Point`, `ReadOnlyText`, `Text` | `calculatedCoordinate` es `Coordinate`, `segment` vale 0 y el valor devuelto es la distancia en el plano XY entre `coordinate` y `Coordinate`. No lanza excepciones. |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea o un polígono sin vértices. |
| `Exception` | La entidad es una línea o un polígono y la proyección de `coordinate` no cae dentro de ningún segmento. También con un solo vértice, porque no hay segmentos. |

## Ejemplo

El [ejemplo de ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/#ejemplo) llama a este método con una línea y con un punto.
