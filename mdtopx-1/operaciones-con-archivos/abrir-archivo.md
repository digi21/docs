# Abrir archivo

[Botón de MDTopX](../introduccion/boton-de-mdtopx.md)

Para abrir un archivo existente, el usuario debe pulsar sobre el [botón de MDTopX  ](../introduccion/boton-de-mdtopx.md)y elegir el comando Abrir. A continuación, el programa mostrará el cuadro de diálogo de Exploración de Windows para elegir la ubicación y tipo de archivo que se desea abrir.

MDTopX contempla los siguientes tipos de documentos:

* Archivo de proyecto
* Modelo digital del terreno
* Archivo de dibujo vectorial
* Archivo de puntos LiDAR
* Archivo de imagen ráster
* Archivo con geometría de viales

En función del tipo de archivo a abrir se creará un tipo de documento u otro.

Los tipos de archivos contemplados en función del documento que se abrirá son:

* \*\*\*\*[**Archivo de proyecto**](proyectos-de-mdtopx.md):
  * MDTX: Archivos propios de proyecto de MDTopX
* **Modelo digital del terreno**:
  * MDT: Archivos propios de MDTop que contienen un modelo digital del terreno de tipo TIN.
  * T3D: Archivos propios de MDTop que contienen un modelo digital del terreno de tipo TIN en 3D.
  * DEM: Modelo digital del terreno de formato rejilla procedente del módulo VirtuaLand de MDTop.
* **Archivo de dibujo vectorial**:
  * BIN: Archivos de dibujo de DIGI.
  * DXF: Archivos de dibujo de intercambio de AutoCad. MDTop admite archivos DXF de versiones AutoCad 2000 o inferior. Los archivos DXF pueden contener símbolos, almacenados como bloques. Para leer estos bloques, el programa muestra un cuadro de diálogo dando tres opciones para ello:
    * Explotar los bloques: Convierte cada uno de los bloques leídos en líneas de dibujo.
    * Leerlos como puntos: Transforma los bloques leídos a entidades puntuales.
    * No leerlos: Ignora la inserción de bloques.
  * DGN: Archivos de dibujo de MicroStation. MDTop admite archivos DGN de versiones MicroStation 7 o inferior. Al igual que ocurre con los archivos DXF, este tipo de archivos puede contener células, por lo que el programa mostrará un cuadro de diálogo \(explicado en el tipo de archivos anterior\) solicitando al usuario la manera de actuar con estos elementos.
  * PTS: Archivos de puntos de TopCal.
  * ASC: Archivos de formato ASCII con un listado de coordenadas X, Y, Z. La configuración de este tipo de archivos puede ser muy variable e incluir más campos adicionales. Por ello, al identificar el programa un archivo de este tipo, muestra un cuadro de diálogo con varias opciones que el usuario puede configurar:
    * Si cada registro tiene un primer campo como identificador.
    * Si se desea tratar toda la lista de puntos como si se tratase de una entidad lineal
    * Si cada registro tiene un valor de intensidad LiDAR.
    * Si cada registro tiene un valor RGB de color por cada punto
  * [SHP](leer-archivos-shape.md): Archivos de formato Shape de Arc-GIS.
  * KML: Archivos KML de OpenGIS.
* **Archivo de puntos LiDAR**:
  * LAS: Archivos de puntos procedentes de tecnología LIDAR.
  * LAZ: Archivos de puntos procedentes de tecnología LiDAR, internamente comprimidos.
  * E57: Archivos de puntos procedentes de tecnología LiDAR, generalmente terrestre.
  * PTS Leica: Archivos de puntos del láser HDS de Leica, almacenados con coordenadas cartesianas.
  * PTX Leica: Archivos de puntos del láser HDS de Leica, almacenados con coordenadas esféricas.
* **Archivo de imagen ráster**:
  * BMP: Archivos con imágenes ráster de formato Bitmap.
  * TIF: Archivos con imágenes ráster de formato TIFF. Este tipo de archivos puede contener en su cabecera información geográfica, tal como un modelo digital del terreno almacenado en formato de imagen ráster. En tal caso se trata de archivo GeoTiff que el programa también interpreta.
  * JPG: Archivos con imágenes ráster de formato JPEG.
  * ECW
* **Archivo con geometría de viales**:
  * VIA: Archivos propios de MDTop que contienen la definición del [trazado de viales](../modulo-viales/).

