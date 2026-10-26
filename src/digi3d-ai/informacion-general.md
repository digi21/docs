# Información general de la aplicación
<!-- id: informacion-general -->

Digi3D.AI es la evolución de dos programas que nacen como productos independientes y que terminan integrándose en una única aplicación.

En el año 1988 nace _Digi_, una aplicación _CAD_ (diseño asistido por ordenador) sin interfaz gráfica que permitía almacenar coordenadas de los codificadores de un _Topodata R2_. Después del registro, las coordenadas se convertían al formato _HP-GL2_, que utilizaban los _plotters_ (trazadores) de la época para imprimir la restitución.

Con el tiempo, _Digi_ se convierte en una aplicación gráfica, primero para MS-DOS y después para _Windows_, y pasa a llamarse _Digi21_.

_Digi3D_ nace como un sustituto de los restituidores analógicos/analíticos de la época. La idea era sustituir la máquina \(analógica o analítica\) que estaba conectada a otro ordenador en el que se ejecutaba _Digi21_ mediante una caja de codificadores.

Las primeras versiones de _Digi3D_ no permitían _superimposición vectorial_ y únicamente permitían trabajar con modelos estereoscópicos de cámaras cónicas.

El sistema de visualización estereoscópica que se utilizaba era el _estereoscopio para monitores_.

Esta versión inicial de _Digi3D_ permitía únicamente cargar imágenes \(escaneadas con un _escáner fotogramétrico_\) y realizar la orientación _interna_, _relativa_ y _absoluta_ de las imágenes.

Una vez realizadas las orientaciones interna, relativa y absoluta de las imágenes, _Digi3D_ permitía al operador visualizar el modelo como si trabajara con un restituidor analítico. Cada vez que el operador movía el modelo, _Digi3D_ enviaba las coordenadas por un cable serie a otro ordenador en el que se ejecutaba _Digi21_.

Durante un tiempo, _Digi3D_ y _Digi21_ se utilizaron a la vez: los operadores tenían dos ordenadores, uno con _Digi3D_ para la visión estereoscópica y otro con _Digi21_ para el registro de geometrías.

Con el tiempo, _Digi3D_ y _Digi21_ se unen en una única aplicación que pasa a llamarse Digi3D.

Digi3D ha tenido varias versiones: _Digi3D 2000_, _Digi3D 2002_, _Digi3D 2005_, _Digi3D 2007_ y, por último, _Digi3D.AI_. Este manual conserva la distinción entre los dos programas originales: llama **Digi3D** a la ventana fotogramétrica y **DigiNG** a la ventana de dibujo \(las siglas NG hacen referencia al nombre interno Digi de _Nueva Generación_\).

## Digi3D

_Digi3D_ permite cargar modelos _monoscópicos_, _estereoscópicos_ y con _múltiples puntos de vista_ de diversas fuentes: servicios de datos en internet como _Web Map Service, Web Map Tile Service_, cámaras cónicas, sensores de barrido como Leica ADS40/80, imágenes satelitales, ortofotos, ortofotos estereoscópicas \(generadas a partir de una ortofoto y de un modelo digital de superficie y/o un modelo digital del terreno\), nubes de puntos densas, etc.

_Digi3D_ permite conectarse con multitud de dispositivos 3D como sistemas de manivelas, topo-mouse, soft-mouse, Stealth3DMouse, ratones estándar, múltiples ratones simultáneamente, etc.

_Digi3D_ permite visualizar estereoscopía en sistemas de visión estereoscópica como _anaglifo_, estéreo profesional _page-flipping_, _Planar 3D_, gafas pasivas, monitores autoestereoscópicos, estereoscopios, etc.

Permite cargar imágenes en múltiples formatos como BigTIFF, GeoTIFF, JPG, JPG2000, ECW, MrSID y NTv2, etc.

## DigiNG

**DigiNG** es la aplicación de registro y edición de información cartográfica.

DigiNG ofrece más de 300 órdenes diseñadas para la restitución y edición cartográfica. Las órdenes de DigiNG permiten digitalizar líneas, puntos, textos, polígonos y entidades complejas, además de añadir metainformación en bases de datos.

DigiNG dispone de un sistema de _tentativos_ (búsquedas de entidades o de puntos de entidades) en el que puedes configurar un plan automatizado de modos de búsqueda basado en códigos.

Permite realizar búsquedas inteligentes de entidades por multitud de criterios.

Permite realizar análisis geométricos y topológicos.

Permite crear ortofotos.

Permite trabajar con multitud de formatos gráficos \(binarios, binarios de doble precisión, AutoCAD _\*.dwg_, MicroStation v8 _\*.dgn_, ESRI Shapefiles _\*.shp_, Geomedia Access Datawarehouse _\*.mdb, PostGis, etc_\) sin necesidad de realizar importaciones y/o exportaciones.

