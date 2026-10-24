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

### Textos orientados

Un texto orientado es un texto que no está en el plano XY. La variable [TEXTO\_ORIENTADO\_CON\_CAMARA](../variables/t/texto-orientado-con-camara.md) describe las órdenes que crean textos orientados.

GeoMedia guarda cada texto en una geometría de tipo `TextPointGeometry`, con una normal (vector perpendicular al plano del texto) y una rotación en grados dentro de ese plano. La rotación se mide desde el eje X del plano. Digi3D.AI calcula ese eje a partir de la normal con el algoritmo de eje arbitrario de AutoCAD, el mismo que usa AutoCAD para calcular el sistema de coordenadas del objeto (OCS) de una entidad.

Al escribir un texto:

- En una clase de entidad de tipo texto (`gdbGraphicsText`) o de cualquier tipo de geometría (`gdbAnySpatial`), Digi3D.AI escribe una `TextPointGeometry`. En un texto orientado, la normal es el eje Z del texto (perpendicular al plano del texto y hacia el lector) y la rotación es el ángulo de la línea base medido desde el eje X del plano. En un texto del plano XY, la normal es (0, 0, 1) y la rotación es el giro.
- En una clase de entidad de tipo punto (`gdbPoint`), Digi3D.AI escribe un punto orientado (`OrientedPointGeometry`) con la dirección del giro en el plano XY. El texto pierde la orientación.

Al leer una `TextPointGeometry`:

- Si la normal no tiene la dirección (0, 0, 1), Digi3D.AI calcula la línea base con la rotación medida desde el eje X del plano y lee un texto orientado.
- Si la normal tiene la dirección (0, 0, 1), es nula o tiene componentes no finitas, Digi3D.AI lee un texto del plano XY con la rotación como giro.

Esta forma de medir la rotación no se ha comprobado con archivos creados por GeoMedia. Digi3D.AI vuelve a leer con la misma orientación los textos orientados que escribe, pero no se ha comprobado cómo muestra GeoMedia esos textos ni que Digi3D.AI lea con la rotación correcta los textos con normal distinta de (0, 0, 1) de un archivo creado por GeoMedia.

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de archivos Datawarehouse de Geomedia](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-datawarehouse-de-geomedia/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.mdb` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
