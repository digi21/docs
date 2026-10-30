# UNGROUP\_ENTITIES
<!-- id: desagrupar-entidades -->
<!-- origen: 41cc3f05123db78e3ad6a34b9caab48bb34a06d5 -->

Ungroup entities with more than one code into multiple entities with a single code each.

## Parameters

Does not accept parameters.

## Notes

The command processes only visible entities within the area of interest. For each entity with more than one code, it creates a copy with each of its codes and deletes the original entity.

If Digi3D.AI rejects any of the new copies, the command does not apply the change and preserves all original entities.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Ungroup entities |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SEPARATE\_MULTICOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/separa-multicod.md) |
| Internal name | {427C8FCD-7BB0-4BC2-84CF-7FF35670F365} |
