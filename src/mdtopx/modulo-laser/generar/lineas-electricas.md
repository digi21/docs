# Líneas eléctricas
<!-- id: lineas-electricas -->

[Generar a partir de LIDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Busca las líneas eléctricas aéreas de una nube de puntos LiDAR: los conductores de cada vano, los cables de guarda y los apoyos (torres de celosía y postes) con su modelo. Clasifica sus puntos, completa los huecos con puntos sintéticos y dibuja la línea como entidades vectoriales.

Funciona con un archivo de nube de puntos abierto o con un proyecto. En un proyecto, la línea se calcula con todos los archivos a la vez: el vectorial es continuo de un archivo a otro y cada punto sintético va a un solo archivo.

Para medir la línea y sus distancias reglamentarias al terreno, al arbolado y a los edificios, use después [Informe de líneas eléctricas](informe-lineas-electricas.md) sobre la nube ya clasificada.

## Qué hace

1. **Conductores**: busca los puntos lineales y casi horizontales que están por encima del suelo, los une en tramos y ajusta a cada conductor una curva (recta en planta y parábola en altura) de amarre a amarre. También encuentra los de las líneas de media tensión, con las fases a menos de un metro unas de otras y pocos puntos por metro.
2. **Vanos y apoyos**: los conductores paralelos que acaban en el mismo sitio forman un vano, y donde acaban hay un apoyo. La estructura del apoyo (torre de celosía o poste) se ajusta con los puntos que no son de ningún conductor. En las líneas de media tensión, el conductor casi no se quiebra en los postes: los postes se buscan debajo de los conductores (una columna estrecha de puntos que sube del suelo hasta el conductor, sin nada alrededor) y los conductores se cortan en ellos.
3. **Modelos de apoyo**: los apoyos con la misma estructura, salvo la altura del cuerpo, son del mismo modelo. Cada apoyo lleva una etiqueta con su número y su modelo. Por ejemplo, «A12 M3+6» es el apoyo 12, del modelo 3, con 6 m más de cuerpo que el más bajo de su modelo.
4. **Cable de guarda**: el conductor más alto de un vano, si va junto a la punta de los dos apoyos.
5. **Clase de cada punto**: conductor, cable de guarda o torre. Solo cambian de clase los puntos de las clases que se pueden cambiar. Los puntos de las clases de una pasada anterior que ya no son de la línea pasan a la clase 1 (sin clasificar). Los puntos de suelo y de edificios no se tocan.
6. **Puntos sintéticos** (opcional):
    * En los conductores: puntos sobre la curva del conductor donde le faltan puntos. Solo en conductores bien ajustados y sin pasar de sus amarres.
    * En las torres: cada torre se completa con el modelo de su tipo, hecho con todos los escaneados de las torres de ese modelo. Solo se añaden puntos donde a la torre le falta estructura que tienen las demás de su modelo.

    Los puntos sintéticos llevan la clase sintética elegida, el tiempo GPS del punto real más cercano de su conductor o torre y la intensidad mediana. Si vuelve a pasar la herramienta, se quitan los sintéticos de la vez anterior (los de las clases sintéticas) y se ponen los nuevos.

El vectorial se crea en un documento nuevo llamado *Líneas eléctricas de …*. Con un archivo, la clase de cada punto y los sintéticos se ponen en la nube abierta, y se puede deshacer. Con un proyecto, se guardan en cada archivo.

Si no encuentra ninguna línea, no cambia nada y lo indica en la ventana de resultados.

## El cuadro de diálogo

### Clases LiDAR

| Clase | Por defecto | Significado |
|---|---|---|
| Conductor | 14 | Los puntos de los conductores (fases). |
| Cable de guarda | 13 | Los puntos de los cables de guarda. |
| Torre | 15 | Los puntos de la estructura de los apoyos. |
| Conductor sintético | 46 | Los puntos sintéticos de los conductores. |
| Guarda sintético | 45 | Los puntos sintéticos de los cables de guarda. |
| Torre sintética | 47 | Los puntos sintéticos de las torres. |
| Suelo | 2 | El suelo, a partir del que se miden las alturas. |

Las clases por defecto son las de ASPRS (14, 13 y 15). Las sintéticas son las mismas con el bit de punto sintético de LAS 1.0 a 1.3 (32): otros programas las leen como «14 sintético». Las siete clases tienen que ser distintas.

* **Clases que se pueden cambiar** (por defecto `0,1,3,4,5,7,12,90,121,122`): un punto que resulta ser de la línea solo toma su clase si tenía una de estas, o una de las de la línea.
* **De una pasada anterior (a 1)** (por defecto `121,122`, las de la herramienta anterior de MDTopX): los puntos de estas clases que ya no son de la línea pasan a la clase 1.

Las listas son números de 0 a 255 separados por comas. Se pueden escribir o elegir con el botón **…**, que abre la lista de las clases que hay en la nube (o en el proyecto) con sus puntos; las que ya están en el campo salen elegidas, y se eligen varias con Ctrl o Mayús.

### Umbrales

| Umbral | Por defecto | Significado |
|---|---|---|
| Altura mín. sobre el suelo | 3 m | Los conductores se buscan entre los puntos que están a esta altura o más sobre el suelo. |
| Radio de linealidad | 1,25 m | El radio de la vecindad con que se decide si un punto está en un cable. Con pocos vecinos se usa el doble, porque el cable de guarda tiene pocos puntos. |
| Largo mín. de un conductor | 20 m | Los conductores más cortos no forman vanos. |
| Hueco máx. en un conductor | 150 m | Dos tramos alineados de un conductor se unen a través de un hueco sin puntos de hasta esta longitud. |
| Ancho máx. de una línea | 15 m | Los conductores paralelos a menos de esta distancia son de la misma línea. |
| Radio de busca del apoyo | 12 m | La estructura del apoyo se busca a esta distancia de donde acaban sus conductores. |
| Flecha máxima | 8 % | La flecha de un conductor respecto al largo del vano. Una curva con más flecha no es un conductor. Hasta el 50 %. |
| Tolerancia al conductor | 0,25 m | Los puntos a esta distancia de la curva de un conductor, o menos, toman su clase. |
| Tolerancia a la torre | 0,5 m | Los puntos a esta distancia de una cara del cuerpo de la torre, o dentro de él, toman la clase de torre. |
| Matorral entre patas hasta | 2,5 m | Por debajo de esta altura sobre el pie suele haber matorral entre las patas de la torre: ahí solo toma la clase de torre lo que está pegado a sus caras. |
| Hueco a rellenar (× paso) | 3 | Un hueco de un conductor se rellena con puntos sintéticos si es más largo que el paso de sus puntos multiplicado por este valor (1 o más). |
| Apoyos para completar | 8 | El número de apoyos del mismo modelo, los más cercanos, con que se completa cada torre (de 1 a 50). |

### Puntos sintéticos

* **Rellenar los huecos de los conductores**.
* **Completar cada torre con el modelo de su tipo (con todos los escaneados)**.

### Códigos del vectorial

De 1 a 6 caracteres, sin espacios.

| Elemento | Por defecto | Qué es |
|---|---|---|
| Conductor | CONDUC | Cada conductor de cada vano, de amarre a amarre, en 3D. |
| Guarda | CGUARD | Cada cable de guarda de cada vano. |
| Apoyo | APOYO | El pie de cada apoyo (un punto). |
| Etiqueta | ETQAPO | El número y el modelo de cada apoyo (texto). |
| Eje | EJELIN | El eje de cada vano, de pie a pie de apoyo. |
| Torre | TORRE | Las aristas del cuerpo de la torre y la caja de su cabeza. |
