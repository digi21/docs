# Informe del trazado
<!-- id: informe-del-trazado -->

[Ajustar geometría de eje](ajustar-geometria-de-eje.md)

El informe del trazado es una página HTML con el resultado de [Ajustar geometría de eje](ajustar-geometria-de-eje.md) o del trazado de la Clasificación FFCC. Da cada parámetro de la planta y del alzado con su precisión, y mide la bondad del ajuste. Se escribe junto al dibujo (o a la nube, o al proyecto), con el nombre *&lt;origen&gt; informe del trazado.html*, y se abre en el navegador al acabar.

## Partes del informe

1. **Cabecera**: la fecha y el archivo de origen.
2. **Resumen**: una fila por eje, con la longitud, las curvas, cuántas con clotoide, los acuerdos, el error medio cuadrático (EMC), el residuo máximo y el ruido, en planta y en alzado, y los avisos. Cada fila enlaza con el apartado del eje. Los ejes que no se han podido ajustar salen en rojo, con el motivo.
3. **Parámetros del cálculo**: el tipo de vía, los límites del cuadro de diálogo y la cota de la rasante (el hilo bajo o el eje).
4. **Cómo leer los estadísticos**: un desplegable que explica los estadísticos del informe. Ver [Los estadísticos](#los-estadísticos).
5. **Un apartado por eje**:
   * La longitud medida, los metros descartados al inicio y al final, y la diferencia máxima entre lo escrito en el trazado y lo calculado.
   * **Planta: estado de alineaciones**: cada recta, clotoide y curva, con sus PK inicial y final, su longitud, su radio y sentido, el parámetro A de las clotoides, el acimut inicial (en gon, desde el norte) y las coordenadas del inicio.
   * **Planta: curvas**: el vértice, el giro, el radio, el parámetro A y la longitud de las dos clotoides, el arco, los puntos, el EMC y el residuo máximo de cada curva.
   * **Planta: bondad del ajuste**: la tabla de estadísticos, el gráfico de los residuos a lo largo del PK y el histograma.
   * **Alzado: vértices y acuerdos**: el PK y la cota de cada vértice, el Kv, si el acuerdo es convexo o cóncavo, las pendientes de entrada y de salida, el giro θ, los PK de las tangentes de entrada (TE) y de salida (TS), la longitud y la flecha del acuerdo. Debajo, cada rasante con su pendiente.
   * **Alzado: bondad del ajuste**: la misma tabla y los mismos gráficos que en planta.
   * **Sección de ferrocarril** (ferrocarril y metro, con los carriles): los tramos con el ancho nominal, el ancho medido y el entreeje con la vía contigua, y el peralte de cada curva, con la velocidad que le corresponde. Ver [Sección de ferrocarril](#sección-de-ferrocarril).
   * **Túneles** (en el trazado de la Clasificación FFCC): cada sección de túnel, con sus PK, su longitud, el tipo de techo (bóveda o losa), el ancho, el alto en el eje y la holgura a cada lado, y el dibujo de sus contornos. El contorno se mide en la nube por bloques de 5 m, de un pie de hastial al otro por arriba; un bloque es otra sección si más de un tercio de su contorno, sin la solera, se aparta más de 10 cm. El alto se mide desde la rasante (en ferrocarril, el hilo bajo). La holgura es lo más cerca del eje que queda el contorno entre 0,5 y 3,5 m de alto.
   * Los avisos de la planta y del alzado.

## Precisión de los parámetros

Cada parámetro sale con su desviación típica, en la forma *valor ± σ*.

* **Sin ±**: el parámetro se ha quedado en un límite del cuadro de diálogo (por ejemplo, el radio mínimo) y no se ha ajustado libremente. La fila sale resaltada.
* **Sin determinar**: la desviación típica es mayor que el valor (un radio o una clotoide), o mayor que 100 m en el PK o 1 m en la cota de un vértice, o que 10 ‰ en una pendiente. Los datos no fijan ese parámetro.
* En alzado, un acuerdo sale resaltado si su Kv está poco determinado (más del 30 %) o si llega al extremo de los datos. En un acuerdo cortado por el extremo, el Kv se mide con la parte que se ve, pero el vértice y la pendiente del lado cortado pueden quedar sin determinar.

## Los estadísticos

* **Residuo**: en planta, la distancia de cada punto del eje al trazado (positiva a la izquierda); en alzado, la cota medida menos la de la rasante.
* **Ruido del eje**: la escala robusta de los residuos (1,4826 por la mediana de sus valores absolutos). Es la referencia con la que el ajuste decide si una curva, una clotoide o un acuerdo están en los datos o son ruido.
* **Φ**: los residuos de puntos contiguos no son independientes, porque la vía ondula y el eje se mide cada metro. Φ es lo que eso multiplica la varianza; n/Φ es el número de observaciones independientes que valen lo mismo.
* **±**: la desviación típica de cada parámetro, con la varianza del ruido inflada por Φ. Supone que lo que el modelo no explica es ruido. Si la vía ondula con longitudes parecidas a las de sus elementos (Φ alto), parte de la ondulación se confunde con la geometría y las ± se quedan cortas: con Φ alto, tómelas como un mínimo.
* **EMC / ruido**: si está cerca de 1 y los porcentajes de residuos dentro de ±1, ±2 y ±3 veces el ruido se parecen a los de una normal (68,3, 95,4 y 99,7 %), el modelo recoge toda la geometría. Un EMC mucho mayor que el ruido, o muchos puntos fuera de ±3, señalan ondulación de la vía, elementos que el modelo no tiene o puntos que no son del eje. El gráfico de residuos dice dónde.
* **Sesgo**: una media distinta de 0 en planta indica un eje desplazado de forma sistemática; la asimetría, que se desplaza más hacia un lado.

La tabla de bondad da además el número de puntos y de descartados, los parámetros, la redundancia, la desviación típica, el residuo máximo con su PK, los percentiles 50, 95 y 99 y la curtosis.

## Sección de ferrocarril

* **Ancho medido**: la distancia entre los centros de las cabezas de los dos hilos menos el ancho de la cabeza. Su diferencia con el nominal incluye el error de ese ancho de cabeza.
* **Entreeje**: la distancia hasta el eje de la vía contigua, a su lado.
* **Peralte**: la diferencia de cota entre los hilos en el arco de la curva (la mediana ± 1,4826 veces la desviación absoluta mediana).
* **V estimada**: la velocidad que corresponde al peralte, de h = 9,1·V²/R (h en mm, V en km/h, R en m), y la longitud mínima de la transición, 8·V·h (h en m). Una clotoide más corta que eso sale resaltada; una vía existente no tiene por qué cumplirlo.
* Dos gráficos: el peralte medido y el que se escribe en el trazado, a lo largo del PK, y el ancho medido menos el nominal.
