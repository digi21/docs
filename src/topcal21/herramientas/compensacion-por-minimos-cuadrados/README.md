# Compensación por Mínimos Cuadrados
<!-- id: compensacion-por-minimos-cuadrados -->

Esta herramienta permite dar coordenadas XYZ a puntos mediante la compensación mínima cuadrática de un conjunto de observaciones realizadas entre éstos. Estas observaciones pueden ser angulares, de distancia o de desnivel. Además, permite la ponderación de dichas observaciones en función de las características del material empleado y de las propiedades de las propias observaciones.

Una vez realizada la compensación, el programa realiza un test estadístico (test de Baarda) que identifica visuales con posibles errores groseros para que el usuario pueda excluirlas del ajuste.

Para poder realizar el cálculo planimétrico se tienen que haber calculado previamente unas coordenadas aproximadas de los puntos que se desean ajustar. El cálculo se basa en la elección de uno o más puntos como fijos, es decir, cuyas coordenadas son conocidas e inamovibles, y a partir de éstos, calcular las del resto de los puntos.

En el cálculo altimétrico no es necesario tener unas coordenadas altimétricas aproximadas. Si no se realizaron lecturas de distancia en campo, el programa necesitará las coordenadas planimétricas para calcular las distancias entre los puntos.

La herramienta se estructura en varios pasos, en función de las compensaciones a realizar, que guiarán al usuario en el cálculo. La aparición de cada uno de los pasos dependerá del tipo de cálculo seleccionado, por lo que no todos son obligatorios:

* [Paso 1: Introducir ficheros de datos de entrada](paso-1-introducir-ficheros-de-datos-de-entrada.md)
* [Paso 2: Selección de puntos](paso-2-seleccion-de-puntos.md)
* [Paso 3: Configuración de la red y listados de salida](paso-3-configuracion-de-la-red-y-listados-de-salida.md)
* [Paso 4: Selección de visuales](paso-4-seleccion-de-visuales.md)
* [Paso 5: Pesos y residuos de las observaciones planimétricas](paso-5-pesos-y-residuos-de-las-observaciones-planimetricas.md)
* [Paso 5 bis: Selección de direcciones fijas](paso-5-bis-seleccion-de-direcciones-fijas-en-red-libre.md)
* [Paso 6: Desplazamientos y precisiones planimétricas](paso-6-desplazamientos-y-precisiones-planimetricas.md)
* [Paso 7: Resultados del test de Baarda planimétrico](paso-7-resultados-del-test-de-baarda-planimetrico.md)
* [Paso 8: Pesos y residuos de las observaciones altimétricas](paso-8-pesos-y-residuos-de-las-observaciones-altimetricas.md)
* [Paso 9: Desplazamientos y precisiones altimétricas](paso-9-desplazamientos-y-precisiones-altimetricas.md)
* [Paso 10: Resultados del test de Baarda altimétrico](paso-10-resultados-del-test-de-baarda-altimetrico.md)
* [Paso 11: Configurar salida de datos](paso-11-configurar-salida-de-datos.md)
* [Paso 12: Configurar croquis de dibujo](paso-12-configurar-croquis-de-dibujo.md)

Use los botones **Siguiente** y **Anterior** para cambiar de paso y modificar los datos o las selecciones.
