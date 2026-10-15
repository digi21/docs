# Digi21.DigiNG.Entities.Relations
<!-- id: digi21.diging.entities.relations -->

Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Clases estáticas que analizan la relación geométrica entre dos entidades: punto con punto, punto con línea, punto con área, línea con línea, línea con área y área con área.

## Clases

| Clase | Descripción |
| :--- | :--- |
| [AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/) | Relación entre dos áreas. Para cada par de áreas se cumple exactamente una relación. |
| [LineArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/) | Relación entre una línea y un área. |
| [LineLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/) | Relación entre dos líneas. |
| [PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/) | Relación entre un punto y un área. Para cada punto y área se cumple exactamente una relación. |
| [PointLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/) | Relación entre un punto y una línea. |
| [PointPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/) | Relación entre dos puntos. |

## Reglas comunes

* Un área es un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) o una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada. Un punto dentro de un hueco de un polígono está fuera del polígono.
* Los métodos reciben los tipos de solo lectura. [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) y [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) derivan de esos tipos, así que los métodos también aceptan entidades que todavía no están en ningún archivo de dibujo. Un `Point` creado en memoria tiene la caja envolvente sin calcular hasta que se asigna `Point.Coordinate`; los métodos `Offset` no la recalculan.
* Las comparaciones se hacen en planta: solo cuentan las coordenadas X e Y. La Z no interviene.
* Dos vértices coinciden si sus X y sus Y difieren menos que [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). Si `Precision.Epsilon` vale 0, las coordenadas tienen que ser iguales.
* Antes de analizar los vértices, cada método compara las cajas envolventes en planta (coordenadas mínimas y máximas en X e Y) de las dos entidades. Esta comparación no usa tolerancia. Si las cajas no se tocan, las entidades no tienen ningún punto en común.
* Los métodos analizan vértices: comprueban si un vértice coincide con un vértice de la otra entidad o si está dentro, fuera o sobre el borde de un área. No calculan intersecciones entre lados. Dos entidades que se cruzan sin un vértice en el cruce no se consideran en contacto.
* Todos los métodos lanzan `ArgumentNullException` si un argumento es `null`.
