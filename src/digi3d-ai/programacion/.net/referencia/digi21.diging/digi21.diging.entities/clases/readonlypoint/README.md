# ReadOnlyPoint
<!-- id: readonlypoint -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Punto de solo lectura: una coordenada de inserción y una rotación.

```csharp
public class ReadOnlyPoint : Entity, ISnapable
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyPoint`

Tipos derivados: [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/)

Implementa: [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/) y, por herencia, [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable` e `IDisposable`.

La clase no tiene constructores públicos. Los archivos de dibujo devuelven los puntos que leen con este tipo, y `IDrawingFile.Add(Point)` devuelve el punto añadido con este tipo. Para obtener un punto modificable, usa [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/metodos/clone.md) o crea un [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/).

El resto de miembros (códigos, colores, atributos, coordenadas mínimas y máximas, `Dispose`…) se heredan de [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Propiedades

| Miembro | Descripción |
| :--- | :--- |
| [`Point3D Coordinate { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/propiedades/coordinate.md) | Coordenada de inserción. |
| [`double Rotation { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/propiedades/rotation.md) | Rotación del símbolo, en radianes. |

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`Point Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/metodos/clone.md) | Devuelve una copia modificable del punto, sin archivo de dibujo. |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Devuelve `Coordinate - coordinate`: el vector desde `coordinate` hasta el punto, con la diferencia en Z. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Devuelve en `nearestVertex` la coordenada del punto y en `vertex` el valor 0. Devuelve la distancia en el plano XY entre `coordinate` y el punto. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Mismo resultado que `NearestVertex`: `calculatedCoordinate` es la coordenada del punto, `segment` vale 0 y el valor devuelto es la distancia en el plano XY. |
| `string ToString()` | Devuelve el tipo de entidad, las coordenadas mínimas y máximas, los códigos, la coordenada y la rotación, en el idioma de la interfaz de Digi3D.AI. |

## Ejemplo

El [ejemplo de Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/#ejemplo) lee las propiedades del `ReadOnlyPoint` que devuelve `BinDouble.Add` y modifica una copia obtenida con `Clone`. El [ejemplo de ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/#ejemplo) usa `NearestVertex`, `NearestSegment` y `Distance` con un punto.
