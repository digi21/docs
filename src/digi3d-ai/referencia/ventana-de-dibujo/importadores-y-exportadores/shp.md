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
| 2 | Codificación (número de la página de códigos del archivo `.dbf`; 255 = UTF-8) | Sí |

Un parámetro que se omite toma el valor 0, no el valor guardado.


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Decimales de precisión | Número entero. Por defecto, 0. | Al guardar cada geometría en el archivo, al exportar o al editar, redondea sus coordenadas a este número de decimales. Con 0 no se redondean. |
| Codificación | Página de códigos de la lista, con su nombre en inglés: las de MS-DOS, _Windows_ y Macintosh de cada idioma, las asiáticas y UTF-8. Por defecto, UTF-8. | Codificación de los textos del archivo `.dbf` que se crea, que también se escribe en un archivo `.cpg`. Al leer, solo se usa si el `.dbf` no indica su codificación y no hay archivo `.cpg`. |
| Cargar región de interés (BETA) | Sí o No. Por defecto, No. | Con **Sí**, al abrir el archivo se carga solo la región de interés. La región se selecciona con el botón derecho sobre el archivo en el panel de archivos de dibujo. |

Las tres propiedades aparecen tanto al crear el archivo como al abrir uno existente. Digi3D.AI guarda sus valores en la configuración del usuario.

### Al abrir el archivo

Cada archivo `.shp` es una capa. Al abrir o importar un archivo, Digi3D.AI carga todas las capas de su carpeta que tienen archivo `.shx`. Si está activada la opción [Preguntar por capas a cargar](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/preguntar-por-capas-a-cargar.md) del cuadro de diálogo Configuración, antes muestra el cuadro de diálogo [Selección de tablas](../../cuadros-de-dialogo/seleccion-de-tablas.md) para elegir las capas que se cargan.

### Sistema de referencia de coordenadas

Si la carpeta todavía no tiene capas (por ejemplo, al crear un archivo nuevo), Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo**. Si tiene capas, usa el sistema de la primera capa. Consulta [Ubicación del sistema de referencia de coordenadas](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de archivos Shapefile](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/README.md).

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
