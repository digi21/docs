# Tipos de geometría en los parámetros de las órdenes

Algunas órdenes reciben un parámetro con letras. Cada letra indica un tipo de geometría al que afecta la orden: por ejemplo, `ON_TIPO=020101 LP` activa las líneas y los puntos del código `020101`.

Las mayúsculas y las minúsculas son equivalentes. La orden ignora los caracteres que no reconoce.

## Letras

La tabla siguiente indica el significado general de cada letra. El significado exacto depende de la orden: consulta la sección «Órdenes en las que las letras significan otra cosa» de esta página.

| Letra | Tipo de geometría |
| :--- | :--- |
| `L` | Líneas |
| `P` | Puntos |
| `T` | Textos |
| `C` | Complejos |
| `H` | Polígonos |
| `B` | Imágenes \(bitmaps\) |
| `*` | Todos los tipos de la tabla |

## Formas de escribir el parámetro

Según la orden, las letras se escriben de una de estas formas:

* **Cadena de letras en un solo parámetro.** Ejemplo: `RENOMCOD=020101 020102 LP`.
* **Una letra por parámetro**, separadas por espacios. Ejemplo: `COPIAR=L P`. En estas órdenes, un parámetro con varias letras, como `LP`, no se reconoce.
* **Pares «código tipo».** El primer elemento del par es un código y el segundo una cadena de letras. Ejemplo: `BORRA_COD=020101 L 030201 PT`. Un código que empieza por `#` representa todos los códigos de la tabla de códigos que tienen esa etiqueta. Si el último código no tiene tipo, la orden lo ignora.

## Órdenes en las que las letras significan otra cosa

### TENTATIVO

El parámetro es una cadena de letras.

| Carácter | Significado |
| :--- | :--- |
| `L` | Líneas |
| `P` | Puntos y complejos puntuales |
| `T` | Textos |
| `C` | Complejos |
| `H` | Polígonos |
| `B` | Imágenes |
| `*` | Solo geometrías del archivo de dibujo activo. No selecciona todos los tipos |
| `@` | Si la variable [IR\_TENTATIVO](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) está activa, la vista se desplaza al punto del tentativo |
| `-` | Solo geometrías borradas. Además, la variable [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) tiene que estar activa |

Las geometrías de otros tipos, como los multipuntos, no se filtran por letra.

Muchas órdenes interactivas ejecutan TENTATIVO internamente con una cadena fija, por ejemplo `L*@` para seleccionar solo líneas del archivo de dibujo activo.

### BORRA\_COD y RECUPERA\_COD

* `P` incluye los puntos y los complejos puntuales.
* `B` no tiene efecto: estas órdenes no tratan imágenes.

### PROYECTA\_COD, PROYECTA\_COD\_ETIQUETA y PROYECTA\_POR\_CONDICION

* `P` solo incluye los puntos. Los complejos puntuales no se proyectan.
* `B` no tiene efecto.

### RENOMCOD

* Solo tienen efecto `L`, `P` \(solo puntos\) y `T`.
* `C`, `H` y `B` no tienen efecto.
* `*` equivale a líneas, puntos y textos.

### ON\_TIPO, OFF\_TIPO, ONS\_TIPO, OFFS\_TIPO, OND\_TIPO y OFFD\_TIPO

* `P` incluye los puntos, los complejos puntuales, los puntos orientados y los multipuntos.
* `*` incluye todos los tipos de geometría, también los que no tienen letra, como los círculos y los objetos OLE.
* ON\_TIPO, ONS\_TIPO y OND\_TIPO muestran los tipos indicados. OFF\_TIPO, OFFS\_TIPO y OFFD\_TIPO los ocultan. Las geometrías de los demás tipos conservan su estado.

### COPIAR, COPIA2P, COPIA\_R, DUP, DUPLICA, MOVER y MOVER\_Z

El parámetro es una letra por parámetro.

