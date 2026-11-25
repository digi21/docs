# Clasificación de carreteras
<!-- id: clasificacion-de-carreteras -->

[Trazado](./)

Clasifica la nube de una carretera tomada con un sistema de cartografía móvil (MMS) y, si se pide, genera su vectorial y la base de datos de su inventario. Sustituye a las herramientas [Suelo](clasificar-suelo-de-trazado.md), [Asfalto](clasificar-lineas-de-vial.md), [Líneas vial](buscar-lineas-de-vial/) e [Inventario carreteras](buscar-objetos-en-el-trazado.md) con una sola lectura de la nube.

Detecta los elementos siguientes:

* la calzada, los arcenes, las marcas viales (lineales y superficiales), el otro asfalto (accesos, apartaderos), la mediana, las cunetas, los taludes y el resto del suelo;
* los vehículos sobre la calzada;
* los pasos superiores y los túneles;
* los pórticos y banderolas de señalización, con los pilares que los sostienen;
* las barreras: las biondas y los muros (New Jersey, pretiles);
* las farolas, las señales y los carteles sobre postes;
* la vegetación baja y el ruido bajo el suelo.

Si se pide, rellena con puntos sintéticos los huecos que dejan en la calzada los vehículos.

Solo cambia lo que tiene que ver con la carretera: fuera del corredor, cada punto conserva su clase.

**Vectorial de carreteras**, el botón de al lado, hace solo el vectorial y la base de datos a partir de una nube ya clasificada, sin cambiarla. Sirve para una nube clasificada con esta herramienta y corregida después a mano, o para una clasificada con otro programa con las mismas clases.

## Cómo se usa

**Con un fichero.** Abra la nube. En la cinta **MMS**, grupo **Trazado**, pulse **Clasificación de carreteras**. Rellene el cuadro de diálogo y pulse **Aceptar**. La nube queda clasificada en memoria; guárdela para conservar el resultado.

**Con un proyecto.** Desde la vista del proyecto, pulse **Clasificación de carreteras**, rellene el cuadro de diálogo y elija los ficheros. El corredor se calcula con todos los ficheros a la vez, de modo que sigue de un fichero al siguiente. Cada fichero clasificado se guarda al acabar.

Hace falta la trayectoria del vehículo, o el eje de la carretera, en cualquier formato que lea MDTopX (por ejemplo, un .BIN). Todo se mide a lo largo de esa línea: el PK es la distancia a lo largo de ella desde su primer vértice. Una trayectoria diezmada o un eje dibujado con tramos largos también sirven.

Para guardar la nube clasificada, el vectorial y la base de datos hace falta la llave del módulo MMS.

## Qué genera

* **La clase de cada punto**, con las clases de la tabla de abajo.
* **Puntos sintéticos** (opcional) en los huecos de la calzada tras los vehículos, sobre la superficie de la calzada. Llevan la clase de la calzada inferida y la marca de punto sintético, de modo que en otra pasada se reconocen y se sustituyen.
* **Objetos de «Editar objetos»**: uno por vehículo. En un proyecto se guardan en el .OBJ de al lado de cada fichero.
* **El vectorial** (opcional), en un documento nuevo:
  * los límites de la calzada y del otro asfalto;
  * las líneas de los carriles, continuas y discontinuas;
  * el eje;
  * el fondo de las cunetas;
  * la cabeza y el pie de los taludes;
  * el eje de cada barrera y de cada muro, con su prisma (abajo, en su pie, y arriba, en su cima);
  * cada farola y cada señal, como en la [clasificación urbana](../urbana/clasificacion-urbana/README.md): el prisma de su fuste, el de su cabeza (el brazo con la luminaria, o la placa) y un punto en su pie;
  * cada pórtico, banderola o cartel sobre postes: el prisma de cada poste que llega al suelo (de su pie a donde empieza la
    placa o su brazo), el de su placa (los paneles juntos, uno solo) y el de cada brazo o tramo de viga, y un punto en medio de
    sus postes;
  * cada paso superior y cada túnel: su contorno en planta, a la cota de su cara inferior (sigue la rasante); si se le ve el
    canto, el prisma del tablero hasta lo alto de sus bordes (con el pretil, si lo tiene; con 3 m o más de canto, sin
    prisma); y el prisma de cada pila o hastial que llega al suelo, de su pie a la cara inferior del tablero. Lo fino que
    quede de la clase del techo, como un cable, no sale; tampoco un paso de 1 m de ancho o menos (una pasarela muy estrecha), y
    uno de 1,5 m puede no salir. Lo que cuelga del tablero sin llegar al suelo (una viga de borde, el dintel de una pila de
    martillo) es del tablero. Lo que la clasificación deje en la clase del techo, como la copa de un árbol junto al tablero,
    sale como parte del paso.
