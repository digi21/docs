# SEPARATE\_MULTICOD
<!-- id: separa-multicod -->
<!-- origen: 39e548f050e85d2ceb26669a872238c98868b1fa -->

Split each entity with multiple codes into several entities with a single code each.

## Parameters

Does not accept parameters.

## Notes

Generates duplicate geometries.

The command scans the active drawing file. Each visible, undeleted entity within the area of interest that has more than one code is deleted and replaced with a copy for each of its codes. When finished, the command displays the number of entities deleted and created.

If Digi3D.AI rejects any of the new copies, the command does not apply the change and preserves all original entities.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/More/Separate codes generating duplicated geometries |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [UNGROUP\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desagrupar-entidades.md) |
| Internal name | {E1056769-9785-414E-BF51-6837CE331FA9} |
