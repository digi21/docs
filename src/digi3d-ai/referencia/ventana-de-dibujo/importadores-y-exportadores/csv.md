# Valores separados por comas
<!-- id: csv -->

Importador de **Valores separados por comas**.

## Parámetros

Puedes pasar los siguientes parámetros al importador/exportador desde la línea de comandos con la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.csv <Separador> 0 0 0 <NombreColumnaX> <NombreColumnaY> <NombreColumnaZ>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Carácter separador de campos | No |
| 2, 3 y 4 | No se usan, pero tienen que estar presentes | No |
| 5 | Nombre de la columna X | No |
| 6 | Nombre de la columna Y | No |
| 7 | Nombre de la columna Z | No |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de los cuadros de diálogo que importan o exportan archivos de este formato. Este formato no se puede abrir directamente en una ventana de dibujo, así que no aparecen en el cuadro de diálogo Nuevo proyecto. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Separador de campos | Tabulador, Coma (,), Comillas dobles (""), Comillas simples ('') u Operador O (\|). Por defecto, tabulador. | Carácter que separa los campos de cada línea. |
| Columna X, Columna Y, Columna Z | Texto: nombre de la columna en la primera línea del archivo. Por defecto, vacío. | Columnas de las que se leen las coordenadas, sin distinguir mayúsculas de minúsculas. Si no existe la columna, la coordenada vale 0. |

Cada línea se importa como un punto, con todas sus columnas como datos. Digi3D.AI guarda los valores de las propiedades en la configuración del usuario.

### Sistema de referencia de coordenadas

El sistema de referencia se lee de un archivo `.prj` con el mismo nombre que el archivo que se importa. Si el archivo `.prj` no existe, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo**. Al importar no se crea el `.prj`: el sistema elegido solo se usa durante la sesión.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.csv`, `.txt` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | No |
| Se puede abrir una ventana de dibujo con este formato | No |
