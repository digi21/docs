# ComparadorPoint2DRango
<!-- id: digi21.diging.topology.comparadorpoint2drango -->

Espacio de nombres: `Digi21.DigiNG.Topology`  
Ensamblado: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Estructura auxiliar que usa [NodeDetector.FindAll](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/nodedetector.md#findall) para seleccionar los nodos por su coordenada X.

```csharp
public struct ComparadorPoint2DRango
```

> El ensamblado de referencia del paquete NuGet `Digi21.DigiNG.Topology` 26.0.0 no declara este tipo: un programa compilado con el paquete no lo puede usar. Solo existe en el ensamblado que instala Digi3D.AI.

## Constructores

```csharp
public ComparadorPoint2DRango(double _x, double _rango)
```

Asigna `_x` al campo `x` y `_rango` al campo `rango`.

## Campos

| Campo | Descripción |
| :--- | :--- |
| `double x` | Coordenada X de referencia. |
| `double rango` | Distancia máxima en X. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `bool Compara(IGrouping<Point2D, VertexPointer> valor)` | `true` si la diferencia en valor absoluto entre `x` y `valor.Key.X` es menor o igual que `rango`, con la tolerancia de [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). |

## Ejemplo

Para buscar nodos cerca de una coordenada usa [NodeDetector.FindAll](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/nodedetector.md#ejemplo), que crea y usa esta estructura.
