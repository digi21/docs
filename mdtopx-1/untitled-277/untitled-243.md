---
description: Exportar modelos digitales del terreno desde línea de comando
---

# Exportar modelos digitales del terreno

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /EXPORT [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, el cual se procederá a exportar.

El archivo de salida será el nombre con el que se salve el fichero en el nuevo formato.

Además de esta secuencia y para configurar el modo de exportación, en el archivo MDTop.INI debería haber una línea obligatoria con el texto \[ExportarMDT\] y a continuación los campos siguientes:

* **Limite**: 0 \(no exportar límite del MDT\) o 1 \(exportar límite del MDT\). Sólo utilizado para exportar en formato BIN, DXF o DGN.
* **Ruptura**: 0 \(no exportar líneas de ruptura\) o 1 \(exportar líneas de rupturas\). Sólo utilizado para exportar en formato BIN, DXF o DGN.
* **Triangulos**: 0 \(no exportar triángulos\) o 1 \(exportar triángulos\). Sólo utilizado para exportar en formato BIN, DXF o DGN.
* **Vertices**: 0 \(no exportar vértices de triángulos\) o 1 \(exportar vértices de triángulos\). Sólo utilizado para exportar en formato BIN, DXF o DGN.
* **Incremento**: Incremento de la rejilla en metros para aquellos formatos donde el incremento entre las filas y las columnas debe ser el mismo, como GTOPO30, archivos del SGE, archivos de ArcView y archivos de LH SOCET SET.
* **Unidad**: Unidad en el que se registrará la cota de la rejilla en el caso de archivos GTOPO30. Puede tomar los valores 0 \(metros\), 1 \(decímetros\) o 2 \(centímetros\).
* **Tipo**: Tipo de archivo al cual se va a importar. Puede tomar los siguientes valores:
  * **0**: Archivos DIGI.
  * **1**: Archivos DGN.
  * **2**: Archivos DXF
  * **3**: Archivos DXF versión 2000 o posterior.
  * **4**: Archivos ASCII.
  * **7**: Archivos del MTN 25.
  * **8**: Archivos GTOPO30 del USGS.
  * **9**: Archivos de VirtuaLand.
  * **10**: Archivos del Servicio Geográfico del Ejército.
  * **11**: Archivos GRD de ArcInfo.
  * **12**: Archivos de ArcView.
  * **13**: Archivos de LH SOCET SET.
* **IncrX**: Separación de las columnas en metros, en caso de que el archivo de salida sea una rejilla y ésta pueda tener valores diferentes para la separación de filas y columnas.
* **IncrY**: Separación de las filas en metros, en caso de que el archivo de salida sea una rejilla y ésta pueda tener valores diferentes para la separación de filas y columnas.
* **RupturaDEM**: 0 o 1, en función de que se desee o no incluir las líneas de ruptura en la rejilla si ésta es para VirtuaLand.

```text
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

{% hint style="info" %}
Es indiferente que los nombres de los campos están en mayúsculas o en minúsculas.
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

