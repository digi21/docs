# Archivos Shapefile de ESRI
<!-- id: shp -->

Importador y exportador de **Archivos Shapefile de ESRI**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.shp <Precision> <Codificacion>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Precisión | Sí |
| 2 | Codificación | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Decimales de precisión | Número entero. Por defecto, 0. | Al exportar, redondea las coordenadas a este número de decimales. Con 0 no se redondean. |
| Codificación | Página de códigos: las de MS-DOS y _Windows_ de cada idioma, y UTF-8. Por defecto, UTF-8. | Codificación de los textos del archivo `.dbf` que se crea, que también se escribe en un archivo `.cpg`. Al leer, solo se usa si el `.dbf` no indica su codificación y no hay archivo `.cpg`. |
| Cargar región de interés (BETA) | Sí o No. Por defecto, No. | Con **Sí**, al abrir el archivo se carga solo la región de interés. La región se selecciona con el botón derecho sobre el archivo en el panel de archivos de dibujo. |

## Archivos dañados

Si el índice `.shx` de una geometría apunta fuera del archivo `.shp`, si el `.shp` está truncado o si el registro de una geometría en el `.dbf` está dañado, esa geometría no se carga y se añade un error a la lista de errores de la carga, con el nombre de la capa y el número de la geometría. Se cargan las demás geometrías de la capa.

La copia de seguridad incluye también las capas que no tienen archivo `.dbf`.

Si la capa está abierta en solo lectura, almacenar, eliminar o recuperar una geometría muestra el mensaje «La capa _capa_ está abierta en solo lectura: no se pueden almacenar, eliminar ni recuperar geometrías en ella.» y el archivo no se modifica.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.shp` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
