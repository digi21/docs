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

El documento lleva también el modelo de la línea, con los códigos de [Líneas eléctricas](lineas-electricas.md#códigos-del-vectorial).

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
