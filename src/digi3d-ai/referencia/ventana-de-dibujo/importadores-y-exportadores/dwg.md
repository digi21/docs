# Archivos AutoCAD DWG
<!-- id: dwg -->

Importador y exportador de **Archivos AutoCAD DWG**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.dwg <Version> <RutaArchivoPlantilla> <ImportarBloques> <RutaImportacionBloques> <ImportarBloquesComoPuntualDigi> <ImportarPaleta> <UtilizarColoresArchivoDibujo>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Versión de AutoCAD | Sí |
| 2 | Ruta del archivo plantilla | Sí |
| 3 | Importar bloques (0/1) | Sí |
| 4 | Ruta de importación de bloques | Sí |
| 5 | Importar bloques como puntual de Digi (0/1) | Sí |
| 6 | Importar la paleta (0/1) | Sí |
| 7 | Utilizar los colores del archivo de dibujo (0/1) | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Archivo de plantilla | Archivo `.dwg`. Opcional. | Archivo que se usa como base al crear un archivo nuevo. Sin plantilla, el archivo nuevo se crea con las capas y los bloques de la tabla de códigos. |
| Versión | AutoCAD 11/12, 13, 14, 2000, 2004, 2007, 2010 o 2013. Por defecto, AutoCAD 2000. | Versión con la que se escribe el archivo. |
| Importar bloques como | Punto o elemento complejo puntual. Por defecto, Punto. | Con **Punto**, cada referencia de bloque se lee como un punto con su posición, su giro y su escala. Con **Elemento complejo puntual**, la versión actual no importa las referencias de bloque. |
| Importar bloques | Sí o No. Por defecto, No. | Al abrir un archivo existente, crea un archivo `.bin` por cada bloque en la carpeta de **Ruta de importación**. |
| Ruta de importación | Carpeta. | Carpeta donde se crean los archivos `.bin` de los bloques. |
| Importar paleta | Sí o No. Por defecto, No. | Al abrir un archivo existente, importa su paleta de colores. |
| Utilizar colores archivo dibujo | Sí o No. Por defecto, No. | Con **Sí**, las entidades con color propio en el archivo conservan ese color. Con **No**, toman el color de su capa. |

Los archivos `.dxf` muestran las mismas propiedades y una más:

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Tipo de archivo | Ascii o Binario. Por defecto, Ascii. | Formato con el que se escribe el archivo `.dxf`. |

En la versión actual, las demás propiedades de un archivo `.dxf` toman el valor de las de `.dwg`, y los cambios que se hagan en ellas no se guardan.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.dwg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
