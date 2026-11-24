# Inventario forestal
<!-- id: inventario-forestal -->

[Forestal](./)

Hace el inventario de los árboles de una nube de puntos de bosque. Encuentra cada árbol con su fuste, su diámetro normal (DAP), su altura y su copa, clasifica sus puntos y genera un vectorial con la tabla de atributos de los árboles, un MDT con objetos y un informe con los parámetros de la masa. Si se le da un inventario de campo, compara los árboles de la nube con los pies medidos.

Funciona con una nube solo terrestre (escáner terrestre o SLAM), solo de dron o con la fusión de las dos.

Está en la cinta **Clasificar LiDAR**, panel **Forestal**, botón **Inventario forestal**. Va a sustituir a las herramientas [Árboles](clasificar-arboles.md) y [Troncos](clasificar-troncos.md) del mismo panel, que siguen disponibles mientras se valida.

## Antes de empezar

* La nube tiene que tener el suelo clasificado (clase 2 por defecto; se cambia en **Clases LiDAR…**), por ejemplo con la [Superficie mágica](../../modulo-laser/buscar-puntos/superficie-magica/README.md). Sin puntos de suelo no se encuentra ningún árbol.
* Trabaja con un archivo de nube de puntos abierto o con un proyecto. Se procesa la nube entera; no se tiene en cuenta la selección.
* En un proyecto, después del cuadro de diálogo se eligen los archivos, y se tratan todos juntos, como una sola nube: los árboles del borde entre dos archivos salen enteros y una sola vez. Cada archivo se guarda con la clase de sus puntos y con sus objetos (en el .OBJ de al lado), para lo que hace falta la licencia del módulo láser. El vectorial, el MDT con objetos y el informe son de todos los archivos. Los puntos de todos tienen que caber a la vez en la memoria.
* Todo lo que no es suelo y está a más de 0,3 m sobre él se trata como vegetación, sea cual sea su clase. Si en la nube hay edificios, vallas, vehículos o ruido junto a los árboles, recorte antes la nube o borre esos puntos.
* Para distinguir el dron del terrestre en una fusión, los puntos tienen que llevar tiempo GPS. Ver [Sensores](#sensores-terrestre-dron-o-fusión).

## Cómo se usa

Abra la nube de puntos y pulse **Inventario forestal**. Rellene el cuadro de diálogo y pulse **Aceptar**. La búsqueda de los árboles se puede cancelar desde la barra de progreso.

Al terminar:

* La ventana de resultados indica cuántos árboles se han encontrado (y cuántos son dudosos), de cuántos fustes detectados, cuántos puntos han cambiado de clase, los parámetros principales de la masa de cada zona y, con inventario de campo, cuántos pies se han detectado.
* El informe se abre en el navegador.
* El vectorial y el MDT con objetos se abren en documentos nuevos, sin guardar, llamados *Inventario forestal de …*. Para guardarlos hace falta la licencia del módulo láser.
* La clasificación de los puntos y los objetos se pueden deshacer (salvo en nubes muy grandes, de las que MDTopX no guarda copia). En un proyecto no: los archivos ya se han guardado.

## Qué genera

Cada salida tiene su casilla en el cuadro de diálogo. Todas están marcadas por defecto.

* **Clasificación de los puntos**: la clase de cada punto del árbol según su componente: fuste (93), copa (5) o sotobosque (3).
* **Un objeto por árbol**: los puntos de cada árbol forman un objeto de nube.
* **Vectorial con tabla de atributos**: de cada árbol, el pie, la sección del DAP, el eje, la copa en planta, la cima y su número, con una tabla de atributos de los árboles.
* **MDT con objetos**: el suelo y, por árbol, un objeto con su fuste y su copa.
* **Informe (HTML y CSV)**: una página con los resultados de la masa, de cada árbol y del inventario de campo, y las mismas tablas en CSV.

Ver [Las salidas en detalle](#las-salidas-en-detalle).

## El cuadro de diálogo

<!-- captura pendiente: cuadro de diálogo Inventario forestal -->

Los números se pueden escribir con coma o con punto decimal. Los valores del cuadro se guardan para la próxima vez.

### Inventario de campo (opcional)

Los pies medidos en campo, para comparar con ellos los árboles de la nube y para dar a cada árbol su especie. Vacío: sin inventario de campo.

* **Pies**: un archivo de puntos (por ejemplo, un .shp con su tabla .dbf) o un .csv. Ver [El inventario de campo](#el-inventario-de-campo).
* **Campo de la especie**: el campo de la tabla del .shp que tiene la especie. Es obligatorio con un .shp.
* **Solo la 1.ª palabra**: de ese campo se toma solo la primera palabra (de «Sylvestris 123», «Sylvestris»).
* **Excluir**: las «especies» que no son árboles (vértices, bases de replanteo…), separadas por punto y coma. Por ejemplo, `Vertice;Base`. No se distinguen mayúsculas.

**Solo la 1.ª palabra** y **Excluir** solo se aplican a un .shp, no a un .csv.

### Zonas (opcional)

Los polígonos de las zonas del inventario (cuadrantes, parcelas, rodales). Con zonas, los parámetros de la masa salen por zona y en total, y la comparación con el campo se hace solo dentro de ellas.

* **Polígonos**: un archivo con los polígonos cerrados de las zonas (por ejemplo, un .shp).
* **Campo del nombre (de un .shp)**: el campo de la tabla del .shp con el nombre de cada zona. Vacío: el código de la línea, si lo tiene, o *Zona 1*, *Zona 2*…

### Especies y volumen

* **Especie de los árboles sin pie de campo**: la especie de los árboles que no tienen un pie de campo emparejado (o de todos, si no hay inventario de campo). Vacío: esos árboles no tienen especie ni volumen por especie.
* **Ecuaciones de volumen (.csv; vacío: las de fábrica)**: las ecuaciones de volumen por especie. Vacío: las tarifas del IFN IV de Lugo. Ver [Volumen por especie](#volumen-por-especie).

### Parámetros

| Parámetro | Por defecto | Significado |
|---|---|---|
| Altura mínima de árbol (m) | 3 | Un árbol más bajo es **dudoso** (un tocón, un árbol partido, un fuste repetido o un árbol al que otro le ha quitado la copa): sale aparte y no cuenta en la masa. Hasta 50 m. |
| Vóxel (m) | 0,15 | El lado de los vóxeles con que se reparten los puntos entre los árboles. Hasta 1 m. |
| Rodajas mínimas | 2 | Las rodajas con circunferencia que necesita un fuste para ser un árbol (de 1 a 11). Con menos, salen más árboles, pero también más matas y ramas tomadas por árboles; con más, menos falsos y se pierde algún árbol real. |

* **Sensores**: cómo se buscan los árboles según los sensores de la nube: **Automático (según los datos)**, **Terrestre o fusión (fustes)** o **Solo dron**. Por defecto, automático.
* **Añadir los árboles del dron donde no hay terrestre (mixto)**: en una fusión, añade los árboles que solo ve el dron, en los bordes del recorrido del terrestre. Marcada por defecto. No se puede marcar con **Solo dron**.

Ver [Sensores](#sensores-terrestre-dron-o-fusión).

### Salidas

* **Clasificación de los puntos**, **Un objeto por árbol**, **Vectorial con tabla de atributos**, **MDT con objetos** e **Informe (HTML y CSV)**: lo que se genera (ver [Qué genera](#qué-genera)). Si no se marca ninguna, no se puede pulsar **Aceptar**.
* **Carpeta del informe**: dónde se escribe el informe. Vacía: en la carpeta `inventario_forestal` junto a la nube (o junto al proyecto). Solo se activa con el informe marcado.

### Clases LiDAR…, Códigos vector… y Valores por defecto

* **Clases LiDAR…**: la clase de cada componente. **Suelo (entrada)** es la clase de los puntos de suelo de la nube; la herramienta no la cambia. **Fuste**, **Copa** y **Sotobosque** son las clases que se escriben. Las cuatro tienen que ser distintas entre sí.

  | Componente | Por defecto |
  |---|---|
  | Suelo (entrada) | 2 |
  | Fuste | 93 |
  | Copa | 5 |
  | Sotobosque | 3 |

* **Códigos vector…**: el código de cada elemento del vectorial. Ver [Vectorial](#vectorial).
* **Valores por defecto**: vuelve a poner los valores por defecto de los parámetros, los sensores y las salidas. No cambia los archivos (inventario de campo, zonas, ecuaciones y carpeta), ni las clases ni los códigos, que tienen su propio botón en su tabla.

## Sensores: terrestre, dron o fusión

Un escáner terrestre o un SLAM mide muchos puntos en los troncos: casi cada tronco da circunferencias en las rodajas. Un dron mide la copa y muy pocos puntos del tronco. La herramienta busca los árboles de forma distinta en cada caso.

**Qué sensor tiene cada punto.** Se deduce de su tiempo GPS: más de 10⁸ s es el tiempo GPS estándar ajustado, el de un dron; entre 10³ y 10⁸ s es el tiempo de la semana GPS, el de un SLAM o un escáner terrestre; menos, o sin tiempo, sensor desconocido. Un dron grabado con el tiempo de la semana GPS se toma por terrestre. Por eso el modo automático no decide por el tiempo GPS, sino por los datos. El sensor de cada punto sirve para el modo mixto, para el recuento de puntos de cada sensor de la tabla de los árboles y para la marca **sin dron**.

* **Automático (según los datos)**: si los fustes con rodajas son menos de la mitad de los picos de densidad de la franja del fuste (de 2 a 6 m sobre el suelo), la nube se trata como solo dron; si no, como terrestre o fusión.
* **Terrestre o fusión (fustes)**: solo son árboles los fustes con rodajas.
* **Solo dron**: además de los fustes con rodajas, son árboles los picos de densidad de la franja del fuste. Con solo el dron casi ningún fuste da circunferencias, pero sus puntos se juntan alrededor de cada tronco. Las cimas de la copa ayudan a dar a cada árbol su copa. El DAP de todos los árboles se estima por la altura y el diámetro de copa, salvo el de los que tienen una circunferencia medida por un terrestre. Ver [Cimas y modo dron](#cimas-y-modo-dron) y [DAP estimado](#dap-estimado).
* **Modo mixto** (casilla): en una fusión, donde el terrestre apenas pasó (los bordes de su recorrido) los troncos solo se ven de lejos y no dan rodajas, pero el dron les da un pico de densidad. Con el modo mixto, también son árboles los picos de densidad de los puntos del dron que no son de un fuste con rodajas y que tienen pocos puntos del terrestre alrededor (30 puntos por m³ o menos). Su copa crece también desde las cimas, y su DAP se estima. Solo se aplica si hay dos sensores, cada uno con el 5 % o más de los puntos de la franja del fuste, y si el sensor de la copa (el más común a más de 8 m sobre el suelo) es minoría en esa franja, como un dron sobre un SLAM. Si el terrestre domina también la copa (por ejemplo, un escáner terrestre con muchas estaciones), no hay modo mixto.

El apartado **Método** del informe dice qué modo se ha usado.

## Cómo se calcula

### Suelo

Un MDT de celdas de 0,5 m con el punto más bajo de la clase de suelo de cada celda. Las celdas que sobresalen de sus vecinas (el matorral) se quitan, y los huecos se rellenan interpolando. Con él se calcula la altura de cada punto sobre el suelo. Las rodajas y el reparto de los puntos entre los árboles van en altura sobre el suelo, no en cota: así, en ladera, el árbol de arriba no se lleva la copa del de abajo.

### Fustes y DAP

* **Rodajas**: a 0,7, 1, 1,3, 1,6, 2, 2,5, 3, 3,5, 4, 5 y 6 m sobre el suelo, de 10 cm de grueso. En cada una se ajusta una circunferencia robusta a cada grupo de puntos. Vale si tiene 10 puntos o más, un radio de 4 a 60 cm, un error medio cuadrático de 3 cm o menos y cubre un arco de 90° o más. Un grupo de más de 1,2 m no es un fuste (copa, matorral, muro).
* **Fuste**: las circunferencias de rodajas vecinas cuyos centros están a 30 cm o menos se enlazan en un fuste. Un mismo tronco partido en dos porque le faltan rodajas se vuelve a unir.
* **DAP**: el diámetro de UNA circunferencia ajustada a todos los puntos de la banda de 1,30 ± 0,10 m, de todos los sensores juntos. Si no la hay, se toma la mediana de las rodajas.
* **Eje**: la recta de los centros de las rodajas, que da la inclinación del árbol. El eje solo se usa con 4 rodajas o más (con dos o tres, una rodaja falsa lo tuerce) y entre la altura del DAP y la última rodaja; por encima y por debajo, el fuste sigue en vertical.

### Árboles: reparto de los puntos

Los puntos de vegetación se agrupan en vóxeles (del lado del **Vóxel**, en altura sobre el suelo). Cada vóxel va al fuste más cercano por el camino más corto a través de los vóxeles con puntos, empezando en los vóxeles de cada fuste entre 0,5 y 2,5 m sobre el suelo. Así cada árbol se queda con la copa que está unida a su tronco, aunque se toque con la del vecino.

**Altura**: la del quinto punto más alto del árbol sobre el suelo (quita los puntos sueltos). Ese punto es la **cima**.

### Cimas y modo dron

Con solo el dron hay pocos puntos del fuste entre la franja del tronco y la copa, y un árbol cuyo tronco no llega a su copa se quedaría sin ella. Por eso, en el modo solo dron y en el mixto, las cimas del modelo de alturas de la vegetación también reparten: cada cima da su metro más alto al fuste más cercano en planta, a 3 m o menos (la cima no está justo encima del pie). Si un fuste se queda sin ninguna cima (la suya cae más cerca del pie de al lado), se queda con la más cercana de un fuste que tenga dos o más.

### Componentes: fuste, copa y sotobosque

* **Base de la copa**: desde 1,30 m, la primera de tres bandas seguidas de 0,5 m con una cuarta parte o más de sus puntos fuera del fuste. Si no se encuentra, se toma 2 m.
* **Fuste**: por debajo de la base de la copa, los puntos a menos de 10 cm del tronco.
* **Sotobosque**: por debajo de la base de la copa, los puntos alejados del tronco (más de 1 m más allá de su radio). No forman parte del árbol.
* **Copa**: el resto.

**Fuste seguido dentro de la copa.** El tronco sigue dentro de la copa por encima de su base. Desde la rodaja más alta se sube de 0,5 en 0,5 m buscando la circunferencia del tronco entre los puntos del árbol, en la dirección del eje y sin que pase del grosor del DAP. El seguimiento se para tras tres alturas seguidas sin circunferencia. Con él, el componente fuste sube hasta la última circunferencia encontrada, también dentro de la copa. El fuste seguido no cambia el eje ni el DAP; en la curva de perfil solo se usa hasta el 60 % de la altura.

### Copa

* **En planta**: la envolvente convexa de los puntos de la copa. De ella salen el área, el diámetro del círculo de la misma área y las extensiones norte-sur y este-oeste.
* **En 3D**: una malla por franjas de 1 m desde la base de la copa hasta la cima, con el alcance de los puntos en 16 sectores. De ella sale el volumen de copa. Es el volumen de lo que se ve: con pocos puntos se queda corto, y con menos de 10 puntos de copa no se calcula.

### Curva de perfil y volumen geométrico

La **curva de perfil** es el diámetro del fuste a cada altura: el de las rodajas, el DAP a 1,30 m y, encima, el de las circunferencias del fuste seguido hasta el 60 % de la altura (más arriba no son fiables: el seguimiento se queda en un verticilo o en el ruido de la copa). Por encima de 1,30 m el diámetro nunca es mayor que el DAP ni crece con la altura: así se quitan los verticilos y las ramas.

El **volumen geométrico** del fuste, con corteza, es el de un cilindro desde el suelo hasta la primera rodaja, troncos de cono entre los diámetros medidos y, desde el último diámetro medido hasta la cima, la forma

d = d<sub>u</sub>·((H − h)/(H − h<sub>u</sub>))<sup>0,75</sup>

con d<sub>u</sub> y h<sub>u</sub> el último diámetro medido y su altura, y H la altura del árbol. Con exponente 1 sería un cono; con 0,75, el volumen cuadra con el de las tarifas.

### Volumen por especie

El volumen con corteza de cada árbol por la ecuación de su especie (tarifa de doble entrada):

V (m³) = factor·(a + b·d<sup>c</sup>·h<sup>e</sup>)

con d el DAP (en mm o en cm) y h la altura total en m.

**De fábrica**, las tarifas de volumen con corteza del IFN IV de Lugo (Vcc en dm³ = a + b·Dn²·Ht, con Dn en mm) para *Pinus sylvestris*, *Pinus pinaster*, *Pinus radiata* y *Eucalyptus nitens*. Para *Pinus nigra*, que no tiene tarifa publicada en Galicia, se usa la de *P. sylvestris*, marcada como **aproximada** (es lo que hace el IFN: la de una especie próxima de la misma provincia).

**La especie de cada árbol** es la del pie de campo emparejado o, si no lo tiene, la del cuadro de diálogo. Casa con una ecuación si uno de los dos nombres contiene al otro, sin distinguir mayúsculas («Sylvestris» casa con «Pinus sylvestris»), y entonces el árbol toma el nombre de la ecuación. Si no casa con ninguna, el árbol no tiene volumen por especie (marca **sin tarifa**). Revise la ortografía de las especies del campo: una errata deja el árbol sin tarifa.

**Ecuaciones propias**: un .csv con separador `;` (o `,`) y esta cabecera:

```
especie;a;b;c;e;unidad_d;factor;aproximada;fuente
```

Son obligatorias `especie`, `a` y `b`. Si faltan, `c` vale 2, `e` vale 1, `unidad_d` vale `mm` (o `cm`), `factor` vale 0,001 (de dm³ a m³) y `aproximada` vale 0 (1 marca el volumen como aproximado). `fuente` es un texto que sale en el informe. Se usa la primera ecuación que casa con la especie.

### DAP estimado

Cuando no hay una circunferencia fiable del DAP (los árboles de un pico de densidad y, en el modo solo dron, los de circunferencia del dron, que el ruido agranda), el DAP se estima por la altura total H y el diámetro de copa Dc, en m:

DAP (cm) = a + b·H + c·Dc

o, sin copa, a1 + b1·H. La relación de fábrica es una genérica, ajustada en el marteloscopio de Riomao (Lugo; *P. sylvestris* y *P. nigra*). Con el DAP estimado, la curva de perfil es un cilindro hasta 1,30 m y la forma de 0,75 hasta la cima. Estos árboles llevan la marca **DAP estimado**, y en el informe su DAP sale con `~`.

### Parámetros de la masa

Por zona y en total, solo con los árboles que cuentan (no los dudosos):

* **Pies/ha**, **área basimétrica** (m²/ha), **DAP medio** y **diámetro medio cuadrático** (Dg).
* **Altura media**, **altura de Lorey** (la media pesada por el área basimétrica) y **altura dominante de Assmann** (H0: la altura media de los 100 pies más gruesos por hectárea).
* **Volumen geométrico** y **volumen por especie** por hectárea (este, con los árboles que tienen ecuación).
* **Fracción de cabida cubierta** (FCC): la parte de la superficie cubierta por las copas en planta, en celdas de 25 cm.
* **Índice de Hart-Becking** en marco real: 100·√(10000/N)/H0, con N los pies por hectárea.
* **Área de copa media**, los pies y el área basimétrica de cada **especie**, y las **clases diamétricas** de 5 cm, centradas en su valor (la de 10 va de 7,5 a 12,5 cm).

**Superficie**: la de las zonas o, sin zonas, la de las celdas de 1 m con puntos.

## Las salidas en detalle

### Clasificación de los puntos

Los puntos de cada árbol toman la clase de su componente (fuste, copa o sotobosque). Los demás puntos conservan su clase: el suelo, los que están a menos de 0,3 m sobre él y la vegetación que no llega a ningún árbol.

### Un objeto por árbol

Los puntos de cada árbol (fuste y copa) forman un objeto de nube, en el mismo orden que los números de los árboles. Así cada punto queda ligado a su árbol. Los objetos se ven y se editan con las herramientas de [Editar objetos](../editar-objetos/README.md) y se guardan con la nube.

### Vectorial

Un dibujo nuevo con, de cada árbol:

| Elemento | Código por defecto | Qué es |
|---|---|---|
| Pie del árbol | TRONCO | Un punto en el eje del fuste a ras de suelo. |
| Sección del DAP | SECTRO | La circunferencia del DAP, a 1,30 m sobre el suelo. |
| Eje del árbol | EJEARB | Una línea del pie a la cima. |
| Copa en planta | COPA | La envolvente convexa de la copa, a la cota de la base de la copa (sin base, a la del suelo). |
| Cima | CIMA | Un punto en la cima. |
| Número del árbol | ETQARB | Un texto de 0,5 m junto al pie. |
| Árbol dudoso | ARBDUD | De los árboles dudosos, solo el pie (con este código) y el número. |
| Contorno de las zonas | ZONAIF | El polígono de cada zona, sobre el suelo (con un vértice cada 0,5 m a lo largo de cada lado, para que siga el terreno). |

Los códigos se cambian en **Códigos vector…**.

Todos los elementos de un árbol están enlazados con su fila de la **tabla de atributos de los árboles**, que va con el dibujo. Sus campos son los mismos que los del CSV de árboles:

| Campo | Contenido |
|---|---|
| NUMERO | Número del árbol, desde 1. |
| ESPECIE | Especie (la del pie de campo, la de por omisión o el nombre de la ecuación que casa). |
| X, Y, Z | Pie del árbol. |
| DAP_CM | DAP en cm. |
| DAP_MEDIDO | 1 si el DAP es el de la circunferencia de la banda de 1,30 m. |
| DAP_ESTIM | 1 si el DAP es estimado. Con los dos a 0, el DAP es la mediana de las rodajas. |
| ALTURA | Altura en m. |
| BASE_COPA | Altura de la base de la copa en m (vacía si no se encontró). |
| DCOPA_NS, DCOPA_EO | Extensión de la copa norte-sur y este-oeste, en m. |
| DCOPA | Diámetro del círculo de la misma área que la copa, en m. |
| AREA_COPA | Área de la copa en planta, en m². |
| VOL_COPA | Volumen de copa, en m³. |
| AB_M2 | Área basimétrica, en m². |
| ESBELTEZ | Altura / DAP (los dos en m). |
| INCLIN | Inclinación del fuste respecto de la vertical, en grados. |
| VOL_GEO | Volumen geométrico del fuste, en m³. |
| VOL_ESP | Volumen por especie, en m³. |
| ZONA | Zona que contiene el pie. |
| PIE_CAMPO | Identificador del pie de campo emparejado. |
| X_CIMA, Y_CIMA, Z_CIMA | Cima del árbol. |
| PTS_DRON, PTS_TERR, PTS_OTROS | Puntos del árbol de cada sensor. |
| DUDOSO | 1 si el árbol es dudoso. |
| BORDE | 1 si el árbol llega al borde de los datos. |
| SIN_DRON | 1 si el árbol no tiene puntos del dron. |
| TARIFA | `ok`, `aprox` (ecuación aproximada) o `sin` (sin ecuación). |

### MDT con objetos

Un modelo digital nuevo con:

* **El suelo**: la triangulación del MDT de 0,5 m de la herramienta, donde hay datos.
* **Un objeto por árbol** con dos mallas: el fuste (un tronco de 12 lados con la curva de perfil, desde 0,3 m bajo el suelo hasta la cima) y la copa (la malla por franjas). Cada objeto está enlazado con su fila de la tabla de los árboles, que va con el modelo, y lleva como área la de la copa y como volumen la suma del volumen de copa y del volumen geométrico del fuste.

### Informe

En la carpeta elegida o, si está vacía, en la carpeta `inventario_forestal` junto a la nube o al proyecto (se crea si no existe). Los archivos se llaman como la nube o el proyecto, con estas terminaciones:

| Archivo | Contenido |
|---|---|
| `_inventario.html` | La página del informe. Se abre en el navegador al terminar. |
| `_inventario_arboles.csv` | Un árbol por línea, con los campos de la tabla de atributos. |
| `_inventario_masa.csv` | Los parámetros de la masa, por zona y en total. |
| `_inventario_especies.csv` | Pies y área basimétrica por especie, por zona. |
| `_inventario_clases.csv` | Las clases diamétricas, por zona. |
| `_inventario_campo.csv` | Con inventario de campo: cada pie con su árbol (`acierto`, `omision` o `fuera`, si está fuera de las zonas) y los árboles sin pie (`comision`). |

Los CSV usan punto y coma como separador, punto decimal y UTF-8.

La página tiene: un resumen (árboles, superficie, pies/ha, área basimétrica, Dg, H0, volumen geométrico y FCC), los parámetros de la masa por zona, las especies, la distribución diamétrica, un diagrama de altura y diámetro, un plano con las copas y los pies (al pasar el ratón por encima, los datos de cada árbol), la comparación con el inventario de campo, la tabla de los árboles con sus marcas y el método, con las ecuaciones usadas.

Si la nube no está guardada en disco y no se ha elegido carpeta, el informe no se escribe y se avisa.

### El inventario de campo

**Un .shp** (o cualquier archivo de puntos que lea MDTopX): cada punto es un pie. La especie sale del **Campo de la especie** de su tabla .dbf; el identificador del pie es su número de registro.

**Un .csv** con cabecera y separador `;` (o `,`): las columnas se reconocen por su nombre, sin distinguir mayúsculas. `x` e `y` son obligatorias; `especie`, `dap` (en cm), `altura` (en m) e `id` son opcionales. Por ejemplo:

```
x;y;especie;dap;altura;id
612345,20;4765432,10;Pinus sylvestris;32,5;19,4;101
```

**Emparejamiento.** Un pie y un árbol se emparejan si están a 1,5 m o menos, de más cerca a más lejos y uno con uno. Antes se calcula y se quita el desplazamiento entre el campo y la nube de cada zona (la mediana de los emparejados, en varias pasadas): las posiciones de campo suelen tener un desplazamiento distinto en cada parcela. Los árboles emparejados toman la especie del pie.

El informe da, por zona y en total:

* **Aciertos**: pies con árbol. **Omisiones**: pies sin árbol.
* **Comisiones**: árboles que cuentan, dentro de las zonas (sin zonas, dentro de la envolvente de los pies de campo), sin pie de campo.
* **Detección**: aciertos / pies. **Precisión**: aciertos / (aciertos + comisiones).
* El desplazamiento campo-nube de cada zona y la distancia mediana entre pie y árbol.
* Si el campo tiene DAP o altura, la diferencia nube − campo (mediana y error cuadrático medio).

Con zonas, solo se evalúan los pies que están dentro de alguna zona.

## Marcas de calidad de cada árbol

Cada árbol lleva unas marcas, en la tabla de los árboles del informe y en la tabla de atributos:

| Marca | Significado |
|---|---|
| DAP medido | El DAP es el de la circunferencia de la banda de 1,30 m. Es el caso normal; no sale en la columna de marcas del informe. |
| DAP de las rodajas | No hubo circunferencia en la banda de 1,30 m: el DAP es la mediana de las rodajas. En el informe, el DAP sale con `*`. |
| DAP estimado | El DAP sale de la altura y la copa, no de una medida. En el informe, con `~`. |
| Dudoso | Más bajo que la altura mínima de árbol. No cuenta en la masa. |
| Borde | El pie o la copa llega al borde de los datos (a 1 m o menos de una zona sin puntos): el árbol puede estar cortado. |
| Sin dron | Con sensores conocidos, el árbol no tiene ningún punto del dron: su altura puede quedarse corta (un terrestre no suele ver la cima). |
| Tarifa aproximada | El volumen por especie es de una ecuación aproximada (de otra especie u otra región). |
| Sin tarifa | No hay ecuación para su especie, o no tiene especie. |

## Resultados en un caso real

En el marteloscopio de Riomao (Lugo; *P. sylvestris* y *P. nigra*), con un dron y un SLAM:

* Con solo el dron, la circunferencia del DAP sale de mediana 7,7 cm mayor por el ruido. Por eso en el modo solo dron el DAP se estima. La relación de fábrica tiene un error cuadrático medio de 4,9 cm (5,6 cm solo con la altura).
* El volumen geométrico queda cerca del de las tarifas: con solo el dron, 358 m³/ha frente a 356; con la fusión, 398 m³/ha frente a 367.
* El fuste seguido dentro de la copa llega a 12 m de mediana; sin él, la base de la copa cortaba el fuste a 8,7 m.
* En la fusión, el modo mixto recupera 47 de los 58 árboles que el dron veía fuera de la zona bien cubierta por el SLAM.

## Limitaciones

* Hace falta el suelo clasificado.
* Todo lo que no es suelo cuenta como vegetación (ver [Antes de empezar](#antes-de-empezar)).
* Procesa la nube entera. En un proyecto, los puntos de todos los archivos elegidos tienen que caber a la vez en la memoria.
* La especie solo sale del inventario de campo o de la especie por omisión; no se deduce de la nube.
* La relación del DAP estimado es una genérica, ajustada en una masa de pinos. En otras masas o especies puede tener sesgo, y no se puede cambiar desde el cuadro de diálogo.
* El fuste seguido se para si el tronco se aparta más de unos 11° de la dirección del eje. Con un tronco con pocos puntos dentro de una copa densa, puede seguir unas pocas circunferencias falsas. Solo afecta a la clase de los puntos y a la curva de perfil.
* El reparto de las cimas a los fustes sin cima depende del orden de los fustes. Un árbol falso bajo (una mata con pico de densidad) puede recibir una cima y llevarse parte de la copa de un vecino que tenga dos abultamientos.
* El emparejamiento con el campo empareja primero lo más cercano; no busca el mejor emparejamiento global. Un pie junto al límite de una zona recibe el desplazamiento de su zona aunque su árbol esté en la vecina.
* El volumen de copa es el de lo que se ve: con pocos puntos se queda corto.
* Las columnas de puntos por sensor y la marca **sin dron** dependen del tiempo GPS: un dron con el tiempo de la semana GPS cuenta como terrestre.
* El informe y los CSV se escriben en español.
