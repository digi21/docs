# Archivos Datawarehouse de Geomedia
<!-- id: geomedia -->

Importador y exportador de **Archivos Datawarehouse de Geomedia**.

## Parámetros

Esta extensión no recibe parámetros por la línea de comandos.

## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Sistema de referencia de coordenadas horizontal | Sistema de referencia. El botón **...** abre el cuadro de diálogo de selección. | Sistema que se asigna al archivo si no tiene uno. Si el archivo tiene capas, se usa el de la primera capa; si está en UTM o en geográficas ETRS89 o WGS84, se usa el código EPSG que les corresponde. Por defecto, un sistema local desconocido. |

La propiedad aparece tanto al crear el archivo como al abrir uno existente. Digi3D.AI guarda su valor en la configuración del usuario.

### Al abrir el archivo

Si está activada la opción [Preguntar por capas a cargar](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-datawarehouse-de-geomedia/preguntar-por-capas-a-cargar.md) del cuadro de diálogo Configuración (activada por defecto), Digi3D.AI muestra el cuadro de diálogo [Selección de tablas](../../cuadros-de-dialogo/seleccion-de-tablas.md). Si se cancela, Digi3D.AI muestra el error «No se puede cargar el archivo si no se selecciona al menos una capa.» y no abre el archivo.

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de archivos Datawarehouse de Geomedia](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-datawarehouse-de-geomedia/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.mdb` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
