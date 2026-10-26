# Introducción a los Sistemas de Referencia de Coordenadas
<!-- id: introduccion-sistemas-referencia-coordenadas -->

## Localización de una coordenada en la tierra

Examina los siguientes grupos de coordenadas, denominados tuplas: \(_426308.23, 4335635, 640.0_\) y \(_39.166816,-3.853025, 640.0_\).

Los valores de las dos tuplas son distintos, pero la diferencia numérica no permite concluir que las tuplas correspondan a distintas ubicaciones de la Tierra sin conocer el sistema de referencia de coordenadas de cada tupla.

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

**Las tuplas de coordenadas del ejemplo representan el mismo punto de la Tierra.**

Las tuplas de coordenadas del ejemplo se refieren a _Malagón en Ciudad Real \(España\)_.

## Definición de sistema de coordenadas de referencia

Las coordenadas por sí mismas no permiten localizar un punto: necesitas saber a qué sistema de coordenadas de referencia se refieren, por lo que las tuplas de coordenadas deben indicarse junto con su sistema de coordenadas de referencia asociado:

\(_426308.23, 4335635, 640.0_\) en el sistema _WGS 84 / UTM Zona 30 N + EGM2008_

\(_39.166816,-3.853025, 640.0_\) en el sistema _WGS 84 + EGM 2008_

El sistema de coordenadas de referencia permite determinar a qué punto de la Tierra corresponde una coordenada.

Los sistemas de coordenadas de referencia especifican muchos parámetros:

1. Número y nombres de sus ejes como por ejemplo \(_Z_\), \(_X,Y_\), \(_X,Y,Z_\), \(_Latitud, Longitud_\), \(_Latitud, Longitud, Altitud_\), \(_Longitud, Latitud_\), \(_Longitud, Latitud, Altitud_\),...
2. Unidades de los ejes, como por ejemplo \(ángulos sexagesimales para las coordenadas _Latitud_ y _Longitud_ y metros para la _Altitud_\) o como por ejemplo \(_Millas náuticas_ para las coordenadas _X_ e _Y_\), ...
3. El área en la cual es útil el sistema de coordenadas de referencia \(de ámbito mundial, entre 6º oeste y 0º oeste en el hemisferio norte, o válido únicamente para Mauritania, Marruecos y España,...\).
4. El tipo de coordenadas: _Cartesianas 2D, Cartesianas 3D, geográficas, verticales_, ...
5. El dátum asociado al Sistema de coordenadas de Referencia \(como _World Geodetic System 1984_\). El dátum define el elipsoide asociado, como _WGS 84_, siglas de _World Geodetic System 1984_.
6. ...

## Lista de sistemas de coordenadas de referencia

Digi3D.AI permite crear tu propio sistema de referencia de coordenadas. Para ello, especifica los parámetros del elipsoide \(Semieje mayor y menor\) y del dátum, la ubicación del meridiano central asociado con el dátum, el tipo de coordenadas, el número de ejes y sus unidades. En la práctica, utilizarás uno de los sistemas de referencia de coordenadas proporcionados por Digi3D.AI.

El **Cuadro de diálogo Sistema de Referencia de Coordenadas** proporciona una lista de sistemas de coordenadas de referencia. El listado de sistemas de coordenadas de referencia que muestra este cuadro de diálogo se extrae de la base de datos _EPSG_.

El instalador de Digi3D.AI crea una copia de la base de datos del [OGP Geomatics Comitee](http://info.ogp.org.uk/geomatics/). Este comité proporciona una base de datos \(conocida como _EPSG_\) con miles de definiciones de sistemas de coordenadas de referencia así como los algoritmos a seguir \(y sus parámetros\) para transformar una coordenada entre distintos sistemas de coordenadas de referencia.

