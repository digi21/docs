# Archivo de dibujo
<!-- id: archivo-de-dibujo -->

![Pestaña Archivo de dibujo del cuadro de diálogo Nuevo proyecto](../../../../images/nuevo-proyecto-archivo-de-dibujo.png)

Esta pestaña del cuadro de diálogo [Nuevo proyecto](README.md) abre un archivo de dibujo en una ventana de dibujo y fija los parámetros con los que se trabaja en ella.

## Abrir la pestaña

Selecciona la opción del menú **Archivo/Nuevo/Abrir modelo fotogramétrico o archivo de dibujo...** y pulsa la pestaña **Archivo de dibujo**.

## Campos

* **Archivo de dibujo**: ruta del archivo que se abre. El desplegable ofrece los diez últimos archivos abiertos desde esta pestaña, y el botón **...** permite buscar uno.
* **Mostrar esta página al ejecutar Digi3D**: el cuadro de diálogo Nuevo proyecto se abre en esta pestaña en lugar de en [Sensores fotogramétricos](sensores-fotogrametricos.md).

Debajo del campo **Archivo de dibujo** hay una rejilla de propiedades agrupadas en categorías.

### Sistema de referencia de coordenadas

Esta categoría solo aparece si está activada la opción de mostrar el sistema de referencia al abrir un archivo de dibujo.

* **Sistema de referencia de coordenadas de la ventana de dibujo**: el sistema en el que trabaja la ventana. **El del archivo de dibujo** utiliza el que tenga el archivo. Si la categoría no aparece, la ventana trabaja en un sistema de referencia compuesto local.

### Registro

* **Escala**: escala de visualización de los patrones de las líneas. El desplegable ofrece escalas habituales, de 1:100 a 1:250.000, y se puede escribir cualquier otra.
* **Operación**: **Guardar** almacena los valores de incremento de registro, equidistancia y tolerancia a generalizar, junto con la altura de los textos, para la escala indicada. **Cargar** recupera los valores almacenados para esa escala.
* **Incremento de registro**: cada cuántos metros se registra un punto al digitalizar en modo continuo.
* **Equidistancia**: cada cuántos metros se registra una curva de nivel.
* **Altura de textos**: altura de los textos que se registran, la de la variable [AT](../../ventana-de-dibujo/variables/a/at.md).
* **Tolerancia a generalizar**: longitud mínima de un segmento al digitalizar en modo continuo.
* **Corrección de Z**: diferencia de Z entre operadores. Ajusta esta diferencia si quien hizo la orientación absoluta no es quien restituye el modelo.
* **Sigma**: valor por debajo del cual dos valores se consideran idénticos.

### Entorno

* **Tabla de códigos**: archivo con los códigos, su representación y su traducción, en formato `.dt` o `.tab.xml`. El desplegable ofrece las últimas tablas utilizadas.
* **Orden de inicio**: orden que se ejecuta cada vez que se abre un archivo de dibujo, también desde la línea de comandos. Se ejecuta después de las órdenes de inicio de la tabla de códigos y antes de la orden indicada en la línea de comandos. Para ejecutar un archivo de macroinstrucciones, escribe `@` seguido de su ruta.

### Motor de importación/exportación

Esta categoría muestra los parámetros del importador o exportador del formato del archivo de dibujo. Los parámetros cambian según la extensión del archivo seleccionado: por ejemplo, para el archivo `.bind` de la captura, la categoría muestra el modelo de datos, la cadena de conexión con la base de datos, la conexión en modo de solo lectura y la omisión de los archivos de referencia.

La tabla siguiente enumera los formatos que puedes abrir en una ventana de dibujo y enlaza a las páginas que explican sus parámetros, en la sección **Parámetros del motor de importación/exportación** de cada página:

