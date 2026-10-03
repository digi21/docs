# Tipos de geometría en los parámetros de las órdenes

Algunas órdenes reciben un parámetro con letras. Cada letra indica un tipo de geometría al que afecta la orden: por ejemplo, `ON_TIPO=020101 LP` activa las líneas y los puntos del código `020101`.

Las mayúsculas y las minúsculas son equivalentes. La orden ignora los caracteres que no reconoce.

## Letras

Todas las órdenes dan el mismo significado a cada letra:

| Letra | Tipo de geometría |
| :--- | :--- |
| `L` | Líneas |
| `P` | Puntos y complejos puntuales |
| `C` | Líneas, puntos y complejos puntuales |
| `T` | Textos |
| `H` | Polígonos |
| `G` | Complejos |
| `B` | Imágenes \(bitmaps\) |
| `*` | Todos los tipos de la tabla |

`C` agrupa las líneas y los puntos porque en los archivos `.bin` clásicos ambos tipos se guardan con la misma cabecera `C=código`: una entidad con un vértice es un punto y una con más vértices es una línea.

Un complejo puntual es un complejo con un punto de inserción, como los que crea [INS\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md) o las celdas de los archivos DGN. Las órdenes lo tratan como un punto: `P` lo incluye y `G` no.

Una orden que no puede tratar un tipo de geometría ignora su letra. La sección «Particularidades de cada orden» de esta página indica esos casos y las letras propias de cada orden.

## Formas de escribir el parámetro

Según la orden, las letras se escriben de una de estas formas:

* **Cadena de letras en un solo parámetro.** Ejemplo: `RENOMCOD=020101 020102 LP`.
* **Letras en uno o varios parámetros.** Ejemplo: `COPIAR=L P` equivale a `COPIAR=LP`.
* **Pares «código tipo».** El primer elemento del par es un código y el segundo una cadena de letras. Ejemplo: `BORRA_COD=020101 L 030201 PT`. Un código que empieza por `#` representa todos los códigos de la tabla de códigos que tienen esa etiqueta. Si el último código no tiene tipo, la orden lo ignora.

## Particularidades de cada orden

### TENTATIVO

* `*` **no** selecciona todos los tipos: limita la búsqueda a las geometrías del archivo de dibujo activo.
* `@`: si la variable [IR\_TENTATIVO](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) está activa, la vista se desplaza al punto del tentativo.
* `-`: solo geometrías borradas. Además, la variable [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) tiene que estar activa.
* Las geometrías de otros tipos, como los multipuntos, no se filtran por letra.

Muchas órdenes interactivas ejecutan TENTATIVO internamente con una cadena fija, por ejemplo `L*@` para seleccionar solo líneas del archivo de dibujo activo.

### BORRA\_COD y RECUPERA\_COD

`B` no tiene efecto: estas órdenes no tratan imágenes.

### PROYECTA\_COD, PROYECTA\_COD\_ETIQUETA y PROYECTA\_POR\_CONDICION

* `B` no tiene efecto.
* En los complejos puntuales, la orden proyecta las entidades que contienen y el punto de inserción.

### RENOMCOD

`*` incluye todos los tipos de geometría, también los que no tienen letra, como los objetos OLE.

### ON\_TIPO, OFF\_TIPO, ONS\_TIPO, OFFS\_TIPO, OND\_TIPO y OFFD\_TIPO

* `P` incluye también los puntos orientados y los multipuntos.
* `*` incluye todos los tipos de geometría, también los que no tienen letra, como los círculos y los objetos OLE.
* ON\_TIPO, ONS\_TIPO y OND\_TIPO muestran los tipos indicados. OFF\_TIPO, OFFS\_TIPO y OFFD\_TIPO los ocultan. Las geometrías de los demás tipos conservan su estado.

### COPIAR, COPIA2P, COPIA\_R, DUP, DUPLICA, MOVER y MOVER\_Z

