# Poligonales
<!-- id: poligonales -->

Esta herramienta sirve para calcular y compensar poligonales topográficas. Estas poligonales también pueden ser alternas, que son aquellas en las que no se ha estacionado en todos los puntos de la poligonal, si no, alternativamente.

Para llevar a cabo este cálculo es necesario tener lecturas horizontales en todas las estaciones, lecturas verticales y distancias en todos los tramos, y alturas de mira e instrumento. De cada tramo se disponen dos desniveles y dos distancias, en sentido directo y en sentido recíproco. El programa necesita al menos un desnivel y una distancia por tramo. Si dispone de los dos desniveles, promedia los dos; si dispone de las dos distancias, promedia las dos.

Las poligonales pueden ser de un eje o varios, *cerradas* sobre sí mismas o *abiertas*, o *encuadradas* entre dos estaciones de coordenadas y desorientaciones conocidas, o *no encuadradas*.

Las poligonales **encuadradas** son aquellas en las que se conocen las coordenadas de los puntos de llegada y salida. Si el punto es el mismo entonces es **cerrada** y, si no, **abierta**. En este caso, el programa puede calcular las coordenadas de puntos intermedios por los que se va pasando y desde los que se hacen visuales al punto anterior y al posterior. El programa calcula las coordenadas XYZ de cada una de las estaciones intermedias y ofrece al usuario unos errores de cierre.

Si la poligonal es **no encuadrada**, es decir, sólo se conocen las coordenadas de la estación salida, el programa podrá calcular las coordenadas de las estaciones intermedias pero no podrá ofrecer errores de cierre.

**Importante**: Antes de proceder con la poligonal, se deben haber calculado las desorientaciones en las estaciones de salida y llegada.

La herramienta se estructura en cinco pasos que guiarán al usuario en el cálculo:

* [Paso 1: Introducir ficheros de datos de entrada](paso-1-introducir-ficheros-de-entrada.md)
* [Paso 2: Selección de puntos](paso-2-seleccion-de-puntos.md)
* [Paso 3: Comprobación de distancias y desniveles](paso-3-comprobacion-de-distancias-y-desniveles.md)
* [Paso](paso-4-resultados-y-cierres.md) 4: Resultados y cierres
* [Paso](paso-5-configurar-salidas-de-datos.md) 5: Configurar salidas de datos

Use los botones **Siguiente** y **Anterior** para cambiar de paso y modificar los datos o las selecciones.
