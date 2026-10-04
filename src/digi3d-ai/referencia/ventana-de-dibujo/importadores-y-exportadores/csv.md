# Valores separados por comas
<!-- id: csv -->

Importador de **Valores separados por comas**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.csv <Separador> <NombreColumnaX> <NombreColumnaY> <NombreColumnaZ>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Carácter separador de campos | Sí |
| 2 | Nombre de la columna X | Sí |
| 3 | Nombre de la columna Y | Sí |
| 4 | Nombre de la columna Z | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de los cuadros de diálogo que importan o exportan archivos de este formato. Este formato no se puede abrir directamente en una ventana de dibujo, así que no aparecen en el cuadro de diálogo Nuevo proyecto. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Separador de campos | Tabulador, coma, comillas dobles, comillas simples o barra vertical. Por defecto, tabulador. | Carácter que separa los campos de cada línea. |
| Columna X, Columna Y, Columna Z | Texto: nombre de la columna en la primera línea del archivo. | Columnas de las que se leen las coordenadas, sin distinguir mayúsculas de minúsculas. Si no existe la columna, la coordenada vale 0. |

Cada línea se importa como un punto, con todas sus columnas como datos.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.csv`, `.txt` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | No |
| Se puede abrir una ventana de dibujo con este formato | No |
