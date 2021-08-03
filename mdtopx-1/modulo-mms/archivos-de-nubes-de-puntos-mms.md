# Archivos de nubes de puntos MMS

Los archivos de nubes de puntos MMS estarán compuestos por puntos georreferenciados con una cantidad que podría ser de 10, 20 o 30 millones. Menos podría ser contraproducente por abarcar poco modelo de la realidad; y más, podría retardar los cálculos que posteriormente se realizarán sobre cada uno de ellos.

El formato de entrada puede ser variable en función de la aplicación que realizó su cálculo, pero suelen ser: LAS, LAZ, E57, PTX o PTS.

* El formato LAS es el más habitual. Es un formato desarrollado por la ASPRS, público y perfectamente documentado.
* El formato LAZ se desarrolló posteriormente, por parte de Martin Isenburg, pero también documentado. Es un formato con compresión interna, llegando a un 30% del tamaño original.
* El formato E57 es más habitual de registros en estático o interiores.
* El formato PTX es ASCII y está formado por coordenadas polares respecto de una esfera, propio de registros en estático.
* Y el formato PTS es también un listado ASCII, pero de coordenadas rectangulares más alguna de sus propiedades: intensidad y/o color.

Es importante notar que cada punto tendrá diferentes componentes, importantes para el cálculo posterior:

* Coordenadas XYZ
* Tiempo GPS
* Intensidad
* Color
* Clasificación

Las coordenadas, el tiempo GPS y la intensidad vendrán asignados desde un principio. Las coordenadas ubicarán a cada punto espacialmente.

El tiempo GPS permitirá relacionar los puntos según su momento de registro. Podría ser que no se tuviera este valor, debido a que la nube no procediera de un registro MMS; por ejemplo, nube de puntos procedente de una multicorrelación fotogramétrica, propia de levantamientos realizados con UAV y cámara RGB. En este caso, se podría hacer un proceso posterior para asignar una marca falsa de tiempo que permita relacionar puntos rápidamente.

Por el último, el valor de intensidad es registrado por el sensor láser y su rango dependerá de muchos factores, pero sobre todo del fabricante del sensor. Obviamente, si la nube no procede de LiDAR \(por ejemplo, fotogrametría\), este valor no existirá. Entre los factores que influyen a este valor se encuentran: distancia, ángulo de reflexión, color del elemento, material, rugosidad o luz ambiente.

La característica color no es registrada directamente por el sensor LiDAR. Es asignada en un proceso posterior a partir de imágenes RGB. Normalmente, el registro LiDAR y de imágenes es simultáneo, pero no coincidirá exactamente para cada punto por su diferente técnica de registro, por lo que la correspondencia del color y el elemento medido no es precisa. Más aún si había elementos móviles, por ejemplo, vehículos en la vía. Aunque permite una visualización más real de la nube de puntos, porque es como vemos la realidad, es una característica pobre para ser utilizada por algoritmos porque depende del tipo de sensor, luz ambiente, ángulo o distancia.

Finalmente, la característica clasificación no viene rellena, pero será importante para diferenciar elementos en procesos posteriores. Este valor permitirá indicar qué es cada elemento donde registró en el sensor LiDAR. Sólo se pueden utilizar 256 valores y algunos de ellos están reservados por elementos fijos, normalmente los 16 primeros. El resto pueden ser utilizados por el usuario o el software de tratamiento para sus cálculos. Los procesos posteriores se basarán en una correcta clasificación de los puntos para obtener los documentos adecuados del registro.

Las características totales de la nube de puntos pueden ser consultadas desde la herramienta [Propiedades Doc Láser](../modulo-laser/vista/propiedades-documento-laser.md) de la barra de herramientas [Archivos LiDAR](../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/).

