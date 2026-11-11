# Digi21.DigiNG.Topology
<!-- id: digi21.diging.topology -->

Este paquete [NuGet](https://www.nuget.org/packages/Digi21.DigiNG.Topology/) proporciona herramientas y utilidades para el análisis topológico de geometrías.

### Package manager
```bash
Install-Package Digi21.DigiNG.Topology -Version 26.1.0
```

### .NET Cli
```
dotnet add package Digi21.DigiNG.Topology --version 26.1.0
```

### Package reference
```markup
<PackageReference Include="Digi21.DigiNG.Topology" Version="26.1.0" />
```

El paquete contiene un ensamblado de referencia y depende de `Digi21.DigiNG` 26.2.0, que contiene las definiciones de topología de la tabla de códigos ([TopologyDefinition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md)). El código lo instala Digi3D.AI en `<carpeta de instalación>\Digi21.DigiNG.Topology\26.0.0\`.

Todos los tipos están en el espacio de nombres `Digi21.DigiNG.Topology`. Los métodos de `DuplicityDetector`, `IntersectionDetector`, `NodeDetector` y `TopologyAnalyzer` son métodos de extensión de secuencias de entidades: para usarlos, añade `using Digi21.DigiNG.Topology;`.

Los algoritmos trabajan en el plano XY: dos coordenadas son iguales si lo son su X y su Y con la tolerancia de [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). La Z no interviene, salvo en `AnalyzeTopology` con una [definición de topología](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) cuya propiedad `Requires3DContinuity` vale `true`: esa topología solo forma los polígonos que tienen continuidad 3D.

## Tipos

| Tipo | Descripción |
| :--- | :--- |
| [ClosedLoop](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloop.md) | Anillo cerrado que forman varias líneas: su polígono, su centroide y las líneas que lo forman. |
| [ClosedLoopWithHoles](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloopwithholes.md) | Polígono de una topología, con sus huecos. Es el resultado de `TopologyAnalyzer.AnalyzeTopology`. |
| [DuplicityDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/duplicitydetector.md) | Detecta entidades duplicadas: mismo tipo y mismos vértices en XY. |
| [IntersectionDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/intersectiondetector.md) | Detecta las intersecciones entre líneas. |
| [NodeDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/nodedetector.md) | Agrupa los extremos de las líneas por coordenada (nodos). |
| [TopologyAnalysisHandlers](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalysishandlers.md) | Delegados que recibe `TopologyAnalyzer.AnalyzeTopology` con una definición de topología: avances, errores y evaluación de las condiciones de exclusión. |
| [TopologyAnalyzer](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md) | Forma los polígonos que encierran las líneas y les asigna centroides, y crea los polígonos de una topología de la tabla de códigos. |

## Topologías de la tabla de códigos

Desde la versión 26.1.0 del paquete, `TopologyAnalyzer` puede formar una topología a partir de su definición en la tabla de códigos, como la orden [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)`=#nombre`, y crear los polígonos de esas topologías, como la orden [TOPOLOGIA\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md), sin ejecutar Digi3D.AI. Estas funciones requieren Digi3D.AI 2027.0.0.428 o posterior. El procedimiento [Crear las topologías de la tabla de códigos desde un programa externo](/digi3d-ai/programacion/.net/crear-topologias-desde-un-programa-externo.md) las usa de principio a fin.
