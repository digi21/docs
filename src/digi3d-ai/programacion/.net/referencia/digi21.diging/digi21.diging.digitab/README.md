# Digi21.DigiNG.DigiTab
<!-- id: digi21.diging.digitab -->

Tipos para leer, modificar y guardar tablas de códigos.

## Clases

| Clase | Descripción |
| :--- | :--- |
| [DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) | Tabla de códigos en memoria. |
| [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) | Código de una tabla de códigos. |
| [TopologyCentroid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycentroid.md) | Texto o prefijo que identifica un centroide de una topología, con su configuración. |
| [TopologyCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycode.md) | Código que interviene en una topología, con su configuración. |
| [TopologyDefinition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) | Definición de una topología guardada en una tabla de códigos. |
| [TopologyZRule](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md) | Regla que decide las coordenadas Z de los nodos y de los vértices de un segmento de una topología. |

## Enumeraciones

| Enumeración | Descripción |
| :--- | :--- |
| [GeometryType](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/geometrytype.md) | Tipo de geometría de un código: punto, línea o virtual. |
| [ClosingNodeZ](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/closingnodez.md) | Operación de una topología cuando el primer y el último vértice de un contorno tienen coordenadas Z distintas. |
| [NodeZRule](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/nodezrule.md) | Coordenada Z que recibe un nodo cuando los dos segmentos tienen coordenadas Z distintas. |
| [PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/polygonzsource.md) | Origen de la coordenada Z de los polígonos que forma una topología. |
| [TopologyCodeRelationship](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/topologycoderelationship.md) | Efecto de la presencia de un código en un anillo sobre la decisión de que el anillo forme un polígono. |
| [VertexZAction](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/vertexzaction.md) | Operación que se aplica a la coordenada Z de los vértices intermedios de un segmento. |
| [VertexZCondition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/vertexzcondition.md) | Condición con la que se aplica una VertexZAction. |

Las definiciones de topología (`TopologyDefinition` y los tipos que la componen) requieren el paquete `Digi21.DigiNG` 26.2.0 y Digi3D.AI 2027.0.0.428 o posterior.
