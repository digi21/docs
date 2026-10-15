# ReadOnlyText
<!-- id: readonlytext -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Texto de solo lectura: una cadena, una coordenada de inserción, una altura, una rotación y una justificación.

```csharp
public class ReadOnlyText : Entity, ISnapable
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyText`

Tipos derivados: [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)

Implementa: [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/) y, por herencia, [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable` e `IDisposable`.

La clase no tiene constructores públicos. Los archivos de dibujo devuelven los textos que leen con este tipo, y `IDrawingFile.Add(Text)` devuelve el texto añadido con este tipo. Para obtener un texto modificable, usa [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md) o crea un [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

El resto de miembros (códigos, colores, atributos, coordenadas mínimas y máximas, `Dispose`…) se heredan de [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Propiedades

| Miembro | Descripción |
| :--- | :--- |
| [`string Txt { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/txt.md) | Cadena del texto. |
| [`Point3D Coordinate { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/coordinate.md) | Coordenada de inserción. |
| [`double TextHeight { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/textheight.md) | Altura del texto. |
| [`double Rotation { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/rotation.md) | Rotación, en centésimas de grado sexagesimal. |
| [`TextJustification Justification { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/justification.md) | Posición del punto de inserción respecto al texto. |

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`Text Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md) | Devuelve una copia modificable del texto, sin archivo de dibujo. |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Devuelve `Coordinate - coordinate`: el vector desde `coordinate` hasta el punto de inserción. No tiene en cuenta la extensión de la cadena. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Devuelve en `nearestVertex` el punto de inserción y en `vertex` el valor 0. Devuelve la distancia en el plano XY entre `coordinate` y el punto de inserción. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Mismo resultado que `NearestVertex`: `calculatedCoordinate` es el punto de inserción, `segment` vale 0 y el valor devuelto es la distancia en el plano XY. |
| `string ToString()` | Devuelve el tipo de entidad, las coordenadas mínimas y máximas, los códigos, la coordenada, la rotación, la altura y la justificación, en el idioma de la interfaz de Digi3D.AI. |

## Ejemplo

El [ejemplo de Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/#ejemplo) lee `Txt` y `Justification` del `ReadOnlyText` que devuelve `BinDouble.Add`.
