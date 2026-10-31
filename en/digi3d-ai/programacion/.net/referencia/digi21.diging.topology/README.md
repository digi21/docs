# Digi21.DigiNG.Topology
<!-- id: digi21.diging.topology -->
<!-- origen: 7d113cc8ff3a0a8caea98038ee9397361f6acd21 -->

This [NuGet](https://www.nuget.org/packages/Digi21.DigiNG.Topology/) package provides tools and utilities for topological analysis of geometries.

### Package manager
```bash
Install-Package Digi21.DigiNG.Topology -Version 26.0.0
```

### .NET CLI
```
dotnet add package Digi21.DigiNG.Topology --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.DigiNG.Topology" Version="26.0.0" />
```

The package contains a reference assembly and depends on `Digi21.DigiNG`. Digi3D.AI installs the code in `<carpeta de instalación>\Digi21.DigiNG.Topology\26.0.0\`.

All types are in the `Digi21.DigiNG.Topology` namespace. Methods of `DuplicityDetector`, `IntersectionDetector`, `NodeDetector` and `TopologyAnalyzer` are extension methods for entity sequences: add `using Digi21.DigiNG.Topology;` to use them.

Algorithms work in the XY plane: two coordinates are equal if their X and Y are equal within the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance. Z is ignored.

## Types

| Type | Description |
| :--- | :--- |
| [ClosedLoop](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloop.md) | Closed ring formed by several lines: its polygon, centroid and constituent lines. |
| [ClosedLoopWithHoles](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloopwithholes.md) | Topology polygon with its holes. The result of `TopologyAnalyzer.AnalyzeTopology`. |
| [DuplicityDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/duplicitydetector.md) | Detects duplicate entities: same type and same XY vertices. |
| [IntersectionDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/intersectiondetector.md) | Detects intersections between lines. |
| [NodeDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/nodedetector.md) | Groups line endpoints by coordinate (nodes). |
| [TopologyAnalyzer](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md) | Forms polygons enclosed by lines and assigns centroids to them. |
