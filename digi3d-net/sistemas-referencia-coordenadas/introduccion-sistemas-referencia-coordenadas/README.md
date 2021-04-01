# Introducción a los Sistemas de Referencia de Coordenadas

## Localización de una coordenada en la tierra

Analicemos las siguientes tuplas de coordenadas: \(_426308.23, 4335635, 640.0_\) y \(_39.166816,-3.853025, 640.0_\).

En un principio parecen dos tuplas completamente distintas: hay una diferencia de cuatrocientas y pico mil unidades entre la coordenada _X_ de ambas tuplas y una diferencia de cuatro millones y pico en la coordenada _Y_, lo que significa que ambas tuplas de coordenadas son distintas y apuntan a distintas ubicaciones de la tierra, pero quizás estemos equivocados...

**¿Sabes las unidades de la coordenada** _**X**_ **del primer punto?**

¿Son metros? ¿pies? ¿centímetros? ¿millas náuticas? ¿micras?

No lo sabes. Puedes intuir que son metros, pero nada más.

**¿Podrías asegurar que la primera coordenada de ambas tuplas representa la coordenada** _**X**_**, la segunda la** _**Y**_ **y la tercera la** _**Z**_**?**

No puedes. La primera coordenada de la segunda tupla podría ser perfectamente una coordenada _X_, o la _Longitud_ de un punto geográfico o la _Latitud_ de un punto geográfico.

Puedes intuir, pero nada más \(otra vez\).

**¿La coordenada** _**Z**_ **del primer punto es elipsoidal y ortométrica?**

No lo sabes.

**¿La coordenada** _**Z**_ **del primer punto, suponiendo que sea ortométrica está referida al dátum** _**EGM96**_ **o** _**EGM2008**_**?**

No lo sabes.

**¿Sabías que ambas tuplas en realidad apuntan exactamente al mismo punto de la tierra?**

Ambas tuplas de coordenadas se refieren a la misma población: _Malagón en Ciudad Real \(España\)_. Es más, ambas coordenadas representan exactamente el mismo punto de la tierra.

## Definición de sistema de coordenadas de referencia

Las coordenadas por si mismas no sirven de nada, es necesario saber a qué sistema de coordenadas de referencia se refieren, así que para ser más precisos, dichas tuplas de coordenadas se tendrían que haber indicado junto con su sistema de coordenadas de referencia asociado:

\(_426308.23, 4335635, 640.0_\) en el sistema _WGS 84 / UTM Zona 30 N + EGM2008_

\(_39.166816,-3.853025, 640.0_\) en el sistema _WGS 84 + EGM 2008_

Conocer el sistema de coordenadas de referencia al que pertenece una coordenada es fundamental para saber en qué punto de la tierra se refiere una determinada coordenada.

Los sistemas de coordenadas de referencia especifican muchos parámetros:

1. Número y nombres de sus ejes como por ejemplo \(_Z_\), \(_X,Y_\), \(_X,Y,Z_\), \(_Latitud, Longitud_\), \(_Latitud, Longitud, Altitud_\), \(_Longitud, Latitud_\), \(_Longitud, Latitud, Altitud_\),...
2. Unidades de los ejes, como por ejemplo \(ángulos sexagesimales para las coordenadas _Latitud_ y _Longitud_ y metros para la _Altitud_\) o como por ejemplo \(_Millas náuticas_ para las coordenadas _X_ e _Y_\), ...
3. El área en la cual es útil el sistema de coordenadas de referencia \(de ámbito mundial, entre 6º oeste y 0º oeste en el hemisferio norte, o válido únicamente para Mauritania, Marruecos y España,...\).
4. El tipo de coordenadas: _Cartesianas 2D, Cartesianas 3D, geográficas, verticales_, ...
5. El dátum asocidado al Sistema de coordenadas de Referencia \(como _World Geodetic System 1984_\). Éste a su vez define el elipsoide asociado como _WGS 84_.
6. ...

## Lista de sistemas de coordenadas de referencia

Digi3D.NET permite que tú mismo crees tu propio sistema de coorodenadas de referencia: tan solo tienes que especificar los parámetros del elipsoide \(Semieje mayor y menor\), del dátum, indicar la ubicación del meridiano central asociado con el dátum, especificar el tipo de coordenadas, especificar el número y unidades de los ejes y ya está, ya tienes tu sistema de coordenadas de referencia personalizado, pero en la práctica nunca lo vas a hacer, en la práctica vas a utilizar uno de los sistemas de coordenadas de referencia proporcionados por Digi3D.NET.

El [Cuadro de diálogo Sistema de Referencia de Coordenadas](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/sistemas-referencia-coordenadas/introduccion-sistemas-referencia-coordenadas/CuadroDeDialogoSistemaDeReferenciaDeCoordenadas.html) proporciona una impresionante lista de sistemas de coordenadas de referencia. El listado de sistrmas de coordenadas de referencia que muestra este cuadro de diálogo se extrae de la base de datos _EPSG_.

El instalador de Digi3D.NET crea una copia de la base de datos del [OGP Geomatics Comitee](http://info.ogp.org.uk/geomatics/). Este comité proporciona una base de datos \(conocida como _EPSG_\) con miles de definiciones de sistemas de coordenadas de referencia así como los algoritmos a seguir \(y sus parámetros\) para transformar una coordenada entre distintos sistemas de coordenadas de referencia.

