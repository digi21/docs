# ArcGIS version
<!-- id: version-de-arcgis -->
<!-- origen: 20d04a277da01688a1947a171415b215166cc358 -->

Appears after choosing files when importing ArcGIS workspace definition XML through either:

* **Database/Tables/Import schema from ArcGIS workspace definition file...**, creating its tables. See [Database](base-de-datos/README.md).
* **Codes/Import codes from ArcGIS workspace definition file...**, adding its codes. See [Codes](codigos/README.md).

ArcGIS workspace definition files use different node namespaces for different versions. The editor needs the version to find feature classes.

## Controls

* **Version**: text following `<esri:Workspace xmlns:esri='http://www.esri.com/schemas/ArcGIS/`. Enter it as shown on the XML file's first line in any text editor. Default: `10.4`; the last accepted value is remembered.
* **OK**: saves the version and continues. **Codes/Import codes from ArcGIS workspace definition file...** next opens [Select style](../pestanas/selecciona-el-estilo.md) titled **Select the style to assign to the points**.
* **Cancel**: cancels import.

A mismatched version finds no feature classes and imports nothing from the file.
