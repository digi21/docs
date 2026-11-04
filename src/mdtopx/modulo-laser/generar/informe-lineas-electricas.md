# Informe de líneas eléctricas
<!-- id: informe-lineas-electricas -->

[Generar a partir de LIDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Hace el informe de las líneas eléctricas de una nube de puntos ya clasificada. La nube puede estar clasificada con [Líneas eléctricas](lineas-electricas.md) o con otro programa, y puede tener correcciones hechas a mano. El informe recoge:

* las medidas de los vanos, los conductores y los apoyos;
* las distancias reglamentarias al terreno, al arbolado y a los edificios según la ITC-LAT 07 del Reglamento de líneas eléctricas de alta tensión (Real Decreto 223/2008);
* los árboles cercanos a la línea y su riesgo;
* un ráster de la distancia de la vegetación a los conductores.

La línea se calcula de nuevo con los puntos de sus clases (conductor, cable de guarda y torre) y la nube no cambia. Por eso se puede repetir el informe con otras tensiones, otro viento u otros márgenes sin volver a clasificar.

Funciona con un archivo de nube de puntos abierto o con un proyecto. En un proyecto se usan todos los archivos elegidos a la vez.

## Qué genera

Los archivos se escriben en la carpeta elegida o, si no se elige ninguna, junto al archivo o al proyecto, con su nombre:

| Archivo | Contenido |
|---|---|
| `<nombre>_informe.html` | La página del informe: resumen, parámetros y normativa, plano y tablas. Se abre en el navegador al terminar. |
| `<nombre>_informe_lineas.csv`, `_vanos.csv`, `_conductores.csv`, `_apoyos.csv`, `_arboles.csv`, `_edificios.csv` | Las tablas del informe, con `;` como separador y punto decimal. |
| `<nombre>_distancias.tif` | GeoTIFF con la distancia de la vegetación al conductor más cercano en cada celda. Las celdas sin vegetación quedan sin dato. |
| `<nombre>_riesgo.tif`, con su `.ORT` y su `.TFW` | El riesgo por colores: rojo, invade la distancia reglamentaria; naranja, riesgo alto; amarillo, medio; verde, bajo. Se puede cargar en MDTopX como ortofoto. |

Además se abre un documento nuevo, *Informe de líneas eléctricas de …*, con el vectorial:

| Código | Qué es |
|---|---|
| SERVID | Los bordes de la servidumbre de vuelo de cada vano. |
| PROTEC | Los bordes de la zona de protección. |
| FRANJA | Los bordes de la franja sin edificios. |
| ARBINV, ARBALT, ARBMED, ARBBAJ | Cada árbol, en su punto más cercano al conductor, según su riesgo: invade, alto, medio o bajo. |
| DISTAR | La línea del árbol al conductor, en los que invaden o tienen riesgo alto. |
| EDIFIC | El punto más cercano de cada edificio de la franja. |

El documento lleva también el modelo de la línea calculado de nuevo, con los elementos y las etiquetas de los apoyos de [Líneas eléctricas](lineas-electricas.md#el-vectorial). Los números de los apoyos (A…) de las tablas del informe son los de esas etiquetas, que pueden no coincidir con los del documento de Líneas eléctricas.

### La ventana de resultados

Al terminar, la ventana de resultados muestra: «Informe de líneas eléctricas: *l* líneas, *a* apoyos, *v* vanos, *n* árboles (*i* invaden la distancia reglamentaria, *h* de riesgo alto y *m* de riesgo medio) y *e* edificios en la franja sin edificios. Página: *ruta de la página*». Si no se ha podido escribir algún archivo, también lo indica.

### La página del informe

* **Resumen**:
    * **Líneas**: los grupos de apoyos unidos por vanos. Una derivación es de la misma línea; dos líneas que se cruzan sin compartir apoyo son dos.
    * **Apoyos (celosía / poste / sin estructura)**: los apoyos sin estructura son los que salen como «sin apoyo» en las etiquetas.
    * **Modelos de apoyo distintos**.
    * **Vanos / conductores**: los conductores, contados vano a vano.
    * **Conductores bajo la distancia al terreno**: los conductores de vano cuya altura mínima sobre el suelo es menor que la distancia reglamentaria al terreno. Salen en rojo en la tabla de conductores.
    * **Árboles (invaden / riesgo alto / medio / bajo)**.
    * **Árboles que tocan la zona de protección**: los que tienen parte de la copa dentro de la zona de protección de su vano, aunque no invadan la distancia reglamentaria.
    * **Edificios en la franja sin edificios**.
    * **Copas descartadas: pequeñas / en tira**: las copas que no se cuentan como árboles. Las pequeñas son las de menos de 0,5 m². Las que van en tira, de menos de 1 m de ancho, suelen ser un cable sin modelar que tiene una clase de vegetación.
    * **Puntos de vegetación que no cuentan**: los que están en la cabeza de un apoyo, los que están pegados a un conductor (a menos de 0,6 m: son del propio cable) y los que tienen forma de cable.
* **Parámetros y normativa**: por cada línea, su tensión más elevada (Us), Del, Dpp, las distancias reglamentarias que se le aplican y la desviación de los conductores por el viento, en grados. Debajo, la normativa, los conductores tipo y los márgenes con que se ha hecho el informe.
* **Plano**: la planta de la línea, con los ejes de los vanos (azul), los apoyos (negro; gris los que no tienen estructura) con su número, los árboles que invaden (rojo) o son de riesgo alto (naranja) o medio (amarillo), y los edificios de la franja sin edificios (morado). Al pasar el ratón por un apoyo, un árbol o un edificio, se ve su número y, en los árboles y edificios, su distancia al conductor.
* **Apoyos**, **Vanos** y **Conductores**: las tablas de los archivos CSV, con las columnas principales.
* **Árboles que invaden o con riesgo alto o medio**: de más cerca a más lejos del conductor, hasta 1000. Todos los árboles están en el CSV de árboles.
* **Edificios en la franja sin edificios**.

## Medidas

* **Por vano y conductor**: largo en planta, cuerda entre amarres, pendiente, flecha y punto más bajo, parámetro de la catenaria, alturas mínima y máxima sobre el suelo, separación entre fases y con el cable de guarda, y anchos de la servidumbre, la zona de protección y la franja. La altura sobre el suelo se mide cada 0,5 m entre los apoyos, con la cota más alta del suelo a medio metro, del lado seguro.
* **Por apoyo**: pie, punta, altura, inclinación y desplome (a lo largo de la línea y transversal), tipo, modelo y función.
* **Árboles**: las copas se separan en el modelo de alturas de la vegetación. De cada árbol se da el par de puntos más cercano entre el árbol y un conductor, con la distancia en 3D, en planta y en vertical, y su riesgo. No se cuentan la vegetación en la cabeza de un apoyo, la que está a menos de 0,6 m de un conductor (es del propio cable) ni la que tiene forma de cable (un cable sin modelar que conserva una clase de vegetación). Tampoco son árboles las copas de menos de 2 m de altura, de menos de 0,5 m² o de menos de 1 m de ancho.
* **Edificios**: los grupos de puntos de edificio cercanos a la línea, con su punto más cercano.

## Distancias reglamentarias

Según la ITC-LAT 07, con la tensión más elevada de cada línea (Us):

| Distancia | Valor | Apartado |
|---|---|---|
| Del y Dpp | Tabla 15, según Us | §5.2 |
| Al terreno | 5,3 + Del, con un mínimo de 6 m | §5.5 |
| Al arbolado y zona de protección a cada lado | 1,5 + Del, con un mínimo de 2 m | §5.12.1 |
| A edificios, sobre puntos accesibles | 5,5 + Del, con un mínimo de 6 m | §5.12.2 |
| A edificios, sobre puntos no accesibles | 3,3 + Del, con un mínimo de 4 m | §5.12.2 |
| Franja sin edificios a cada lado de la servidumbre | 3,3 + Del, con un mínimo de 5 m | §5.12.2 |

La servidumbre de vuelo (Real Decreto 1955/2000, artículo 162.3) es la proyección de los conductores exteriores desviados por el viento (ITC-LAT 07, §3.1.2.1 y §3.2.3 a).

El riesgo de un árbol es:

* **invade**: está a menos de la distancia reglamentaria;
* **alto**: está a menos de la distancia reglamentaria más el margen de riesgo alto;
* **medio**: está a menos de la distancia reglamentaria más el margen de riesgo medio;
* **bajo**: el resto.

## Las tablas, columna a columna

Las tablas numeran cada cosa con una letra y un número desde 1: líneas L1, L2…; vanos V1…; apoyos A1…; árboles T1…; edificios E1…. Los conductores se numeran desde 1 en cada vano, de arriba abajo (por su altura en el centro del vano). Las longitudes van en metros, las pendientes en %, los ángulos en grados y las coordenadas en el sistema de la nube. En las columnas de sí o no, 1 es sí y 0 es no.

### `_lineas.csv`

| Columna | Qué es |
|---|---|
| `linea` | La línea. |
| `apoyos`, `vanos` | Cuántos apoyos y vanos tiene. |
| `alta` | 1 si es de alta, 0 si es de media. Es de alta si la altura media de sus amarres llega a la del cuadro de diálogo o, si su tensión se fijó a mano, si es de más de 36 kV. |
| `us_kv` | Su tensión más elevada (Us), en kV. |
| `del`, `dpp` | Las distancias de aislamiento Del y Dpp de la tabla 15 para su Us. |
| `dist_terreno`, `dist_arbolado`, `dist_edif_accesible`, `dist_edif_no_accesible` | Las distancias reglamentarias al terreno, al arbolado y a edificios sobre puntos accesibles y no accesibles. |
| `franja_edificios` | El ancho de la franja sin edificios a cada lado de la servidumbre. |
| `viento_grados` | Lo que el viento desvía los conductores de la vertical (0 sin viento). |

### `_vanos.csv`

| Columna | Qué es |
|---|---|
| `vano`, `linea` | El vano y su línea. |
| `apoyo_a`, `apoyo_b` | Sus dos apoyos. |
| `largo` | La distancia en planta entre los pies de los dos apoyos. |
| `distancia_puntas` | La distancia en 3D entre las puntas de los dos apoyos (0 si alguno no tiene estructura). |
| `pendiente_pct` | La pendiente del eje del vano, de pie a pie. |
| `conductores` | Cuántos conductores tiene, contando el cable de guarda. |
| `sep_fases` | La separación mínima en 3D entre dos conductores que no son de guarda (0 si tiene menos de dos). |
| `fase_a`, `fase_b` | Los dos conductores de esa separación mínima. |
| `sep_fases_centro` | La separación de esos dos conductores en el centro del vano. |
| `sep_guarda` | La separación mínima en 3D entre el cable de guarda y un conductor (0 si no hay guarda). |
| `sep_guarda_vertical` | La separación vertical entre el cable de guarda y el conductor más alto, en el centro del vano. |
| `ancho_conductores` | El ancho entre los conductores exteriores, en el centro del vano. |
| `ancho_servidumbre`, `ancho_proteccion`, `ancho_franja_edificios` | Los anchos totales de la servidumbre de vuelo, de la zona de protección y de la franja sin edificios. |

### `_conductores.csv`

| Columna | Qué es |
|---|---|
| `vano`, `conductor` | El vano y el número del conductor en él. |
| `guarda` | 1 si es el cable de guarda. |
| `xa`, `ya`, `za`, `xb`, `yb`, `zb` | Sus amarres en los apoyos A y B del vano. |
| `cuerda` | La distancia en 3D entre los dos amarres. |
| `pendiente_pct` | El desnivel entre los amarres dividido por el largo del vano. |
| `flecha` | La distancia vertical entre la cuerda y la curva en el centro del vano, más el margen de flecha. |
| `x_bajo`, `y_bajo`, `z_bajo` | El punto más bajo de la curva entre los amarres. |
| `parametro_catenaria` | El parámetro de la catenaria equivalente, en m (0 si el conductor no cuelga). |
| `altura_min`, `x_min`, `y_min`, `z_min` | La altura mínima del conductor sobre el suelo y el punto del conductor donde se da. |
| `altura_max` | La altura máxima sobre el suelo. |
| `bajo_distancia_terreno` | 1 si la altura mínima es menor que la distancia reglamentaria al terreno. |
| `rms` | El error medio cuadrático de la curva respecto a los puntos del conductor. |
| `cobertura` | La parte del vano, de 0 a 1, en la que el conductor tiene puntos. Una cobertura baja quiere decir que la curva sale de pocos puntos. |

### `_apoyos.csv`

| Columna | Qué es |
|---|---|
| `apoyo`, `linea` | El apoyo y su línea. |
| `tipo` | celosía, poste o sin estructura. |
| `modelo` | Su modelo (M1, M2…), vacío si no tiene estructura. |
| `extension` | Los metros que es más alto que el más bajo de su modelo. |
| `funcion` | alineación (dos vanos que se desvían menos de 3°), ángulo (dos vanos que se desvían 3° o más), fin de línea (un vano) o derivación (tres vanos o más). |
| `deflexion` | Lo que se desvía la línea en el apoyo, con dos vanos. |
| `x`, `y`, `z_pie` | Su pie. |
| `x_punta`, `y_punta`, `z_punta` | Su punta (la del pie si no tiene estructura). |
| `altura` | Del pie a la punta. |
| `inclinacion_grados` | Lo que el eje del cuerpo se inclina respecto de la vertical. |
| `acimut` | Hacia dónde se inclina, en grados desde el norte en el sentido de las agujas del reloj. |
| `desplome_mm_m` | La inclinación como desplome, en milímetros por metro de altura. |
| `desplome_linea`, `desplome_transversal` | El desplome a lo largo de la línea (de un apoyo vecino hacia el otro; en un fin de línea, hacia su vecino) y a la izquierda de ese sentido, en mm/m. |

### `_arboles.csv`

| Columna | Qué es |
|---|---|
| `arbol` | El árbol. |
| `x_cima`, `y_cima`, `z_cima` | Su punto más alto. |
| `altura`, `area` | Su altura sobre el suelo y el área de su copa, en m². |
| `x_arbol`, `y_arbol`, `z_arbol` | El punto del árbol más cercano a un conductor. |
| `x_conductor`, `y_conductor`, `z_conductor` | El punto del conductor más cercano a ese punto. |
| `distancia`, `horizontal`, `vertical` | La distancia entre los dos puntos en 3D, en planta y en vertical. La vertical es positiva si el conductor está por encima del árbol. |
| `linea`, `vano`, `conductor` | El conductor más cercano. Vacío si el árbol no tiene ningún conductor dentro del ancho de análisis. |
| `distancia_reglamentaria` | La distancia reglamentaria al arbolado de esa línea. |
| `riesgo` | invade, alto, medio o bajo. |
| `en_proteccion` | 1 si su copa toca la zona de protección de su vano. |

### `_edificios.csv`

| Columna | Qué es |
|---|---|
| `edificio` | El edificio. |
| `area`, `altura` | El área de su planta, en m², y su altura sobre el suelo. |
| `x`, `y`, `z` | El punto del edificio más cercano a un conductor. |
| `x_conductor`, `y_conductor`, `z_conductor` | El punto del conductor más cercano a ese punto. |
| `distancia`, `horizontal`, `vertical` | La distancia entre los dos puntos en 3D, en planta y en vertical. |
| `linea`, `vano` | El vano del conductor más cercano. |
| `en_franja` | 1 si está dentro de la franja sin edificios. |
| `riesgo` | invade, alto, medio o bajo, frente a la distancia reglamentaria sobre puntos no accesibles. |

## El cuadro de diálogo

### Clases LiDAR de la nube clasificada

* **Conductor**, **Cable de guarda**, **Torre** y **Suelo**: las clases de la nube (por defecto 14, 13, 15 y 2, las mismas de [Líneas eléctricas](lineas-electricas.md)). Tienen que ser distintas.
* **Vegetación** (por defecto `3,4,5,90`): las clases de los puntos de vegetación.
* **Edificios** (por defecto `6`): las clases de los puntos de edificio. Puede quedar vacía.

Las dos listas son números de 0 a 255 separados por comas. Se pueden escribir o elegir con el botón **…**, que abre la lista de las clases que hay en la nube (o en el proyecto) con sus puntos; las que ya están en el campo salen elegidas, y se eligen varias con Ctrl o Mayús.

### Tensión más elevada (Us)

La tensión de cada línea decide sus distancias reglamentarias y el conductor tipo para la servidumbre: LA-280 con cadena de 2,5 m por encima de 36 kV y LA-56 con cadena de 0,6 m por debajo.

* **Líneas de alta** (por defecto 245 kV) y **Líneas de media** (por defecto 24 kV).
* **De alta con los amarres a** (por defecto 15 m) **o más**: una línea es de alta si la altura media de sus amarres sobre el suelo es esta o más, y si no es de media.
* **Por línea**: la tensión de las líneas que se fija a mano, como «número de línea=kV» separados por punto y coma. Por ejemplo, `3=24; 5=66`. Las líneas se numeran desde 1, como en la tabla de líneas del informe. Esta tensión manda sobre las dos anteriores.

### Distancias y riesgo

* **Viento de** (por defecto 120 km/h): la servidumbre con los conductores desviados por este viento. Sin marcar, los conductores se toman tal como se midieron.
* **Margen de flecha** (por defecto 0 m): los metros que se suman a la flecha medida en el centro de cada vano. La flecha del vuelo no es la máxima que pide el reglamento (§3.2.3).
* **Ancho de análisis** (por defecto 20 m): la distancia a cada lado de los conductores exteriores en la que se buscan árboles y edificios.
* **Celda del ráster** (por defecto 1 m, como poco 0,1 m): el tamaño de celda de los dos ráster.
* **Riesgo alto hasta +** (por defecto 2 m) y **Riesgo medio hasta +** (por defecto 5 m): los márgenes del riesgo sobre la distancia reglamentaria. El de riesgo medio no puede ser menor que el de alto.

### Salida

* **Carpeta**: dónde se escriben los archivos del informe. Vacía, junto al archivo o al proyecto. Si los datos no están guardados en disco, hay que elegir una carpeta.
