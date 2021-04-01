# Sistemas de Referencia de Coordenadas Proyectados

Estos sistemas siempre tienen asociado un sistema de referencia de coordenadas geográfico \(_2D_ o _3D_\) y sirven para representar una coordenada del sistema de referencia de coordenadas geográfico asociado \(que son siempre coordenadas polares, es decir, ángulos\) como una coordenada rectangular, aplicando para ello una proyección.

De modo que un sistema de referencia de coordenadas proyectado siempre está formado por los siguientes parámetros:

1. Sistema de referencia de coordenadas geográfico \(_2D_ o _3D_\).
2. Proyección \(_U.T.M._, _Lambert_, _Polar estereográfica_, ...\)
3. Los parámetros de la proyección \(_huso_, _hemisferio_, ...\)

Los sistemas de referencia de coordenadas proyectados son siempre de dos dimensiones \(aunque su sistema de referencia de coordenadas geográfico asociado sea de tres dimensiones\) y habitualmente \(aunque no tiene por qué ser así\) en la primera dimensión se almacena la coordenada _X_ y en la segunda la coordenada _Y_ las unidades de éstas suelen ser _metros_.

Digi3D.NET no permite al usuario seleccionar un sistema de referencia de coordenadas proyectado directamente, únicamente permite seleccionarlo como parte de un [sistema de referencia de coordenadas compuesto](SistemasDeReferenciaDeCoordenadasCompuestos.html).

