# Clasificación urbana
<!-- id: clasificacion-urbana -->

[Ficha de herramientas MMS Urbana](../)

Clasifica una nube de puntos urbana (calzada, acera, bordillo, fachadas, árboles, mobiliario, marcas viales, tapas, cables aéreos…) y genera las líneas de rotura y el inventario urbano como entidades vectoriales.

Funciona con un archivo de nube de puntos abierto o con un proyecto. Requiere licencia MMS.

## Qué genera

* **Líneas de rotura**: bordillo abajo y arriba, pie de fachada y rígola. Con un MMS también se generan los bordillos inferidos bajo los coches aparcados y el bordillo de una fila de coches.
* **Inventario urbano**: marcas viales (el eje de las lineales y el contorno de las superficiales), tapas de registro, alcorques, sumideros, troncos y copas de árbol, fachadas con sus puertas, ventanas, balcones y otros elementos, objetos (farolas, postes, bolardos, papeleras, bancos, vehículos, peatones, contenedores, barreras, señales) y cables aéreos.
* **Clasificación de los puntos**: la clase LiDAR de cada punto de la nube.

Las líneas de rotura y el inventario se crean en un documento nuevo llamado *Clasificación urbana de …*. La clase de cada punto se escribe en la propia nube.

## El cuadro de diálogo

### Sensor

* **MMS de vehículo (por la calzada)**: un sistema móvil sobre un coche, que circula por la calzada.
* **Escáner SLAM a mano (también aceras)**: una mochila o un escáner de mano, con un recorrido más irregular que puede ir también por las aceras.
* **Trayectoria (opcional, solo MMS)**: el archivo con la trayectoria del vehículo. Puede ser un archivo de viales (se usa su trazado) o cualquier archivo que lea MDTopX. Se usa la línea más larga del archivo; si el archivo no tiene líneas (por ejemplo, las posiciones de las fotografías panorámicas), se usan sus puntos en el orden del archivo. Dos posiciones o vértices a más de 15 m se toman como un hueco de la trayectoria (el vehículo no grabó ahí), salvo en una línea cuando el tramo sigue en línea recta con el anterior y el siguiente (un eje de la calle dibujado con rectas largas). La trayectoria sirve para buscar las filas de coches aparcados y, en un proyecto, decide qué archivo se queda con cada tramo.
* **Densidad (0: la estimada)**: los puntos por metro cuadrado en el suelo junto al sensor. Con 0, se estima a partir de la nube. Junto con el sensor, fija el tamaño del vóxel.
* **Intensidad comparable entre pasadas**: márquelo si la intensidad de los puntos es comparable entre haces y pasadas. No lo marque con sensores que no la calibran (por ejemplo, Velodyne).
* **Margen de contexto (proyecto SLAM)**: en un proyecto SLAM, cada archivo se procesa con los puntos de los demás que quedan a esta distancia de su límite. Solo se usa en proyectos con escáner SLAM.

### Umbrales

Todos en metros.

| Umbral | Por defecto | Significado |
|---|---|---|
| Altura máxima de árbol | 20 | No hay copas por encima de esta altura: lo que llega más alto con forma de pared es edificación. Tiene que ser 2 o más. |
| Altura mínima de copa | 2 | Lo que está por debajo no es copa de árbol (coches, personas). |
| Altura mínima de edificio | 3 | Una agrupación de edificación más baja no se clasifica como edificación. |
| Fondo de edificio | 30 | Por detrás del plano de la fachada, se clasifica como edificación hasta esta distancia. |
| Vuelo de elementos de fachada | 2 | Los elementos de fachada (balcones, toldos, aparatos de aire acondicionado) sobresalen del muro como mucho esto. Tiene que ser 100 o menos. |
| Altura de elementos de fachada | 2,2 | Los elementos de fachada están por encima de esta altura. |
| Altura mínima de cable | 3,5 | Los cables aéreos están, como poco, a esta altura sobre el suelo. |
| Largo mínimo de cable | 3 | Un cable aéreo mide esto o más. |
| Hueco de bordillo (MMS) | 12 | El bordillo se sigue a través de huecos (coches aparcados) de hasta esta longitud. Solo con MMS. |
| Paso de vóxel (0: auto) | 0 | El lado del vóxel. Con 0, el que corresponde al sensor y a la densidad. En un proyecto, con 0 se usa el menor de los de todos sus archivos. |
| Umbral de pintura (0: auto) | 0 | La intensidad de la pintura respecto a la del asfalto. Con 0, la calibrada para el MMS (o 1,6). |
| Profundidad bajo pavimento | 1 | Lo que queda más de esto por debajo del pavimento de alrededor se clasifica como «bajo el pavimento» (por ejemplo, un pozo). |

