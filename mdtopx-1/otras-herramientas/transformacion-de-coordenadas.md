---
description: Cuadro de diálogo Transformación de coordenadas
---

# Transformación de coordenadas

[Editar Archivo](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-archivo.md)

Esta herramienta permitirá transformar las coordenadas de un documento mediante varios tipos de transformaciones. Se mostrara un cuadro de dialogo donde se podrá elegir el tipo de transformación y los parámetros de esta.

 En este cuadro de diálogo aparecen los siguientes campos:

* **Tipo de transformación**: Las opciones disponibles son las siguientes:
  * Helmert 2 dimensiones
  * Helmert 3 dimensiones
  * Afín 2 dimensiones
* **Modo de introducción de los datos**:
  * Mediante parámetros de transformación
  * Mediante tensor
  * Mediante datos almacenados en archivo
  * Utilizando rejilla NTV2
  * Utilizando modelo del geoide
  * Seleccionando los puntos que define el plano XY destino
  * Transformación a trozos basándose en dos conjuntos de puntos
* **Datos**: Según las opciones elegidas anteriormente, los datos solicitados variarán. Y así:
  * Helmert 2 dimensiones mediante parámetros de transformación: Se deberán introducir los desplazamientos en X e Y, un ángulo de giro en grados centesimales y un factor de escala.
  * Helmert 2 dimensiones mediante tensor: Se deberán introducir los elementos de la matriz 2x2 de transformación.
  * Helmert 3 dimensiones mediante parámetros de transformación: Se deberán introducir los desplazamientos en X, Y y Z, los ángulos de giro en grados centesimales y los factores de escala para cada eje.
  * Helmert 3 dimensiones mediante tensor: Se deberán introducir los elementos de la matriz 3x3 de transformación.
  * Afín 2 dimensiones mediante parámetros de transformación: Se deberán introducir los desplazamientos en X e Y, los ángulos de giro en grados centesimales y los factores de escala para cada eje.
  * Afín 2 dimensiones mediante tensor: Se deberán introducir los elementos de la matriz 2x2 de transformación.
  * Mediante datos almacenados en archivo: Los datos de transformación están almacenados en un archivo ASCII que podrá haber sido generado por otro programa, por ejemplo, TopCal.
  * Utilizando rejilla NTV2: Se puede utilizar un archivo de rejilla en formato NTV2. El formato NTV2 \(desarrollado por el Geodetic Survey Division of Geomatics de Canadá\) es utilizado por el IGN para la transformación de coordenadas de diferentes datum, como puede ser la transformación de coordenadas en ED50 a ETRS89 y viceversa. Es una rejilla donde se define en cada punto el desplazamiento en longitud y latitud entre ambos sistemas. Con estos datos el programa interpola el desplazamiento para cada punto, aplicándola y obteniendo las coordenadas en el sistema destino. Se deberá indicar en qué sentido se desea realizar la transformación, el huso de la proyección UTM y el hemisferio.
  * Utilizando modelo del geoide: Se puede aplicar un modelo del geoide de tal manera que se puedan transformar las cotas elipsoidales de un archivo a cotas ortométricas. Se deberá indicar el huso de la proyección UTM y el hemisferio.
  * Seleccionando los puntos que define el plano XY destino: Con esta opción se pueden seleccionar un conjunto de puntos gráficamente que definan un plano para transformar el resto del fichero a este plano. Esta opción es útil cuando se quiere abatir un determinado plano, por ejemplo, la nube de puntos que define una fachada vertical, abatiéndola para que coincida con el plano XY. Aceptando esta opción, el programa mostrará un [cuadro de diálogo](calcular-plano.md) donde se pueden gestionar los puntos que definen el plano.
  * Transformación a trozos basándose en dos conjuntos de puntos: Se puede aplicar una transformación calculada a trozos a través de puntos comunes de dos archivos diferentes. El programa precisa dos conjuntos de puntos con coordenadas diferentes. Estos archivos deben ser archivos ASCII con cuatro columnas: Número de punto, X, Y, Z. A través del número de punto, el programa buscará puntos comunes. Con estos puntos, calculará una triangulación y en cada triángulo generado calculará una transformación Helmert 3D. Con este conjunto de transformaciones, proyectará todos los puntos del documento actual, aplicando la transformación que le corresponda por el triángulo donde está.

