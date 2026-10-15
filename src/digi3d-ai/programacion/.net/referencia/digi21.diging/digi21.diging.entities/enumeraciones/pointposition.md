# PointPosition
<!-- id: pointposition -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Posición de una coordenada respecto a una entidad cerrada, en el plano XY. La devuelve [ICloseable.AnalyzePointPosition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/metodos/analyzepointposition.md).

```csharp
public enum PointPosition
```

## Valores

| Valor | Número | Significado |
| :--- | ---: | :--- |
| `Exterior` | 0 | La coordenada está fuera del recinto. En un polígono, también si está dentro de uno de sus huecos. |
| `Interior` | 1 | La coordenada está dentro del recinto y, en un polígono, fuera de todos sus huecos. |
| `Tangent` | 2 | La coordenada está sobre el borde del recinto o, en un polígono, sobre el borde de un hueco. |

## Ejemplo

El [ejemplo de ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/#ejemplo) consulta la posición de tres coordenadas respecto a un polígono con un hueco: una en el interior, otra dentro del hueco y otra sobre el borde.
