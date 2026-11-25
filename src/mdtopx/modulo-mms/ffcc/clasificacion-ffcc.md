# Clasificación FFCC
<!-- id: clasificacion-ffcc -->

[FFCC](./)

Clasifica la nube de una línea de ferrocarril o de metro tomada con un sistema de cartografía móvil (MMS) y genera su vectorial. Detecta las vías con sus carriles, traviesas y contracarriles, la plataforma y el balasto, el suelo, los andenes, los muros, los techados de andenes y estaciones, los túneles, la catenaria (hilos, péndolas, postes, ménsulas y conexiones transversales), la vegetación, las señales de la vía y sus objetos (piquetes, balizas, cajas de registro y armarios). Si se pide, rellena con puntos sintéticos los huecos de los carriles y del suelo y genera el trazado de las vías (.VIA).

Solo cambia lo que tiene que ver con la vía. El resto de los puntos conserva su clase.

## Cómo se usa

**Con un fichero.** Abra la nube. En la cinta **MMS**, grupo **FFCC**, pulse **Clasificación FFCC**. Rellene el cuadro de diálogo y pulse **Aceptar**. La nube queda clasificada en memoria; guárdela para conservar el resultado.

**Con un proyecto.** Desde la vista del proyecto, pulse **Clasificación FFCC**, rellene el cuadro de diálogo y elija los ficheros. Las vías se buscan en todos los ficheros a la vez, de modo que siguen de un fichero al siguiente. Del fichero anterior y del siguiente de cada uno (los vecinos en el proyecto) se usa una franja del 10 % como contexto: da continuidad en los extremos, pero esos puntos ni se clasifican ni se guardan. Cada fichero clasificado se guarda al acabar.

Hace falta la trayectoria del vehículo, o el eje de la línea, en cualquier formato que lea MDTopX (por ejemplo, un .BIN). Las vías se buscan a lo largo de ella.

## Qué genera

* **La clase de cada punto**, con las clases de la tabla de abajo.
* **Puntos sintéticos** (opcional) en los huecos de los carriles (sobre el carril ajustado, como el del vectorial) y del suelo. Llevan la clase de lo que rellenan y la marca de punto sintético, de modo que en otra pasada se reconocen y se sustituyen.
* **Objetos de «Editar objetos»**: uno por cada carril, traviesa, andén, muro, túnel, contracarril, poste de la catenaria (con su ménsula), hilo de la catenaria, mata de vegetación, techado, señal, piquete, baliza, caja de registro y armario. En un proyecto se guardan en el .OBJ de al lado de cada fichero.
* **El vectorial** (opcional), en un documento nuevo: los ejes de los carriles y de las vías (ajustados: los dos carriles de cada vía, paralelos y sin quiebros, también por los huecos donde no se ven; un desvío o el extremo de un carril sin ver, como se siguieron), las traviesas y los contornos de los carriles y de las traviesas, los bordes de los andenes, la coronación de los muros, los perfiles de los túneles, los contracarriles, los hilos de la catenaria, las péndolas, los postes (el prisma de su planta), las ménsulas, las conexiones transversales y el prisma de cada señal, piquete, baliza, caja de registro y armario (su planta abajo y arriba, y sus cuatro aristas).
* **El trazado** (opcional), en un documento de viales nuevo: la geometría de las vías, con su sección tipo y sus perfiles, como en [Ajustar geometría de eje](ajustar-geometria-de-eje.md).

## El cuadro de diálogo

| Campo | Significado |
|---|---|
| Trayectoria (o eje de la línea) | El fichero con la trayectoria del vehículo o con el eje de la línea. |
| Buscar vías hasta esta distancia a cada lado (m) | Hasta dónde se buscan vías a cada lado de la trayectoria. Por defecto, 20 m. |
| Clasificación de los puntos | Pone la clase a cada punto. Sin ella solo se genera el vectorial. |
| Conservar lo que ya está clasificado | Los puntos que ya tienen una clase (ni 0 ni 1) no se tocan. |
| Puntos sintéticos en los huecos de los carriles y del suelo | Añade los puntos sintéticos. Los de una pasada anterior se sustituyen. |
| Vectorial | Genera el vectorial en un documento nuevo. |
| Trazado con su geometría y sección tipo (.VIA) | Genera también el trazado. **Parámetros...** abre los de [Ajustar geometría de eje](ajustar-geometria-de-eje.md), que son los mismos. |
| Clases LiDAR... | La clase de cada elemento. Ver la tabla de abajo. |
| Códigos vector... | El código de cada elemento del vectorial. Ver la tabla de abajo. |
| Valores por defecto | Vuelve a los valores por defecto de los campos del cuadro (no de las clases ni de los códigos, que tienen su propio botón en su tabla). |

