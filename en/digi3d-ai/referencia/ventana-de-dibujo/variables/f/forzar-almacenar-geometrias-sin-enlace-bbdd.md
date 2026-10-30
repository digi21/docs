# FORCE\_STORE\_GEOMETRIES\_WITHOUT\_BBDD\_LINK
<!-- id: forzar-almacenar-geometrias-sin-enlace-bbdd -->
<!-- origen: f364725a1fa706635eaac712d7ca8311acf22a17 -->

If enabled, new and modified geometries are stored without a database link: the database table, identifier, and attributes are removed from their codes.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Whether to store geometries without a database link |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |

## Command characteristics

| Command type | [Boolean variable](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Database/Force new or modified geometries to have no database link |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {19743A2E-8973-4A4C-B627-969DDC012079} |
