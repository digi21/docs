# Database
<!-- id: menu-base-de-datos-editor-tablas -->
<!-- origen: 0bdc5092785abfa002376a0dea061cb8d400f7c6 -->

These options affect tables under [Database](../../pestanas/base-de-datos/README.md) and code **Table** properties.

## Tables

| Option | Action |
| :--- | :--- |
| **Automatically create tables based on the code and assign tables in the codes** | Creates and assigns a table for each code without one. |
| **Import a database schema in Geographics format...** | Opens [Connection string](cadena-de-conexion.md) and replaces all code table tables with those from that database. |
| **Import a database schema in CATDBS format...** | Opens Connection string and replaces all tables with those from the CATDBS database. |
| **Import a directory schema with shapefiles...** | Creates one table per shapefile in a folder. |
| **Import schema from MGCP characteristics catalog file...** | Creates an MGCP feature catalog's tables. |
| **Import schema from ArcGIS workspace definition file...** | Creates tables from ArcGIS workspace XML. After file selection, requests the schema version in [ArcGIS version](../version-de-arcgis.md). |

## Fields

| Option | Action |
| :--- | :--- |
| **Assign a default value to all fields with a particular name...** | Opens [Add default value to all fields with a particular name](asignar-valor-defecto-campos.md). |
| **Add a field to all tables...** | Opens [Add field to tables](anadir-campo-a-tablas.md). |
| **Make a given field "Not comparable" in all the tables in which it appears...** | Opens [Make a field non-comparable](campo-no-comparable.md). |

## Codes

| Option | Action |
| :--- | :--- |
| **Locate all codes which connect to a particular table...** | Opens [Locate codes connected to table](localizar-codigos-enlazan-tabla.md). |
| **Automatically add a condition to the table of each code of the type [field]=[code name]** | Opens [Enter the field name](condicion-campo-igual-codigo.md). |

## Export

| Option | Action |
| :--- | :--- |
| **Export to SQL script...** | Writes a table creation SQL script. |
| **Create tables in an empty Access database** | Creates tables in an empty Access database. |

Before **Fields** operations, the editor applies pending changes to the selected **Database** table.