* **La base de datos del inventario** (opcional), en el fichero que se elija en el cuadro (de texto o, con extensión .html o
  .htm, una página web): una fila por barrera, muro, farola, señal, cartel y paso superior o túnel. Ver [abajo](#la-base-de-datos-del-inventario).

## El cuadro de diálogo

| Campo | Significado |
|---|---|
| Trayectoria (o eje de la carretera) | El fichero con la trayectoria del vehículo o con el eje de la carretera. |
| Conservar lo que ya esté clasificado | Los puntos que ya tienen una clase (ni 0 ni 1) no se tocan. |
| Puntos sintéticos en los huecos de la calzada (tras los vehículos) | Añade los puntos sintéticos. Los de una pasada anterior se sustituyen. |
| Vectorial | Genera el vectorial en un documento nuevo. |
| Base de datos del inventario (BBDD MMS) | Escribe la base de datos del inventario en el fichero de debajo (elíjalo con el botón **...**): un .txt o, con extensión .html o .htm, una página web con la misma tabla. Se puede pedir sin el vectorial. |
| Clases LiDAR... | La clase de cada elemento. Ver la tabla de abajo. |
| Códigos vector... | El código de cada elemento del vectorial y de la base de datos. Ver la tabla de abajo. |
| Valores por defecto | Vuelve a los valores por defecto de las casillas del cuadro (no a los de las clases ni a los de los códigos, que tienen su propio botón en su tabla). |

En **Vectorial de carreteras** solo están la trayectoria, la base de datos y los botones de las clases y los códigos.

### Las clases

Por defecto, las del catálogo de clases de MDTopX.

| Elemento | Clase |
|---|---|
| Calzada | 11 |
| Arcén | 69 |
| Marcas viales lineales | 67 |
| Marcas viales superficiales | 68 |
| Cuneta | 71 |
| Talud | 72 |
| Otro asfalto | 66 |
| Mediana | 70 |
| Otro suelo | 2 |
| Calzada inferida (puntos sintéticos) | 11 |
| Vehículos | 82 |
| Paso superior o túnel | 19 |
| Carteles y banderolas | 84 |
| Vegetación baja | 3 |
| Sin clasificar | 1 |
| Ruido (bajo el suelo) | 7 |
| Barreras (biondas) | 83 |
| Muros (New Jersey, pretiles) | 91 |
| Farolas | 81 |
| Señales | 85 |

### Los códigos del vectorial

| Elemento | Código |
|---|---|
| Límite de la calzada | LIMCAL |
| Límite de otro asfalto | LIMOAS |
| Línea de carril continua | CARCIR |
| Línea de carril discontinua | CARDIS |
| Eje de la carretera | EJECAR |
| Fondo de cuneta | FONCUN |
| Cabeza de talud | CABTAL |
| Pie de talud | PIETAL |
| Barrera (bionda) | BARRER |
| Muro (New Jersey, pretil) | MURO |
| Farola | FAROLA |
| Señal | SENAL |
| Cartel (pórtico o cartel sobre postes) | CARTEL |
| Paso superior o túnel (contorno) | PUENTE |

## Las farolas, las señales y los carteles

Se buscan entre lo que, con todo lo demás ya clasificado, quedaría sin clasificar, a 30 m o menos de la línea. Cada uno es un objeto suelto con el pie en el suelo o sobre la cima de una barrera baja, como las placas de PK que van detrás de la bionda. Tiene un fuste fino abajo y una cabeza arriba:

* **Farola**: de 6 m o más, con un brazo de 0,6 m o más en la cabeza; sin brazo, de 9 m o más.
* **Señal**: de 1,4 m o más, con un poste de 0,3 m o menos y una placa de 0,25 m o más de largo y 0,2 m o menos de grueso. También una placa colgada junto a otro poste ya reconocido, aunque no llegue al suelo.
* **Cartel sobre postes**: de 2 m o más, con un panel de 1,8 m o más de largo y 0,3 m o menos de grueso, en uno o varios postes.

Los pórticos y banderolas sobre la calzada se reconocen por su chapa llena por encima del gálibo, y sus pilares toman su clase. Los cables no son pórticos.

No son farolas ni señales un árbol, una mata, un poste liso sin placa, el borde de un muro ni una persona de pie.

Todavía salen mal unos pocos casos:

* unos puntos de un seto pegado a una señal salen como señal;
* un armario pegado al pie de una farola sale, en parte, como farola;
* dos señales a menos de 0,5 m una de otra salen en el vectorial como una sola.

## La base de datos del inventario

Un fichero de texto con el formato de la [Base de datos MMS](base-de-datos-mms.md) de un vectorial: una cabecera y una fila por objeto, con las columnas siguientes. Con extensión .html o .htm, una página web con una tabla de las mismas columnas y los mismos valores, para abrirla con el navegador o con una hoja de cálculo.

| Columna | Significado |
|---|---|
| CODIGO | El código del objeto en el vectorial (FAROLA, PUENTE, BARRER, CARTEL, SENAL, MURO...). |
| PK_INI, PK_FIN | Lo que ocupa a lo largo de la línea, en «km + m»: su principio y su final. |
| LADO | El lado de la línea: **Izq**, **Der** o **Ambos** (un pórtico que la cruza). A menos de 0,5 m de la línea, **Centro**. El de una farola o una señal es el de su pie. |
| X_UTM_INI, Y_UTM_INI, X_UTM_FIN, Y_UTM_FIN | Sus puntos en el PK de su principio y en el de su final. |
| Z_BAJA | La cota de su pie (el suelo bajo él; en un paso superior o un túnel, lo más bajo del suelo de su planta, sin los puntos sueltos). |
| ALTURA | Lo que sube sobre su pie. En una barrera o un muro, la mediana a lo largo; en un paso superior o un túnel, lo que sube sobre el suelo de debajo de cada punto (en un túnel en rampa, sin la rampa). |
| LONGITUD | En planta: la de su eje en una barrera o un muro; el lado largo de su planta en un poste (el brazo de una farola, la placa de una señal); lo que cubre a lo largo de la línea en un paso superior o un túnel. |
| AREA | En planta: la de su eje por su ancho en una barrera o un muro; la de su planta en un poste, en un paso superior o en un túnel. |
| DIST_EJE | La distancia en planta a la línea: la media a lo largo en una barrera o un muro; la de su pie en una farola o una señal; la media de la de sus puntos en un cartel, en un paso superior o en un túnel. |

Las filas van por tipo de objeto, en este orden: farolas, pasos superiores y túneles, barreras, carteles, señales y muros. Dentro de cada tipo van ordenadas por PK. Son los mismos objetos que el vectorial.
