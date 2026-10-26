# AnalyzePointPosition
<!-- id: analyzepointposition -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica la posición de una coordenada respecto al recinto que forma la entidad, en el plano XY. Es un método de [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/).

```csharp
PointPosition AnalyzePointPosition(Point3D coordinate)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `coordinate` | Coordenada que se analiza. La coordenada Z no se usa. |

## Valor devuelto

Un valor de [PointPosition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/pointposition.md): `Exterior`, `Interior` o `Tangent` (sobre el borde).

| Tipo | Cálculo |
| :--- | :--- |
| `ReadOnlyLine`, `Line` | Cuenta los cortes de una semirrecta que parte de `coordinate` con los segmentos de la línea. Devuelve `Exterior` si la línea tiene menos de 4 vértices o si `coordinate` está fuera de las coordenadas mínimas y máximas de la línea, y `Tangent` si `coordinate` está sobre un segmento. |
| `ReadOnlyPolygon`, `Polygon` | Analiza primero el contorno exterior, como en una línea. Si `coordinate` está dentro, analiza cada hueco: devuelve `Tangent` si está sobre el borde de un hueco y `Exterior` si está dentro de un hueco. |

En el paquete de referencia, el parámetro de `ReadOnlyPolygon.AnalyzePointPosition` se llama `point`; en el ensamblado instalado se llama `coordinate`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea que no está cerrada en X, Y (`Closed` es `false`) o que tiene menos de 2 vértices. |

## Ejemplo

El [ejemplo de ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/#ejemplo) analiza tres coordenadas respecto a un polígono con un hueco.
