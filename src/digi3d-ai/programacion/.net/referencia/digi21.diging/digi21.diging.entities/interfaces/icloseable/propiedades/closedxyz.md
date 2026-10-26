# ClosedXYZ
<!-- id: closedxyz -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la entidad está cerrada en X, Y y Z. Es una propiedad de [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/).

```csharp
bool ClosedXYZ { get; }
```

## Valor de la propiedad

| Tipo | Valor |
| :--- | :--- |
| `ReadOnlyLine`, `Line` | `true` si la X, la Y y la Z del primer vértice son iguales a las del último, con la tolerancia de comparación de números reales de Digi3D.AI. |
| `ReadOnlyPolygon`, `Polygon` | Siempre `true`, aunque las coordenadas Z del primer y del último vértice sean distintas. |

Una línea con `ClosedXYZ` a `true` también tiene `Closed` a `true`. Al revés no: una línea cuyo primer y último vértice solo difieren en Z tiene `Closed` a `true` y `ClosedXYZ` a `false`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea con menos de 2 vértices. |