### Las clases

Por defecto, las del catálogo de clases de MDTopX. Cada elemento tiene que tener una clase distinta de los demás; solo las de la catenaria pueden repetirse entre ellas.

| Elemento | Clase |
|---|---|
| Carriles de la vía recorrida | 10 |
| Carriles de las otras vías | 100 |
| Traviesas | 102 |
| Puntos sintéticos de carril | 10 |
| Sin clasificar | 1 |
| Suelo | 2 |
| Balasto | 103 |
| Puntos sintéticos de suelo | 104 |
| Andén | 105 |
| Muro | 91 |
| Túnel | 95 |
| Elementos del túnel | 106 |
| Contracarriles | 101 |
| Hilo de contacto | 109 |
| Sustentador | 110 |
| Péndolas | 111 |
| Otros cables | 112 |
| Postes | 107 |
| Ménsulas | 108 |
| Vegetación | 4 |
| Conexión transversal | 113 |
| Techado | 114 |
| Señal | 85 |
| Piquete | 115 |
| Baliza | 116 |
| Caja de registro de vía | 117 |
| Armario de vía | 118 |

### Los códigos del vectorial

| Elemento | Código |
|---|---|
| Eje de carril | RAILES |
| Eje de vía | EJEVIA |
| Eje de traviesa | TRAVIE |
| Contorno de carril | CONCAR |
| Contorno de traviesa | CONTRA |
| Borde de andén | BANDEN |
| Coronación de muro | MURO |
| Perfiles de túnel | TUNEL |
| Eje de contracarril | CCARRI |
| Contorno de contracarril | CONCCA |
| Hilo de contacto | HCONTA |
| Sustentador | SUSTEN |
| Péndola | PENDOL |
| Otros cables | CABLES |
| Poste | POSTE |
| Conexión transversal | CTRANS |
| Ménsula | MENSUL |
| Señal | SENAL |
| Piquete | PIQUET |
| Baliza | BALIZA |
| Caja de registro de vía | CREGIS |
| Armario de vía | ARMARI |

## Los postes de la catenaria

Un poste es una columna llena de 1,5 a 5 m sobre el plano de la vía, a entre 1,2 y 4 m del eje de la vía más cercana y más alta que el hilo de contacto, con su ménsula hasta el hilo (el más cercano que va sobre una vía; en un desvío, si la ménsula sostiene también la catenaria de la otra vía, a 0,8 m o menos detrás de ese hilo, hasta ella). Sin ménsula, también es poste si tiene pegados (a 0,6 m o menos) dos cables de la catenaria o más, vistos en 20 m o más, es fino (su lado menor, de 0,45 m o menos) y no tiene una copa a su alrededor: los postes de los feeders, o uno con señales que lleva sus cables. También es poste, sin ménsula, uno en el que acaban dos hilos de la catenaria o más, vistos en 3 m o más, con su extremo a 1,5 m o menos de él y sin que sigan al otro lado (un árbol que tapa los cables no es un poste): un poste de anclaje o de compensación. Su equipo (lo unido a él a 1,2 m o menos, desde 0,5 m sobre el plano de la vía, y lo que cuelga debajo: los contrapesos y las ruedas; no lo pegado a él que no sube de 2,5 m y abarca más de 0,6 m, como un matorral, un seto o un armario) sale como poste, y sus riendas, como otros cables. Un poste sin ménsula pegado a él (un contrapeso que llena sus columnas) es el mismo poste. Un poste con ménsula en el que acaban dos hilos o más así, sin copa a su alrededor (uno de compensación que sostiene también la catenaria de otra vía), lleva también su equipo y sus riendas. Una farola o una señal alta pegadas a dos cables de la catenaria también salen poste.

## Las señales de la vía

Se detectan los postes con una placa (carteles y postes kilométricos o hectométricos) y las señales luminosas altas (un mástil con la caja de los focos). Las medidas salen del Catálogo de señales ferroviarias (BOE-A-2017-556): las señales se colocan a unos 2,8 m del eje de la vía; la caja de una señal alta, con su foco más bajo a 2,5 m sobre el carril; las placas, con su borde de abajo a 1,2-1,65 m.

Una señal es un objeto suelto, a entre 1,3 y 4,5 m del eje de la vía más cercana, con un poste fino y vertical y una cabeza encima:

