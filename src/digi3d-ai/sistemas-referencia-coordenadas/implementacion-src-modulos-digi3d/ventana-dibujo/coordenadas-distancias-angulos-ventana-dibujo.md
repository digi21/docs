# Coordenadas, distancias, ángulos y áreas para las órdenes que se ejecutan en la ventana de dibujo
<!-- id: coordenadas-distancias-angulos-ventana-dibujo -->

## Coordenadas

Las órdenes que se ejecutan en la ventana de dibujo trabajan en el sistema de referencia de coordenadas de la ventana de dibujo. Si asignas a la ventana de dibujo un sistema de referencia de coordenadas geográfico, las órdenes trabajarán con coordenadas geográficas. Si asignas un sistema proyectado, las órdenes trabajarán con coordenadas proyectadas.

Si las unidades del sistema de referencia de coordenadas asignado a la ventana de dibujo son metros, las órdenes que se ejecutan en la ventana de dibujo trabajarán en metros, y si las unidades del sistema de referencia de coordenadas asignado son millas náuticas, las órdenes trabajarán en millas náuticas.

En un sistema geográfico, la coordenada X es la longitud y la coordenada Y es la latitud, y ambas se expresan en la unidad angular del sistema. Por ejemplo, el sistema World Geodetic System 1984 (WGS 84, EPSG 4326; EPSG es el registro del grupo European Petroleum Survey Group) usa grados sexagesimales y el sistema Nouvelle triangulation de la France (NTF), con meridiano de París (EPSG 4807), usa grados centesimales. Para calcular las distancias, los perímetros, los acimuts y las áreas, las órdenes interpretan la longitud y la latitud en la unidad angular del sistema asignado a la ventana de dibujo. Por ejemplo, en NTF con meridiano de París, la distancia entre los puntos (0; 54) y (0,1; 54,1) es de 12.006 m.

## Distancias

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular distancias varía en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular la distancia |
| :--- | :--- |
| Proyectado |  |
| Geográfico | La orden calcula la distancia entre dos puntos a partir de sus coordenadas sobre el elipsoide del sistema (problema inverso de la geodesia), mediante el algoritmo de Vincenty. La distancia calculada se expresa en metros. |

## Ángulos

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular ángulos varía en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular el ángulo |
| :--- | :--- |
| Proyectado |  |
| Geográfico | La orden calcula el acimut entre dos puntos a partir de sus coordenadas sobre el elipsoide del sistema (problema inverso de la geodesia), mediante el algoritmo de Vincenty. |

## Áreas

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular áreas varía en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular el área |
| :--- | :--- |
| Proyectado | Se calcula el área de cada triángulo del polígono y se suman las áreas. |
| Geográfico | Se crea una proyección de Lambert azimutal equivalente, que conserva las áreas, centrada en el primer vértice del polígono. Se proyectan los vértices del polígono a esta proyección y Digi3D.AI calcula el área de cada triángulo del polígono proyectado y suma las áreas. El área calculada se expresa en metros cuadrados. |

Las órdenes que construyen geometría en el plano con un sistema geográfico, como [DENSIFICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/densifica.md), proyectan los vértices con una proyección estereográfica oblicua, que conserva los ángulos, y transforman las coordenadas de la geometría construida en ese plano a longitud y latitud, expresadas en la unidad angular del sistema.