### Generar

* **Líneas de rotura**, **Inventario urbano**, **Clasificación de los puntos**: lo que se genera (ver arriba).
* **Conservar la clase de los puntos ya clasificados**: los puntos que ya tienen clase (distinta de 0, nunca clasificado, y de 1, sin clasificar) la conservan. Solo se clasifican los demás. Los puntos que quedan fuera de lo procesado también conservan su clase.
* **Añadir los puntos sintéticos del suelo que tapan los coches (MMS)**: se añaden a la nube puntos del suelo en las sombras de los coches aparcados, con su clase (calzada, acera, bordillo o suelo «inferidos»). Solo con MMS y con la clasificación de los puntos. No tienen color, pero sí tiempo GPS: el del coche u objeto que tapa ese suelo (el punto medido que no es suelo más cercano, a 5 m como mucho), para poder seleccionarlos por tiempo GPS junto con él. Se reconocen porque tienen número de retorno 0 (no son un eco del láser) y una de las clases inferidas. Si vuelve a clasificar la nube, los sintéticos de la vez anterior no se procesan ni se reclasifican; con esta casilla marcada, se sustituyen por los nuevos; sin ella, se conservan. Para poder reconocerlos, los puntos medidos de la nube tienen que tener número de retorno y las cuatro clases inferidas tienen que ser distintas de las demás clases de la tabla y de la 0. Si no se cumple, no se añaden puntos sintéticos.

### Clases LiDAR… y Códigos vector…

Abren las tablas con la clase LiDAR de cada tipo de punto y el código vector de cada línea o elemento del inventario. Ver [Clases y códigos](clases-y-codigos.md).

## Un archivo

Abra la nube de puntos y pulse **Clasificación urbana**. La nube se clasifica en memoria. Si se clasifican los puntos, se puede deshacer (salvo en nubes muy grandes, de las que MDTopX no guarda copia).

## Un proyecto

Con un proyecto abierto, pulse **Clasificación urbana** y elija los archivos que se van a procesar. Los archivos se procesan uno a uno, para no cargar el proyecto entero en memoria.

* **Puntos de contexto**: cada archivo se procesa con puntos de sus vecinos, para que las superficies no se corten en el borde. Con MMS, se toman del archivo anterior y del siguiente los puntos del 10 % de la duración del archivo antes de su primer tiempo GPS y después del último (como en el Asfalto). Sin tiempo GPS, se toman los puntos de sus máximas ampliadas un 10 %. Con SLAM, se toman de los archivos que tocan su límite ampliado con el **margen de contexto**.
* **Reparto**: lo que queda en la zona común de dos archivos sale una sola vez. Con MMS y trayectoria, cada tramo de trayectoria es del archivo con más puntos cerca de él. Sin trayectoria (SLAM), cada celda de 1 m es del archivo con más puntos alrededor.
* **Paso de vóxel**: es el mismo para todos los archivos (el menor de los de cada uno), para que todos detecten lo mismo.
* **Salida**: la clase de cada punto se guarda en cada archivo (con licencia MMS). Las líneas de rotura y el inventario de todos se unen en un solo documento nuevo: las líneas que cruzan la frontera entre dos archivos se empalman y los contornos repetidos salen una vez.
* Con MMS, el proyecto se ordena por tiempo GPS antes de procesarlo, como en el Asfalto.
* Si algún archivo no se puede procesar, al final aparece la lista.

## Limitaciones

* Los puntos sintéticos se añaden sin color (RGB 0, 0, 0).
* Se procesa la nube entera; no se tiene en cuenta la selección.
