# DYNAMIC\_PARALLEL\_WITH\_AXIS\_Z
<!-- id: paralela-dinamica-con-eje-z -->
<!-- origen: 2a770828994ed370fb4d308320defa62c689e4ce -->

Draw a dynamic parallel with active codes and, between the original line and the parallel, an axis with codes specified as parameters. Calculate the Z difference between the line selection point and the digitized point.

![DYNAMIC_PARALLEL_WITH_AXIS_Z: in plan view, the parallel is at cursor distance d and the axis at d/2; in elevation, both have the original Z plus the difference between selection and digitized points](../../../../../images/orden-paralela-dinamica-con-eje-z.svg)

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 and subsequent | Axis codes. | Yes |

## Notes

Select the line and click to fix the parallel's position; until you click, its position follows the cursor. Also draw an axis halfway between the original line and the parallel, with codes supplied as parameters. The parallel uses the active code.
Add the Z difference between the line selection point and the digitized point to the parallel and axis Z values.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/More/Dynamic parallel with axis in XYZ |
| Toolbar | Parallels |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [DYNAMIC\_PARALLEL\_WITH\_AXIS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje.md)<br>[DYNAMIC\_PARALLEL\_WITH\_AXIS\_ACTIVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje-z-activa.md)<br>[DYNAMIC\_PARALLEL\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-xyz.md) |
| Internal name | {123956F1-100D-429D-A709-D340047C9932} |