| Letra | Tipo de geometría |
| :--- | :--- |
| `L` | Líneas |
| `P` | Puntos y complejos puntuales |
| `T` | Textos |
| `H` | Polígonos |
| `B` | Imágenes |
| `C` | **Líneas y puntos**, no complejos |
| `*` | Líneas, puntos, textos e imágenes. No incluye polígonos ni complejos. La orden ignora los parámetros que siguen a `*` |

Con parámetros no se pueden seleccionar complejos. Si ningún parámetro es una letra reconocida, la orden no permite seleccionar entidades de ninguno de estos tipos.

Sin parámetros, cada orden permite seleccionar estos tipos:

| Orden | Tipos que se pueden seleccionar sin parámetros |
| :--- | :--- |
| COPIAR, COPIA2P, COPIA\_R | Líneas, puntos, textos, imágenes, polígonos y complejos |
| DUP | Líneas, puntos, textos y polígonos |
| DUPLICA | Líneas, puntos y textos |
| MOVER, MOVER\_Z | Líneas, puntos, textos, imágenes, polígonos y complejos, solo del archivo de dibujo activo |

### MOVER\_Z\_V

El parámetro es una cadena de letras.

* Solo tienen efecto `L`, `P` \(solo puntos\) y `T`.
* `C` equivale a líneas y puntos.
* `*` equivale a líneas, puntos y textos.
* `H` y `B` no tienen efecto.

### SELECCIONA\_ULTIMO

El parámetro es una letra por parámetro. La orden solo lee el primer carácter de cada parámetro.

* `P` solo incluye los puntos.
* `C` son complejos y `B` imágenes.
* `O` indica objetos OLE.
* `*` no tiene efecto.

Sin parámetros, la orden busca entidades de todos los tipos de la lista.

### CAMB\_AA

El segundo parámetro es una cadena de letras. Solo tienen efecto `P` \(puntos\), `T` \(textos\) y `*` \(puntos y textos\).

## Órdenes que usan estas letras

| Orden | Forma del parámetro | Letras que admite |
| :--- | :--- | :--- |
| TENTATIVO | Cadena de letras | `L` `P` `T` `C` `H` `B` `*` `@` `-` |
| [BORRA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `*` |
| [RECUPERA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera-cod.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `*` |
| [ON\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `B` `*` |
| [OFF\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `B` `*` |
| [ONS\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-tipo.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `B` `*` |
| [OFFS\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-tipo.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `B` `*` |
| [OND\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `B` `*` |
| [OFFD\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `B` `*` |
| [PROYECTA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md) | Pares «código tipo» | `L` `P` `T` `C` `H` `*` |
| [PROYECTA\_COD\_ETIQUETA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md) | Pares «código tipo» a partir del segundo parámetro | `L` `P` `T` `C` `H` `*` |
| [PROYECTA\_POR\_CONDICION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md) | Pares «código tipo» a partir del tercer parámetro | `L` `P` `T` `C` `H` `*` |
| [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md) | Cadena de letras en el tercer parámetro | `L` `P` `T` `*` |
| [COPIAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md) | Una letra por parámetro | `L` `P` `T` `C` `H` `B` `*` |
| [COPIA2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md) | Una letra por parámetro | `L` `P` `T` `C` `H` `B` `*` |
| [COPIA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md) | Una letra por parámetro | `L` `P` `T` `C` `H` `B` `*` |
| [DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md) | Una letra por parámetro | `L` `P` `T` `C` `H` `B` `*` |
| [DUPLICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md) | Una letra por parámetro | `L` `P` `T` `C` `H` `B` `*` |
| [MOVER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover.md) | Una letra por parámetro | `L` `P` `T` `C` `H` `B` `*` |
| [MOVER\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md) | Una letra por parámetro | `L` `P` `T` `C` `H` `B` `*` |
| [MOVER\_Z\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z-v.md) | Cadena de letras | `L` `P` `T` `C` `*` |
| [SELECCIONA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md) | Una letra por parámetro | `L` `P` `T` `C` `H` `B` `O` |
| [CAMB\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md) | Cadena de letras en el segundo parámetro | `P` `T` `*` |
