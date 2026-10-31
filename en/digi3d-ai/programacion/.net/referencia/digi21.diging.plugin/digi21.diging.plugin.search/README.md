# Digi21.DigiNG.Plugin.Search
<!-- id: digi21.diging.plugin.search -->
<!-- origen: 7298f94c8bda47d14ff5d1b20f55dc32c06c6c82 -->

Namespace: `Digi21.DigiNG.Plugin.Search`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Types for writing search providers for Digi3D.AI's search panel. A search provider selects entities from the active drawing file and sends them to a results panel or the active command.

## Attributes

| Attribute | Description |
| :--- | :--- |
| [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md) | Marks a class as a search provider and specifies its title in the search provider list. |
| [LocalizableSearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/localizablesearcherattribute.md) | Like `SearcherAttribute`, with the title read from the extension's resources. |

## Interfaces

| Interface | Description |
| :--- | :--- |
| [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md) | Search provider's parameter form and search method. |