Si ningún parámetro contiene una letra reconocida, la orden no permite seleccionar entidades de ninguno de los tipos de la tabla.

Sin parámetros, cada orden permite seleccionar estos tipos:

| Orden | Tipos que se pueden seleccionar sin parámetros |
| :--- | :--- |
| COPIAR, COPIA2P, COPIA\_R | Líneas, puntos, textos, imágenes, polígonos y complejos |
| DUP | Líneas, puntos, textos y polígonos |
| DUPLICA | Líneas, puntos y textos |
| MOVER, MOVER\_Z | Líneas, puntos, textos, imágenes, polígonos y complejos, solo del archivo de dibujo activo |

### MOVER\_Z\_V

* `B` no tiene efecto: la orden no trata imágenes.
* Un complejo puntual se modifica si su punto de inserción queda dentro del límite.

### SELECCIONA\_ULTIMO

* La orden solo lee el primer carácter de cada parámetro. Para indicar varios tipos, escribe una letra por parámetro: `SELECCIONA_ULTIMO=L P`.
* `O` indica objetos OLE. `*` incluye también los objetos OLE.

Sin parámetros, la orden busca entidades de todos los tipos de la lista.

### CAMB\_AA

Solo los puntos y los textos tienen ángulo. `P` y `C` indican puntos, `T` textos y `*` puntos y textos. Las demás letras no tienen efecto.

`P` no incluye los complejos puntuales: cambiar su ángulo no gira las entidades que contienen.

## Órdenes que usan estas letras

| Orden | Forma del parámetro | Letras con efecto |
| :--- | :--- | :--- |
| TENTATIVO | Cadena de letras | `L` `P` `C` `T` `H` `G` `B` `*` `@` `-` |
| [BORRA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `*` |
| [RECUPERA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera-cod.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `*` |
| [ON\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `B` `*` |
| [OFF\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `B` `*` |
| [ONS\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-tipo.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `B` `*` |
| [OFFS\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-tipo.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `B` `*` |
| [OND\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `B` `*` |
| [OFFD\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `B` `*` |
| [PROYECTA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md) | Pares «código tipo» | `L` `P` `C` `T` `H` `G` `*` |
| [PROYECTA\_COD\_ETIQUETA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md) | Pares «código tipo» a partir del segundo parámetro | `L` `P` `C` `T` `H` `G` `*` |
| [PROYECTA\_POR\_CONDICION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md) | Pares «código tipo» a partir del tercer parámetro | `L` `P` `C` `T` `H` `G` `*` |
| [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md) | Cadena de letras en el tercer parámetro | `L` `P` `C` `T` `H` `G` `B` `*` |
| [COPIAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md) | Letras en uno o varios parámetros | `L` `P` `C` `T` `H` `G` `B` `*` |
| [COPIA2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md) | Letras en uno o varios parámetros | `L` `P` `C` `T` `H` `G` `B` `*` |
| [COPIA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md) | Letras en uno o varios parámetros | `L` `P` `C` `T` `H` `G` `B` `*` |
| [DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md) | Letras en uno o varios parámetros | `L` `P` `C` `T` `H` `G` `B` `*` |
| [DUPLICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md) | Letras en uno o varios parámetros | `L` `P` `C` `T` `H` `G` `B` `*` |
| [MOVER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover.md) | Letras en uno o varios parámetros | `L` `P` `C` `T` `H` `G` `B` `*` |
| [MOVER\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md) | Letras en uno o varios parámetros | `L` `P` `C` `T` `H` `G` `B` `*` |
| [MOVER\_Z\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z-v.md) | Cadena de letras | `L` `P` `C` `T` `H` `G` `*` |
| [SELECCIONA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md) | Una letra por parámetro | `L` `P` `C` `T` `H` `G` `B` `O` `*` |
| [CAMB\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md) | Cadena de letras en el segundo parámetro | `P` `C` `T` `*` |
