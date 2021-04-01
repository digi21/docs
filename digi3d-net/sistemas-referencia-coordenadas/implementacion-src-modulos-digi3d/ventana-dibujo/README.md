# Ventana de dibujo

La ventana de dibujo tiene asignado un sistema de referencia de coordenadas. Este sistema de referencia de coordenadas gobierna las siguientes funcionalidades:

1. Las geometrías se muestran en la ventana de dibujo en el Sistema de Coordenadas de Referencia de la Ventana de dibujo.
2. Las unidades de las coordenadas mostradas en la [BarraDeHerramientasCoordenadas](BarraDeHerramientasCoordenadas.html) y las que introduciremos en órdenes que esperan coordenadas como la orden [XY](5a5b8d48-1e11-4360-a409-266f74c85f48), serán las unidades del Sistema de Coordenadas de Referencia de la ventana de dibujo.
3. Las unidades que mostrarán las órdenes que muestran distancias y áreas serán en las unidades del _Sistema de Coordenadas de Referencia de la Ventana de dibujo_ si éste es _proyectad,_ si éste es _geográfico_ las distancias se mostrarán siempre en metros y las áreas en metros cuadrados.

La ventana de dibujo muestra archivos de dibujo. Estos archivos a su vez tienen asignado su propio sistema de referencia de coordenadas. Este sistema no tiene por qué coincidir con el de la ventana de dibujo \(excepto si cargamos una ortofoto como un archivo de referencia en una ventana de dibujo\) ni con el de otros archivos de dibujo de referencia cargados, lo que significa que si se cargan los archivos _A_, _B_ y _C_, cada uno de ellos puede estar en su propio sistema de referencia de coordenadas que no tienen por que coincidir con el de la ventana de dibujo.

Si hay una ventana fotogramétrica abierta, la ventana de dibujo enviará las geometrías a dicha ventana para que se muestren en la ventana fotogramétrica. Tal y como se explica en [Ventana Fotogramétrica](VentanaFotogrametrica.html) ésta puede tener su propio sistema de referencia de coordenadas.