| Formato | Extensión | Parámetros |
| :--- | :--- | :--- |
| Archivos Digi | `.bin`, `.bik` | [Archivos Digi](../../ventana-de-dibujo/importadores-y-exportadores/bin.md) |
| Archivos Digi de doble precisión | `.bind` | [Archivos Digi de doble precisión](../../ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md) |
| MicroStation DGN v8 | `.dgn` | [DGN](../../ventana-de-dibujo/importadores-y-exportadores/dgn.md) |
| AutoCAD DWG | `.dwg` | [DWG](../../ventana-de-dibujo/importadores-y-exportadores/dwg.md) |
| Shapefile de ESRI | `.shp` | [Shapefile](../../ventana-de-dibujo/importadores-y-exportadores/shp.md) |
| Datawarehouse de Geomedia | `.mdb` | [Geomedia](../../ventana-de-dibujo/importadores-y-exportadores/geomedia.md) |
| KML de Google Earth | `.kml` | [KML](../../ventana-de-dibujo/importadores-y-exportadores/kml.md) |
| Conexión con PostGIS | `.pg` | [PostGIS](../../ventana-de-dibujo/importadores-y-exportadores/postgis.md) |
| Esri FileGDB | `.gdb` | [FileGDB](../../ventana-de-dibujo/importadores-y-exportadores/filegdb.md). La categoría aparece vacía; al aceptar se muestra el cuadro de diálogo de selección de dataset. |
| GeoPackage | `.gpkg` | [GeoPackage](../../ventana-de-dibujo/importadores-y-exportadores/geopackage.md). La categoría aparece vacía. |
| WKT | `.wkt` | [WKT](../../ventana-de-dibujo/importadores-y-exportadores/wkt.md). La categoría aparece vacía. |
| ArcGIS DEM | `.asc` | [ArcGIS DEM](../../ventana-de-dibujo/importadores-y-exportadores/arcgis-dem.md). No tiene parámetros. |
| Imágenes ráster | Las de los formatos de imagen | [Imágenes ráster](../../ventana-de-dibujo/importadores-y-exportadores/raster.md) |
| WMS | `.wmsconnection` | [WMS](../../ventana-de-dibujo/importadores-y-exportadores/wms.md) |

Si el formato necesita un sistema de referencia de coordenadas y el archivo no lo tiene (por ejemplo, al crear un archivo nuevo), al pulsar **Aceptar** Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo**. La página de cada formato explica dónde se guarda el sistema elegido.

## Observaciones

Al pulsar **Aceptar**, Digi3D.AI guarda los valores de la rejilla. La próxima vez que abras la pestaña Archivo de dibujo, los valores guardados serán los valores iniciales. La primera vez que abras la pestaña, los valores son: escala 1:1000, incremento de registro 1 metro, equidistancia 1 metro, altura de textos 1,5 unidades de longitud del dibujo, tolerancia a generalizar 0,04 unidades de las coordenadas del archivo de dibujo, corrección de Z 0 y sigma 0,001.

Si está activada la opción de utilizar proyectos de archivos de dibujo, la rejilla muestra la categoría **Configuración de archivo de dibujo**, con la configuración que se aplica al archivo. Las configuraciones se crean en [Configurar proyectos](../configurar-proyectos.md). Si la configuración elegida no configura los parámetros del motor de importación/exportación, la rejilla muestra también la categoría **Motor de importación/exportación**. Al pulsar **Aceptar**, los valores de registro, la tabla de códigos, la orden de inicio y el sistema de referencia de coordenadas se sustituyen por los de la configuración elegida. Si no hay ninguna configuración elegida, Digi3D.AI muestra el error «No ha seleccionado ninguna configuración de archivo de dibujo.», no abre el archivo y el cuadro de diálogo sigue abierto.

## Errores al abrir el archivo

* Si ya hay una ventana de dibujo abierta, Digi3D.AI muestra el error «No se pueden abrir dos archivos de dibujo simultáneamente.» y no abre el archivo.
* Si la ruta del archivo no es válida, Digi3D.AI muestra el cuadro **Error al crear el archivo de dibujo** con el texto «No se ha podido crear el archivo de dibujo.».
