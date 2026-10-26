# Coordenadas, distancias, ángulos y áreas para las órdenes que se ejecutan en la ventana de dibujo
<!-- id: coordenadas-distancias-angulos-ventana-dibujo -->

## Coordenadas

Las órdenes que se ejecutan en la ventana de dibujo trabajan en el sistema de referencia de coordenadas de la ventana de dibujo. Si asignas a la ventana de dibujo un sistema de referencia de coordenadas geográfico, las órdenes trabajarán con coordenadas geográficas. Si asignas un sistema proyectado, las órdenes trabajarán con coordenadas proyectadas.

Si las unidades del sistema de referencia de coordenadas asignado a la ventana de dibujo son metros, las órdenes que se ejecutan en la ventana de dibujo trabajarán en metros, y si las unidades del sistema de referencia de coordenadas asignado son millas náuticas, las órdenes trabajarán en millas náuticas.

## Distancias

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular distancias varía en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular la distancia |
| :--- | :--- |
| Proyectado |  |
| Geográfico | Se calcula mediante el problema inverso de la geodesia \(Sodano\). |

## Ángulos

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular ángulos varía en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular la distancia |
| :--- | :--- |
| Proyectado |  |
| Geográfico | Se calcula mediante el problema inverso de la geodesia \(Sodano\). |

## Áreas

El comportamiento de las órdenes que se ejecutan en la ventana de dibujo a la hora de calcular áreas varía en función del tipo de sistema de referencia de coordenadas asignado a la ventana de dibujo tal y como puede comprobarse en la siguiente tabla:

| Tipo de sistema de referencia de coordenadas en la ventana de dibujo | Fórmula utilizada para calcular la distancia |
| :--- | :--- |
| Proyectado | Se calcula el área de cada triángulo del polígono y se suman las áreas. |
| Geográfico | Se crea una proyección oblicua estereográfica cuyo origen coincide con las coordenadas del centro de masas del polígono cuya área se calcula. Se proyectan los vértices del polígono a esta proyección y Digi3D.AI calcula el área de cada triángulo del polígono proyectado y suma las áreas. |

