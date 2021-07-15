---
description: Página de bienvenida de MDTopX
---

# ¿Qué es MDTopX?

El programa MDTopX está diseñado para la generación de modelos digitales del terreno y su posterior aprovechamiento dentro de la cartografía, la ingeniería o la arquitectura.

Dispone de un potente sistema de visualización de datos gráficos basado en tecnología OpenGL, que le permitirá al usuario visualizar y mover con fluidez gran cantidad de datos, como pueden ser modelos digitales con millones de puntos o modelos digitales cargados con texturas de ortofotos.

MDTopX dispone de una [nueva interfaz](interfaz-de-usuario.md) cuyo objetivo es facilitar el trabajo al usuario. Todas las herramientas están visibles y no se ocultan bajo menús o paneles independientes. Todos los comandos disponibles están visibles en la parte superior del programa agrupados según características comunes: Es la cinta de herramientas. Esta cinta de herramientas se subdivide en fichas. El programa incluye fichas adicionales que contienen comandos o herramientas específicas en función del documento que está activo. Estas fichas sólo se mostrarán cuando se tengan estos documentos, no entorpeciendo la vista al usuario.

El programa calcula un modelo digital entre puntos procedentes de ficheros con cartografía o topografía y la almacena en un formato especial donde se guardan las relaciones de vecindad entre los distintos puntos. En este formato es posible, además, almacenar y conservar las posibles líneas de ruptura definitorias del terreno.

El algoritmo empleado para calcular las relaciones de vecindad entre los puntos es la triangulación de Delaunay que genera modelos digitales de TIN \(_Triangulated Irregular Network_\) . No obstante, el programa también puede generar y tratar modelos digitales basados en rejillas regulares o DEM \(_Digital Elevation Model_\) .

Los archivos de entrada/salida válidos para el programa son múltiples: ficheros DIGI, ficheros DXF de AutoCad, ficheros DGN de MicroStation, ficheros ASCII, ficheros de TopCal, ficheros Shape de ArcInfo, fichero LAS, LAZ o E57 procedentes de sensores LiDAR, aéreos o terrestres, ficheros GeoTIFF, ECW, JPEG, TIFF, BMP, etc.

Además, permite generar archivos ráster georreferenciados como mapas de tintas hipsométricas o sombreados del relieve de la zona, que podrán ser salvados en diversos formatos de imagen como JPEG, BMP o TIFF. Asimismo, permite generar modelos digitales basados en rejilla regular y exportar a diferentes formatos de modelos digital, como el MTN 25 del Instituto Geográfico Nacional o el USGS30.

Para facilitar aquellos proyectos que poseen gran cantidad de archivos, esta versión posee la posibilidad de generar [proyectos](Proyectos%20de%20MDTopX.htm) donde referenciar todos los archivos \(MDT, dibujos, imágenes\) que pertenecen a la misma zona, facilitando las labores de edición y cálculo.

A parte del cálculo y aprovechamiento de modelos digitales el programa dispone de varios módulos opcionales con funciones específicas:

* [Módulo Viales](Modulo%20viales.htm): Permitirá al usuario el diseño de obras lineales, así como la extracción de los diversos planos de salida, como perfiles longitudinales o transversales, o su proyección sobre un modelo digital para obtener el terreno modificado con los viales proyectados. Dispone de herramientas de dibujo específicas y gran variedad de herramientas para el diseño de todos los elementos necesarios para viales.
* [Módulo VirtuaLand](Modulo%20VirtuaLand.htm): Permitirá al usuario realizar suavizado sobre modelos digitales de rejilla e incluso extraer las líneas de ruptura en este tipo de modelos. Además, incorpora herramientas para mejorar la presentación de los modelos digitales, incorporando texturas, objetos diversos como edificaciones o árboles, e incluso generando un video en formato AVI con movimiento sobre el modelo digital.
* [Módulo Láser](Modulo%20Laser.htm): Permitirá al usuario el tratamiento y edición de archivos con información capturada con dispositivos láser. Se incluyen herramientas que permitirá al usuario tratar millones de puntos, editarlos, clasificarlos y extraer información de ellos. Incluye una herramienta con un algoritmo rápido de Delaunay e incluso otra para la generación de modelos digitales tridimensionales utilizando la tetraedrización de Delaunay .
* [Módulo Ortofoto](Modulo%20Ortofoto.htm): Permite el cálculo de ortofotografías rectificadas a partir de un modelo digital del terreno e imágenes georreferenciadas en proyección cónica. Se incluyen herramientas para el cálculo de líneas de unión automáticas entre ortofotos vecinos, así como la generación de mosaicos de hojas.
* [Módulo MMS](Modulo%20MMS.htm): Permite la gestión y tratamiento de archivos láser registrados con sistemas Mobile Mapping. Estos sistemas disponen de sensores que permiten registrar densas nubes de puntos para el cartografiado de vías de carretera o ferrocarril. Las herramientas están basadas en diferentes algoritmos para la clasificación de los puntos y la extracción de elementos particulares de cada vía.
* Módulo MMI
* Módulo Edificación

En esta ayuda dispone de un listado de [ejemplos](Ejemplos.htm) de las aplicaciones que se pueden realizar con MDTopX.