* **Placa**: una cabeza fina, con su borde de abajo a 2 m o menos sobre el carril. También una cabeza pequeña (de 0,35 m o menos de ancho), aunque no sea fina, sobre un poste más fino que ella; por eso, el remate de un poste algo más ancho que él y de 15 cm de alto o más también sale placa.
* **Señal alta**: una caja más alta que ancha, desde 2 m sobre el carril.
* **Placa en un poste de la catenaria**: una placa fina (de 0,15 m de ancho o más y 0,9 m de largo o menos, y de 15 cm de grueso o menos) colgada de un poste de la catenaria, vertical y no más de cuatro veces más larga que ancha, a entre 1 y 6 m del suelo: discos, rombos o carteles. El poste sigue siendo poste. Un contrapeso visto solo por su cara también sale placa; un rombo de 0,9 m o más, una placa de doble cara o una vista de canto pueden no salir.
* **Semáforo**: un mástil solo, de 3,5 a 7 m, que arranca a 1,5 m o menos del suelo (puede estar sobre su zócalo), con su escalera inclinada (recta, con sus dos largueros paralelos y sus peldaños cada 0,2-0,4 m, de 0,25 a 0,7 m de ancho y a entre 6° y 45° de la vertical; un tirante de la escalera al mástil o las cajas colgadas del mástil no la estropean; una rienda, un puntal o una rama, no son escalera) y la plataforma con la señal en sus 2,5 m de arriba. Sale como señal alta; su zócalo, si no toca el mástil, como caja de registro. Una escalera vertical, con la mitad de los peldaños sin ver, vista a trozos o con la plataforma más abajo puede no salir; un árbol de dos tallos con ramitas cruzadas a trechos regulares puede salir semáforo.
* **Torre**: una señal alta con su jaula y su escalera, de 3,5 a 7 m de alto y de 2,5 m o menos en planta, hecha de montantes verticales (las columnas de la jaula, la escalera y el mástil), con el mástil 0,4 m o más por encima del resto o con todos sus montantes juntos, a 0,5 m o menos (un poste en H con señales). Sale como señal alta.

No son señales un poste solo, una farola, un armario (tiene su propia clase), una papelera en su poste, la copa de un árbol joven sobre su tronco, un árbol (no tiene montantes), ni el pie de un poste de la catenaria.

Todavía no se detectan las señales luminosas bajas ni las colgadas de una pared o de un hastial. Tampoco una señal pegada a una valla o a un arbusto.

## Los objetos bajos de la vía

Cada uno, con su clase:

* **Piquete**: una estaca suelta de 0,35 a 0,9 m de alto y de 0,3 m o menos en planta, maciza y sin nada encima, a entre 1,9 y 4,5 m del eje de la vía. A veces sus 15-20 cm de abajo quedan como suelo.
* **Baliza**: un objeto entre los dos carriles de una vía, de 0,2 a 2 m de largo y de 0,7 m o menos de ancho, con su cima entre 30 cm por debajo y 10 cm por encima de la cabeza de los carriles. Solo en las vías que se detectan (en el hueco entre dos trozos de una misma vía, también): si una vía no sale, sus balizas tampoco.
* **Caja de registro de vía**: una caja de 0,3 a 1 m de alto y de 0,4 a 2,5 m de lado, con la tapa plana y el pie en el suelo, a 8 m o menos del eje. Puede llevar un poste encima. Lo que tiene esa forma también sale como caja de registro: una caja sobre un poste corto, un banco sin respaldo, una papelera con tapa o un seto recortado.
* **Armario de vía**: una caja de 1,1 a 2,5 m de alto y de 0,3 a 1,5 m de lado, con el techo plano, paredes y nada encima, con el pie en el suelo y a 8 m o menos del eje, fuera de los andenes. Lo que tiene esa forma también sale armario: un contenedor, un arcón, un seto recortado, un pilar o una caseta pequeña. Un armario girado respecto a la vía, con la puerta abierta o de menos de 0,3 m de fondo puede no salir.

La baliza, la caja de registro y el armario se clasifican enteros: lo que hay en su planta, desde 8 cm sobre el suelo, es de ellos aunque lo hubieran cogido el suelo, el balasto o una traviesa.

No son objetos de la vía una mata de hierba (tiene pocos puntos por vóxel), una piedra, una mata redonda ni el pie de una pilona o de una papelera.

Lo que ya era de la clase de las señales (por ejemplo, de la [clasificación urbana](../urbana/clasificacion-urbana/README.md)) y ahora no sale como señal pasa a sin clasificar, pero solo donde podría haber una señal de la vía (de 0,55 a 5,25 m del eje de una vía y hasta unos 7,5 m de alto). Lo que era piquete, baliza o caja de registro, en toda la franja donde se buscan.
