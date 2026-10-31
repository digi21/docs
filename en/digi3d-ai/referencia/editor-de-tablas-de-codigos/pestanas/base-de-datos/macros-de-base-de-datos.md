# Database macros
<!-- id: macros-de-base-de-datos -->
<!-- origen: 329c9ce0c1ebc58f0ca50b12957430b205908613 -->

Database macros tell Digi3D.AI which values to calculate when creating a database record.

Enter them in a database field's [Default value](propiedades-de-los-campos.md#default-value).

When storing the record, Digi3D.AI replaces each assigned macro with its calculated value.

Supported macros:

| Macro | Description |
| --- | --- |
| %UID% | Stores a globally unique identifier (GUID) calculated when the record is created, including braces. For example: `{F9E7E680-3CDD-4733-A8F1-22F850F8774B}` |
| %UID\_SIMPLE% | Stores a GUID calculated at that moment, complete with braces, for example: `F9E7E680-3CDD-4733-A8F1-22F850F8774B` |
| %CENTROID\_TEXT% | For a polygon generated from topology, stores its centroid text. |
| %CENTROID\_VALUE=\[valor]% | For a polygon generated from topology, stores the value named after the equals sign from the centroid code's [Values](../codigos/propiedades-del-codigo.md#values). |
| %ENTITY\_CODE% | Stores the geometry's primary code. |
| %ENTITY\_CODE\_ID% | Stores the database record ID of the geometry's primary code. |
| %ENTITY\_TEXT% | For text geometry, stores its text. |
| %ENTITY\_LENGTH\_2D% | Stores the geometry's perimeter in the X, Y plane. |
| %ENTITY\_LENGTH\_3D% | Stores the geometry's three-dimensional perimeter. |
| %ENTITY\_AREA% | Stores the geometry's area. |
| %ENTITY\_FIRST\_VERTEX\_Z% | Stores the first vertex's Z coordinate. |
| %ENTITY\_FIRST\_VERTEX\_Z\_INT% | Stores the first vertex's Z coordinate rounded to the nearest integer. |
| %ENTITY\_XMIN% | Stores the geometry's minimum X coordinate. |
| %ENTITY\_XMIN\_TRUNC\_INT% | Stores the geometry's minimum X coordinate truncated to an integer. |
| %ENTITY\_XMIN\_ROUND\_INT% | Stores the geometry's minimum X coordinate rounded to the nearest integer. |
| %ENTITY\_XMIN\_FLOOR\_INT% | Stores the greatest integer not exceeding the geometry's minimum X coordinate. |
| %ENTITY\_XMIN\_CEIL\_INT% | Stores the smallest integer not less than the geometry's minimum X coordinate. |
| %ENTITY\_YMIN% | Stores the geometry's minimum Y coordinate. |
| %ENTITY\_YMIN\_TRUNC\_INT% | Stores the geometry's minimum Y coordinate truncated to an integer. |
| %ENTITY\_YMIN\_ROUND\_INT% | Stores the geometry's minimum Y coordinate rounded to the nearest integer. |
| %ENTITY\_YMIN\_FLOOR\_INT% | Stores the greatest integer not exceeding the geometry's minimum Y coordinate. |
| %ENTITY\_YMIN\_CEIL\_INT% | Stores the smallest integer not less than the geometry's minimum Y coordinate. |
| %ENTITY\_ZMIN% | Stores the geometry's minimum Z coordinate. |
| %ENTITY\_ZMIN\_TRUNC\_INT% | Stores the geometry's minimum Z coordinate truncated to an integer. |
| %ENTITY\_ZMIN\_ROUND\_INT% | Stores the geometry's minimum Z coordinate rounded to the nearest integer. |
| %ENTITY\_ZMIN\_FLOOR\_INT% | Stores the greatest integer not exceeding the geometry's minimum Z coordinate. |
| %ENTITY\_ZMIN\_CEIL\_INT% | Stores the smallest integer not less than the geometry's minimum Z coordinate. |
| %ENTITY\_XMAX% | Stores the geometry's minimum X coordinate. |
| %ENTITY\_XMAX\_TRUNC\_INT% | Stores the geometry's maximum X coordinate truncated to an integer. |
| %ENTITY\_XMAX\_ROUND\_INT% | Stores the geometry's maximum X coordinate rounded to the nearest integer. |
| %ENTITY\_XMAX\_FLOOR\_INT% | Stores the greatest integer not exceeding the geometry's maximum X coordinate. |
| %ENTITY\_XMAX\_CEIL\_INT% | Stores the smallest integer not less than the geometry's maximum X coordinate. |
| %ENTITY\_YMAX% | Stores the geometry's minimum Y coordinate. |
| %ENTITY\_YMAX\_TRUNC\_INT% | Stores the geometry's maximum Y coordinate truncated to an integer. |
| %ENTITY\_YMAX\_ROUND\_INT% | Stores the geometry's maximum Y coordinate rounded to the nearest integer. |
| %ENTITY\_YMAX\_FLOOR\_INT% | Stores the greatest integer not exceeding the geometry's maximum Y coordinate. |
| %ENTITY\_YMAX\_CEIL\_INT% | Stores the smallest integer not less than the geometry's maximum Y coordinate. |
| %ENTITY\_ZMAX% | Stores the geometry's minimum Z coordinate. |
| %ENTITY\_ZMAX\_TRUNC\_INT% | Stores the geometry's maximum Z coordinate truncated to an integer. |
| %ENTITY\_ZMAX\_ROUND\_INT% | Stores the geometry's maximum Z coordinate rounded to the nearest integer. |
| %ENTITY\_ZMAX\_FLOOR\_INT% | Stores the greatest integer not exceeding the geometry's maximum Z coordinate. |
| %ENTITY\_ZMAX\_CEIL\_INT% | Stores the smallest integer not less than the geometry's maximum Z coordinate. |
| %ENTITY\_WIDTH% | Stores geometry width (maximum X minus minimum X). |
| %ENTITY\_HEIGHT% | Stores geometry height (maximum Y minus minimum Y). |
| %ENTITY\_LENGTH% | Stores geometry length (maximum Z minus minimum Z). |
| %ENTITY\_ROTATION\_TRIGONOMETRIC\_SEXAGESIMAL% | Stores the geometry's trigonometric rotation in sexagesimal degrees. |
| %ENTITY\_ROTATION\_TRIGONOMETRIC\_CENTESIMAL% | Stores the geometry's trigonometric rotation in centesimal degrees. |
| %ENTITY\_ROTATION\_TRIGONOMETRIC\_RADIAN% | Stores the geometry's trigonometric rotation in radians. |
| %ENTITY\_ROTATION\_AZIMUTAL\_SEXAGESIMAL% | Stores the geometry's azimuthal rotation in sexagesimal degrees. |
| %ENTITY\_ROTATION\_AZIMUTAL\_CENTESIMAL% | Stores the geometry's azimuthal rotation in centesimal degrees. |
| %ENTITY\_ROTATION\_AZIMUTAL\_RADIAN% | Stores the geometry's azimuthal rotation in radians. |
| %MACRO% | Expands variables to the right of %MACRO%: `$(NombreUsuario)`, `$(NombreOrdenador)`, `$(Fecha)`, `$(Dia)`, `$(Mes)`, `$(Año)`, `$(Escritorio)`, `$(Temp)` and other system folders, using English or Spanish names.<br>Example:<br>`%MACRO%Digitalizado por $(NombreUsuario)` |
| %DATE% | Current date. |
| %DAY% | Current day of the month. |
| %MONTH% | Current month of the year. |
| %YEAR% | Current year. |
| %TIME% | Current time, including hours, minutes and seconds. |
| %HOUR% | Current hour. |
| %MINUTE% | Current minute. |
| %SECOND% | Current second. |
| %CODE\_VALUE=\[valor]% | Retrieves "valor" from the [value dictionary](../codigos/propiedades-del-codigo.md#values) associated with the geometry's code.<br>Example: if the geometry has code `020102`, whose Values field contains `tipo_de_suelo=superficial`, use `%CODE_VALUE=tipo_de_suelo%` as the database field default to store `superficial`. |
| %ENTITY\_ATTRIBUTE=\[nombre]% | Retrieves a value from the geometry attribute dictionary.<br>Example: for attribute Carriles=3, use %ENTITY_ATTRIBUTE=Carriles% as the database field default to store 3. |
