# Closed
<!-- id: closed -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la entidad está cerrada en el plano XY. Es una propiedad de [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/).

```csharp
bool Closed { get; }
```

## Valor de la propiedad

| Tipo | Valor |
| :--- | :--- |
| `ReadOnlyLine`, `Line` | `true` si la X y la Y del primer vértice son iguales a las del último, con la tolerancia de comparación de números reales de Digi3D.AI. La Z no se compara. |
| `ReadOnlyPolygon`, `Polygon` | Siempre `true`. |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea con menos de 2 vértices. |
