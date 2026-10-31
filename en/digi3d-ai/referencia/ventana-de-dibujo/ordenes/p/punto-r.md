# R\_POINT
<!-- id: punto-r -->
<!-- origen: 933342b5a3379e19b0fa7c74d6d8a49da82756e2 -->

Insert a point symbol into the drawing with the rotation you specify.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Point code or codes. If omitted, the point is stored with the active code | Yes |

## Notes

The command prompts you to digitize the insertion point, then a second point. The symbol's rotation is the direction from the insertion point to the second point. As you move the cursor, the symbol is displayed with the resulting rotation.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Point with two points |
| Toolbar | Points |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto.md)<br>[POINT\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-2p.md) |
| Internal name | {D768CDA8-0BFA-465f-BC53-92F8C3D52786} |
