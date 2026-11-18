# Exportar modelos digitales del terreno
<!-- id: linea-de-comando-exportar-modelos-digitales-del-terreno -->

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /EXPORT [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, el cual se procederá a exportar.

El archivo de salida será el nombre con el que se salve el fichero en el nuevo formato.

Además de esta secuencia y para configurar el modo de exportación, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[ExportarMDT]** y a continuación los campos siguientes:

* **Limite**: 0 (no exportar límite del MDT) o 1 (exportar límite del MDT). Sólo utilizado para exportar en formato BIN, DXF o DGN. Valor predeterminado: 1.
* **Ruptura**: 0 (no exportar líneas de ruptura) o 1 (exportar líneas de rupturas). Sólo utilizado para exportar en formato BIN, DXF o DGN. Valor predeterminado: 1.
* **Triangulos**: 0 (no exportar triángulos) o 1 (exportar triángulos). Sólo utilizado para exportar en formato BIN, DXF o DGN. Valor predeterminado: 0.
* **Vertices**: 0 (no exportar vértices de triángulos) o 1 (exportar vértices de triángulos). Sólo utilizado para exportar en formato BIN, DXF o DGN. Valor predeterminado: 1.
* **Objetos**: 0 (no exportar los objetos del modelo digital) o 1 (exportar también los objetos del modelo digital). Valor predeterminado: 0.
* **Base**: 0 o 1. El valor 1 exporta también la base del modelo como un conjunto de triángulos. Sólo utilizado para exportar en formato STL. Valor predeterminado: 0.
* **PuntosFuera**: 0 (no incluir los puntos de la rejilla situados fuera del modelo digital) o 1 (incluirlos). Sólo utilizado para exportar en formato ASCII. Valor predeterminado: 1.
* **Incremento**: Incremento de la rejilla en metros para aquellos formatos donde el incremento entre las filas y las columnas debe ser el mismo: GTOPO30, archivos del SGE, archivos ESRI ASCII Grid (ArcView) y archivos de LH SOCET SET. Valor predeterminado: 1.
* **Unidad**: Unidad en el que se registrará la cota de la rejilla en el caso de archivos GTOPO30. Puede tomar los valores 0 (metros), 1 (decímetros) o 2 (centímetros). Valor predeterminado: 0.
* **IncrX**: Separación de las columnas en metros, en caso de que el archivo de salida sea una rejilla y ésta pueda tener valores diferentes para la separación de filas y columnas: archivos ASCII, DEM, TIF y GRD de ArcInfo. Valor predeterminado: 1.
* **IncrY**: Separación de las filas en metros, en caso de que el archivo de salida sea una rejilla y ésta pueda tener valores diferentes para la separación de filas y columnas: archivos ASCII, DEM, TIF y GRD de ArcInfo. Valor predeterminado: 1.
* **RupturaDEM**: 0 o 1, en función de que se desee o no incluir las líneas de ruptura en la rejilla si el formato es DEM (VirtuaLand) o TIF. Valor predeterminado: 1.
* **Tipo**: Tipo de archivo al cual se va a exportar. Puede tomar los siguientes valores. Valor predeterminado: 0.
  * **0**: Archivos DIGI.
  * **2**: Archivos DXF.
  * **3**: Archivos DXF versión 2000 o posterior.
  * **4**: Archivos ASCII.
  * **6**: Archivos MDT.
  * **7**: Archivos DGN.
  * **8**: Archivos del MTN 25.
  * **9**: Archivos GTOPO30 del USGS.
  * **10**: Archivos DEM de VirtuaLand.
  * **11**: Archivos del Servicio Geográfico del Ejército.
  * **12**: Archivos GRD de ArcInfo.
  * **13**: Archivos ESRI ASCII Grid (ArcGIS).
  * **14**: Archivos de LH SOCET SET.
  * **16**: Archivos Shape.
  * **21**: Archivos TIF.
  * **26**: Archivos IFC 4.1.
  * **49**: Archivos STL binarios.
  * **50**: Archivos STL ASCII.
  * **54**: Archivos LAS.

MDTopX exporta los formatos MTN 25, Servicio Geográfico del Ejército, GRD de ArcInfo, ESRI ASCII Grid, LH SOCET SET y Shape mediante un módulo adicional. Si el módulo del formato no está instalado, la exportación devuelve un error.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

```ini
[ExportarMDT]
Limite=0
Ruptura=0
Triangulos=0
Vertices=1
RupturaDEM=1
Incremento=1.000000
Unidad=0
Tipo=0
IncrX=1.000000
IncrY=1.000000
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
