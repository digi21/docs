# NEXT\_VERTICAL\_SEGMENT\_DOWNWARDS
<!-- id: siguiente-segmento-vertical-hacia-abajo -->
<!-- origen: 53fd6eb8b06eac957a11773657d4c976c42264f4 -->

Configure the active command so that the next segment inserted is vertical and consists of two points.

![NEXT_VERTICAL_SEGMENT_DOWNWARDS in elevation: digitizing 1 first adds a vertex with the X and Y of the last vertex and the Z of 1, then adds 1](../../../../../images/orden-siguiente-segmento-vertical-hacia-abajo.svg)

## Parameters

Does not accept parameters.

## Notes

Run the command while digitizing a line with at least one vertex. Digitizing the next point adds two vertices:

1. One with the X and Y coordinates of the last vertex and the Z of the digitized point. The segment leading to it is vertical.
2. The digitized point.

Compare this with [NEXT\_VERTICAL\_SEGMENT\_UPWARDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/siguiente-segmento-vertical-hacia-arriba.md), which places the vertical segment last.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [NEXT\_VERTICAL\_SEGMENT\_UPWARDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/siguiente-segmento-vertical-hacia-arriba.md) |
| Internal name | {DA45C592-DA83-42A8-9B8E-578385974698} |
