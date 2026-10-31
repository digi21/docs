# SEE\_ONLY\_WITHOUT\_BBDD\_LINK
<!-- id: ver-solo-sin-enlace-bbdd -->
<!-- origen: 80c16fe2a4ede2bbd6d6f31e5113be707bf1c806 -->

Show only entities with at least one code without a database link.

## Parameters

Does not accept parameters.

## Notes

A code has a database link if it has a table assigned. The command leaves entities with at least one code without an assigned table visible, even if they have other codes with tables, and hides the rest. To show only entities with no linked codes, use [SEE\_ONLY\_ENTITIES\_WITHOUT\_BBDD\_LINK](ver-solo-entidades-sin-enlace-bbdd.md).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/Only entities without any database link |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SEE\_ONLY\_WITH\_BBDD\_LINK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-con-enlace-bbdd.md)<br>[SEE\_ONLY\_ENTITIES\_WITH\_BBDD\_LINK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-entidades-con-enlace-bbdd.md)<br>[SEE\_ONLY\_ENTITIES\_WITHOUT\_BBDD\_LINK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-entidades-sin-enlace-bbdd.md)<br>[SEE\_ALL\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md) |
| Internal name | {A2756190-025F-4AB9-B859-604165E6C4F3} |
