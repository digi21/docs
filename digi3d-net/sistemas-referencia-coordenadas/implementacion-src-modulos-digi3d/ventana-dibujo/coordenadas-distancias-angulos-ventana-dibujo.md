# Coordenadas, distancias, ángulos y áreas para las órdenes que se ejecutan en la ventana de dibujo

## Coordenadas

Las órdenes que se ejecutan en la ventana de dibujo trabajan en el sistema de referencia de coordenadas de la ventana de dibujo, de modo que si en la ventana de dibujo tenemos asignado un sistema de corodenadas de referencia geográfico, las coordenadas con las que trabajarán las órdenes serán geográficas, y si tenemos asignado un sistema de referencia de coordenadas proyectado, éstas serán proyectadas.

Si las unidades del sistema de referencia de coordenadas asignado a la ventana de dibujo son metros, las órdenes que se ejecutan en la ventana de dibujo trabajarán en metros, y si las unidades del sistema de referencia de coordenadas asignado son millas náuticas, las órdenes trabajarán en millas náuticas.

## Distancias

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular distancias varía en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular la distancia |
| :--- | :--- |
| Proyectado |  |
| Geográfico | Se calcula mediante el problema inverso de la geodesia \(Sodano\). |

## Ángulos

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular ángulosvaría en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular la distancia |
| :--- | :--- |
| Proyectado |  |
| Geográfico | Se calcula mediante el problema inverso de la geodesia \(Sodano\). |

## Áreas

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular áreas varía en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular la distancia |
| :--- | :--- |
| Proyectado | Calculando el área de cada uno de los triángulos del polígono y sumando todas las áreas. |
| Geográfico | Se crea una proyección oblícua estereográfica cuyo origen coincide con las coordenadas del centro de masas del polígono a calcular el área. Se proyectan los vértices del polígono a esta proyección y se calcula el área igual que en el caso de sistemas proyectados. |

