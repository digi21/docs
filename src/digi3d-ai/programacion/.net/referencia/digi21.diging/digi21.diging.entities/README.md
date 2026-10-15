# Digi21.DigiNG.Entities
<!-- id: digi21.diging.entities -->

Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tipos de las entidades de un archivo de dibujo (líneas, puntos, textos, polígonos y complejos), de sus códigos y de las operaciones geométricas sobre ellas.

Cada tipo de entidad tiene dos clases:

- La clase de solo lectura (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon`, `ReadOnlyComplex`) es la que devuelven los archivos de dibujo al recorrer sus entidades.
- La clase de lectura y escritura (`Line`, `Point`, `Text`, `Polygon`, `Complex`) hereda de la anterior, tiene constructores públicos y añade los miembros que modifican la entidad.

Una entidad no se puede modificar cuando pertenece a un archivo de dibujo (su propiedad `Owner` no es `null`). Para modificar una entidad leída de un archivo, modifica la copia que devuelve `Clone()`.

## Clases

| Clase | Descripción |
| :--- | :--- |
| [CodeCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/codecollection/) | Colección de los códigos de una entidad, que devuelve `Entity.Codes`. |
| [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/) | Complejo de lectura y escritura: una entidad formada por otras entidades. |
| [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) | Clase base abstracta de todas las entidades. |
| [GeometryFactory](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/) | Métodos de extensión que crean entidades nuevas a partir de otras. |
| [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) | Línea de lectura y escritura. |
| [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) | Punto de lectura y escritura. |
| [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) | Polígono de lectura y escritura: un contorno exterior y sus huecos. |
| [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/) | Complejo de solo lectura. |
| [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) | Línea de solo lectura. |
| [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) | Punto de solo lectura. |
| [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) | Polígono de solo lectura. |
| [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/) | Texto de solo lectura. |
| [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) | Texto de lectura y escritura. |

## Estructuras

| Estructura | Descripción |
| :--- | :--- |
| [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/) | Código de una entidad: nombre y, opcionalmente, enlace a un registro de base de datos. |
| [SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/) | Referencia a un segmento de una línea. |
| [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) | Referencia a un vértice de una línea. |

## Interfaces

| Interfaz | Descripción |
| :--- | :--- |
| [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/) | Entidades que se pueden dividir por una línea límite. |
| [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/) | Entidades que pueden delimitar un recinto. |
| [IDirectionable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/) | Entidades cuyo sentido se puede invertir. |
| [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/) | Entidades en las que se busca el vértice o el segmento más cercano a una coordenada. |
| [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/) | Entidades a las que se resta el recinto de una línea límite. |

## Enumeraciones

| Enumeración | Descripción |
| :--- | :--- |
| [PointPosition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/pointposition.md) | Posición de una coordenada con respecto a un recinto. |
| [TextJustification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/textjustification.md) | Punto de inserción de un texto. |
