# DYNAMIC\_PARALLEL\_WITH\_AXIS\_ACTIVE\_Z
<!-- id: paralela-dinamica-con-eje-z-activa -->
<!-- origen: 05d0e90be5796c3a33352c4371985b3c1903847a -->

Draw a dynamic parallel with active codes and, between the original line and the parallel, an axis with codes specified as parameters. All parallel and axis vertices take the digitized point's Z.

![DYNAMIC_PARALLEL_WITH_AXIS_ACTIVE_Z: in plan view, the parallel is at cursor distance d and the axis at d/2; in elevation, all parallel and axis vertices take the digitized point Z](../../../../../images/orden-paralela-dinamica-con-eje-z-activa.svg)

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 and subsequent | Axis codes. | Yes |

## Notes

Select the line and click to fix the parallel's position; until you click, its position follows the cursor. Also draw an axis halfway between the original line and the parallel, with codes supplied as parameters. The parallel uses the active code.
All parallel and axis vertices take the digitized point's Z.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/More/Dynamic parallel with axis with active Z |
| Toolbar | Parallels |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [DYNAMIC\_PARALLEL\_WITH\_AXIS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje.md)<br>[DYNAMIC\_PARALLEL\_WITH\_AXIS\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje-z.md)<br>[DYNAMIC\_PARALLEL\_FIXED\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-z-fija.md) |
| Internal name | {CBC7D1C8-E3D2-4B9B-B1F5-798C79372A6E} |
