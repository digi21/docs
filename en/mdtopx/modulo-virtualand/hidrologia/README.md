# Hydrology
<!-- id: hidrologia -->
<!-- origen: 3908442cf1cc6c06dd13e00c0c4378a45e6116b5 -->

[VirtuaLand Hydrology](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-hidrologia.md)

The tools of the **Hydrology** group of the [VirtuaLand tab](../../fichas-de-herramientas/ficha-de-herramientas-virtualand/) study how water runs and where it stays on a grid digital terrain model (DEM):

* [**Basins**](cuencas.md): the watershed of each outlet, with its parameters, the time of concentration and the peak discharge of the rational method of the Spanish surface drainage standard 5.2-IC.
* [**Hydrology grids**](rejillas-hidrologicas.md): the accumulation, the slope, the TWI and SPI indices, the LS factor and the height and distance to the stream of each node, each one in a new DEM.
* [**Flood zones**](zonas-inundables.md): what is flooded with a water height in the streams, fixed or computed from a discharge.
* [**Ponding**](encharcamiento.md): where the water of a rainfall stays in the depressions of the terrain.

The four of them work on the elevations of the DEM nodes, which does not need to be smoothed, and cannot be used with a variable DEM. The no-data nodes and the edge of the DEM act as outlets: the water that reaches them leaves the model.

## How water runs

Except in ponding, water runs over the DEM with its depressions filled up to their spill elevation (Priority-Flood algorithm), so that every node drains to the edge. Each node drains into the one of its eight neighbours towards which the terrain falls most steeply (D8). The **accumulation** of a node is the area, in square metres, that drains through it.

The **streams** are the nodes whose accumulation reaches a minimum area. If it is left at 0, MDTopX uses 0.2 % of the area with data of the DEM.

The results go to new documents: a drawing, with its attribute table, and, depending on the tool, one or more DEMs.
