# Informacion general de la aplicación

Digi3D.NET es la evolución de dos programas que nacen como productos independientes y que terminan mezclándose en una única aplicación.

En el año 1988 nace _Digi_, una aplicación _CAD_ sin interfaz gráfica que permitía almacenar coordenadas de los codificadores de un _Topodata R2_. Estas coordenadas se transformaban con posteridad en formato _HP-GL2_ que era el formato de los _plotters_ de la época para imprimir la restitución. 

Con el tiempo _Digi_ esta aplicación se convierte en una aplicación gráfica, primero para MS-DOS y con posterioridad para _Windows_, pasando a llamarse _Digi21_.

_Digi3D_ nace como un sustituto de los restituidores analógicos/analíticos de la época. La idea era sustituir la máquina \(analógica o analítica\) que estaba conectada a otro ordenador en el que se ejecutaba _Digi21_ mediante una caja de codificadores.

Las primeras versiones de _Digi3D_ no permitían _super imposición vectorial_ y únicamente permitían trabajar con modelos estereoscópicos de cámaras cónicas. 

El sistema de visualización estereoscópica que se utilizaba era el _estereoscopio para monitores_.

Esta versión primitiva de _Digi3D_, permitía únicamente cargar imágenes \(escaneadas con un _escáner fotogramétrico_\) y realizar sobre ellas su orientación _interna_, _relativa_ y _absoluta_.

Una vez realizadas estas orientaciones, permitían al operador visualizar el modelo como si estuviera trabajando con un restituidor analítico. Cada vez que el usuario movía el modelo, se enviaban coordenadas por un cable serie a otro ordenador conectado con una versión de _Digi21_.

Durante un tiempo ambos programas convivieron: Los operadores tenían dos ordenadores uno con _Digi3D_ para la visión estereoscópica y otro con _Digi21_, para el registro de geometrías.

Con el tiempo ambas aplicaciones se unen en una única aplicación que pasa a llamarse Digi3D.

De esta aplicación ha habido varias versiones: _Digi3D 2000_, _Digi3D 2002_, _Digi3D 2005_, _Digi3D 2007_ y por último _Digi3D.NET_ pero la esencia de ambos programas sigue viva y por eso en este manual cuando nos referimos a la ventana fotogramétrica vamos a referirnos como **Digi3D** y cuando nos referimos a la ventana de dibujo vamos a referirnos a **DigiNG** \(la NG que añadimos a la palabra Digi hacen referencia a que internamente lo denominamos Digi de _Nueva Generación_\).

## Digi3D

_Digi3D_ ha evolucionado mucho desde sus primeras versiones. Ahora permite cargar modelos _monoscópicos_, _estereoscópicos_ y con _múltiples puntos de vista_ de multitud de sensores como orígenes de datos en internet como _Web Map Service, Web Map Tile Service_, cámaras cónicas, sensores de barrido como Leica ADS40/80, imágenes satelitales, ortofotos, ortofotos estereoscópicas \(generadas a partir de una ortofoto y de un modelo digital de superficie y/o un modelo digital del terreno\), nubes de puntos densas, etc.

_Digi3D_ permite conectarse con multitud de dispositivos 3D como sistemas de manivelas, topo-mouse, soft-mouse, Stealth3DMouse, ratones estándar, múltiples ratones simultáneamente, etc.

_Digi3D_ permite visualizar estereoscopía en multitud de sistemas de visión estereoscópica como _anaglifo_, estéreo profesional _page-flipping_, _Planar 3D_, gafas pasivas, monitores autoesteroscópicos, estereoscopios, etc.

Permite cargar imágenes en múltiples formatos como BigTIFF, GeoTIFF, JPG, JPG2000, ECW, MrSID y NTv2, etc.

## DigiNG

**DigiNG** es la aplicación de registro y edición de información específicamente cartográfica, y por ello gran número de empresas apuestan por ella para sus trabajos cartográficos.

Ofrece más de 300 órdenes especialmente diseñadas para la restitución y edición cartográfica, permitiendo digitalizar líneas, puntos, textos, polígonos y entidades complejas además de añadir metainformación en bases de datos.

Dispone de un sistema inteligente de _tentativos_, siendo posible por parte del usuario configurar un plan automatizado de modos de búsqueda basado en códigos.

Permite realizar búsquedas inteligentes de entidades por multitud de criterios.

Permite realizar análisis geométricos y topológicos.

Permite crear ortofotos.

Permite trabajar con multitud de formatos gráficos \(binarios, binarios de doble precisión, AutoCAD _\*.dwg_, MicroStation v8 _\*.dgn_, ESRI Shapefiles _\*.shp_, Geomedia Access Datawarehouse _\*.mdb, PostGis, etc_\) sin necesidad de realizar importaciones y/o exportaciones.

