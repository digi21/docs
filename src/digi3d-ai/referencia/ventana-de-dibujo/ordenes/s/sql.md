# SQL

Ejecuta las consultas SQL especificadas en el archivo pasado por parámetros.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Archivo con las consultas SQL a ejecutar | No |

## Observaciones

Al ejecutarse, la orden muestra el cuadro de diálogo de Windows _Propiedades de vínculo de datos_ para seleccionar la conexión a la base de datos. Si se cancela, la orden termina. Si no se puede conectar con la base de datos, la orden muestra el error y termina.

El archivo contiene una consulta por línea, de hasta 1023 caracteres. Las líneas que empiezan por `#` son comentarios. Si una línea contiene `$(TableName)`, la orden la ejecuta una vez por cada tabla de la base de datos, sustituyendo `$(TableName)` por el nombre de la tabla.

Si una consulta falla, la orden emite un sonido de error, escribe el error en la ventana de resultados y continúa con la línea siguiente.

## Características de la orden

| Tipo de orden | [Orden inmediata](sql.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesBaseDatos.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {330E81D4-172A-4A8B-BE6E-FE8D9B79A9BF} |
