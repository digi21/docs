# SQL
<!-- id: sql -->
<!-- origen: b261d8edc2277799ceddea3a29ee061fefcbad36 -->

Run the SQL queries in the file passed as a parameter.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | File containing the SQL queries to run | No |

## Notes

The command displays the Windows _Data Link Properties_ dialog box to select the database connection. If you cancel it, the command finishes. If the database connection fails, the command displays the error and finishes.

The file contains one query per line, with up to 1023 characters per line. Lines starting with `#` are comments. If a line contains `$(TableName)`, the command runs it once for each database table, replacing `$(TableName)` with the table name.

If a query fails, the command plays an error sound, writes the error to the results window, and continues with the next line.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesBaseDatos.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {330E81D4-172A-4A8B-BE6E-FE8D9B79A9BF} |
