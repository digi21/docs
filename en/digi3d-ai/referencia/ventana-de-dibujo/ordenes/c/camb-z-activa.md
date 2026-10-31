# CHNG\_ACTIVE\_Z
<!-- id: camb-z-activa -->
<!-- origen: 451c9a1b0c193d1c3e170aad44fcddd0fa573ca4 -->

Change the Z of one or more elements to the currently active Z.

## Parameters

Does not accept parameters.

## Notes

Place the cursor at the desired Z, run _CHNG\_ACTIVE\_Z_, and select entities to change. Assign the cursor's Z coordinate at selection time to every vertex of each entity.

After selecting an entity, the command remains active and requests another. With multiple selection, it modifies all selected entities and ends.

If quality control rejects a modified entity, its original is retained unchanged. With multiple entities, each is handled independently: retain the original of each rejected entity and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CHNG\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z.md)<br>[ZFIXED](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zfija.md) |
| Internal name | {747437AC-AEA0-4135-B8DA-DDD1D2C9B21D} |
