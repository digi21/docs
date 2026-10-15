# Digi21.DigiNG.Topology
<!-- id: digi21.diging.topology -->

Este paquete [NuGet](https://www.nuget.org/packages/Digi21.DigiNG.Topology/) proporciona herramientas y utilidades para el análisis topológico de geometrías.

### Package manager
```bash
Install-Package Digi21.DigiNG.Topology -Version 26.0.0
```

### .NET Cli
```
dotnet add package Digi21.DigiNG.Topology --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.DigiNG.Topology" Version="26.0.0" />
```

El paquete contiene un ensamblado de referencia y depende de `Digi21.DigiNG`. El código lo instala Digi3D.AI en `<carpeta de instalación>\Digi21.DigiNG.Topology\26.0.0\`.

Todos los tipos están en el espacio de nombres `Digi21.DigiNG.Topology`. Los métodos de `DuplicityDetector`, `IntersectionDetector`, `NodeDetector` y `TopologyAnalyzer` son métodos de extensión de secuencias de entidades: para usarlos, añade `using Digi21.DigiNG.Topology;`.

Los algoritmos trabajan en el plano XY: dos coordenadas son iguales si lo son su X y su Y con la tolerancia de [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). La Z no interviene.

## Tipos

| Tipo | Descripción |
| :--- | :--- |
| [ClosedLoop](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloop.md) | Anillo cerrado que forman varias líneas: su polígono, su centroide y las líneas que lo forman. |
| [ClosedLoopWithHoles](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloopwithholes.md) | Polígono de una topología, con sus huecos. Es el resultado de `TopologyAnalyzer.AnalyzeTopology`. |
| [ComparadorPoint2DRango](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/comparadorpoint2drango.md) | Estructura auxiliar de `NodeDetector.FindAll`. No está en el paquete NuGet. |
| [DuplicityDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/duplicitydetector.md) | Detecta entidades duplicadas: mismo tipo y mismos vértices en XY. |
| [IntersectionDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/intersectiondetector.md) | Detecta las intersecciones entre líneas. |
| [NodeDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/nodedetector.md) | Agrupa los extremos de las líneas por coordenada (nodos). |
| [TopologyAnalyzer](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md) | Forma los polígonos que encierran las líneas y les asigna centroides. |
