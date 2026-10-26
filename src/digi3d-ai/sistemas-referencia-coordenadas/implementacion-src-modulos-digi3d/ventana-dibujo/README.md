# Ventana de dibujo
<!-- id: ventana-dibujo -->

La ventana de dibujo tiene asignado un sistema de referencia de coordenadas. El sistema de referencia de coordenadas de la ventana de dibujo determina el comportamiento de las siguientes funciones:

1. Las geometrías se muestran en la ventana de dibujo en el Sistema de Coordenadas de Referencia de la Ventana de dibujo.
2. Las coordenadas que se muestran en la barra de herramientas [Coordenadas](/digi3d-ai/referencia/barras-de-herramientas/coordenadas.md) y las que introduzcas en órdenes como [XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md) utilizan las unidades del Sistema de Coordenadas de Referencia de la ventana de dibujo.
3. Las órdenes que muestran distancias y áreas utilizan las unidades del _Sistema de Coordenadas de Referencia de la Ventana de dibujo_ si el sistema es _proyectado_. Si el sistema es _geográfico_, las distancias se muestran siempre en metros y las áreas en metros cuadrados.

La ventana de dibujo muestra archivos de dibujo. Cada archivo de dibujo tiene asignado un sistema de referencia de coordenadas que no tiene por qué coincidir con el de la ventana de dibujo \(excepto si cargas una ortofoto como un archivo de referencia en una ventana de dibujo\) ni con el de otros archivos de dibujo de referencia cargados, lo que significa que si se cargan los archivos _A_, _B_ y _C_, cada archivo puede tener un sistema de referencia de coordenadas distinto del de la ventana de dibujo.

Si hay una ventana fotogramétrica abierta, la ventana de dibujo enviará las geometrías a dicha ventana para que se muestren en la ventana fotogramétrica. Tal y como se explica en [Ventana Fotogramétrica](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-fotogrametrica/) la ventana fotogramétrica puede tener su propio sistema de referencia de coordenadas.

