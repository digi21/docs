# PolygonZSource
<!-- id: digi21.diging.digitab.polygonzsource -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Origen de la coordenada Z de los polígonos que forma una topología. Es el valor de [TopologyDefinition.PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) y de [TopologyCentroid.PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycentroid.md). Corresponde a la opción **Coordenadas Z del polígono** del cuadro de diálogo [Añadir topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/anadir-topologia.md#coordenadas-z-del-polígono) del editor de tablas de códigos.

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public enum PolygonZSource
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Centroid` | 0 | Los vértices del contorno reciben la coordenada Z del centroide. |
| `FromGeometries` | 1 | 2.5D: las reglas de coordenada Z de cada código ([TopologyZRule](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md)) deciden la Z del contorno. |
| `FromGeometries3D` | 2 | 3D: las coordenadas Z de las geometrías se conservan sin cambios. |
| `ProjectOnDtm` | 3 | La coordenada Z se obtiene al proyectar el contorno sobre un modelo digital del terreno (MDT). |
| `HighestVertex` | 4 | La coordenada Z del vértice más alto de cada anillo. |

Los números son los mismos en el paquete NuGet y en el ensamblado instalado, a diferencia de [GeometryType](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/geometrytype.md).

## Cómo se obtiene la Z con `ProjectOnDtm`

Los tipos de [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/) no leen ningún MDT. Para cada vértice que se proyecta, `TopologyAnalyzer.CreatePolygon` y `CreatePolygons` llaman al delegado que cada método recibe en el parámetro `projectZ`. Para obtener la coordenada Z de un vértice a partir de un archivo `.mdt`, usa [DigitalTerrainModelCollection.Project](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodelcollection.md). El ejemplo [TopologiasDesdeTabla](/digi3d-ai/programacion/.net/ejemplos/topologias-desde-tabla.md) muestra cómo obtener la Z de archivos `.mdt` al crear los polígonos de una topología.
