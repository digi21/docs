# RECOVER\_COD
<!-- id: recupera-cod -->
<!-- origen: 51f2fdd9848d8306a8c9047be6c1b2eb71d04c13 -->

Recover all deleted entities with a code matching the one entered.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Code and [geometry type](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) of entities to recover. Specify multiple "code type" pairs to recover entities with different codes at once | Yes |

## Notes

Run the command by entering RECOVER\_COD=&lt;code&gt; &lt;entity type&gt;. An entity type is required in each pair. In this command, `P` includes points, point-based complex entities, oriented points, and multipoints; `B` indicates images; and `*` includes all geometry types, as in [ON\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md).

If the code starts with `#`, the command uses all codes in the code table assigned that tag.

Without parameters, the command displays a dialog box to select codes and recovers entities of any type with those codes.

The command only processes visible entities within the area of interest. If a deleted entity has the specified code and other codes, the command does not recover the original entity: it creates a copy with only the specified code.

Deleted entities are permanently removed when you run [COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md). Their records disappear from the file, so deleted entities cannot be recovered once the file has been compressed.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/More/Recover entities based on code |
| Toolbar | Delete and recover |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DELETE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md)<br>[COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md)<br>[RECOVER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera.md) |
| Internal name | {958CBD76-54DF-40b1-BEB0-A5ADAEE61A40} |
