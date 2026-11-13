# Ajustar geometría de eje
<!-- id: ajustar-geometria-de-eje -->

[FFCC](./)

Ajusta la geometría de las líneas de eje de un dibujo y la escribe como un trazado. En planta ajusta rectas, clotoides y curvas circulares; en alzado, rasantes unidas por acuerdos parabólicos. Por ejemplo, sirve con los ejes de las vías que genera la Vectorial FFCC.

Sirve para vías de ferrocarril y de metro y para carreteras. En ferrocarril y en metro, si el dibujo tiene los carriles, la rasante va en el hilo bajo y cada vía lleva su sección tipo y su peralte.

El mismo ajuste, con los mismos parámetros, lo hace la Clasificación FFCC cuando se marca **Trazado con su geometría y sección tipo (.VIA)**. Ver [Desde la Clasificación FFCC](#desde-la-clasificación-ffcc).

## Cómo se usa

Abra el dibujo con las líneas de eje. En la cinta **MMS**, grupo **FFCC**, pulse **Ajustar geometría de eje**. Rellene el cuadro de diálogo y pulse **Aceptar**.

Se ajustan las líneas con el código indicado que tengan 20 vértices o más y midan 100 m o más. El ajuste toma los vértices de la línea como medidas. Por eso la línea tiene que ser un eje medido, con vértices densos (por ejemplo, uno por metro), y no una polilínea dibujada con pocos vértices.

## Qué genera

* **Un trazado**: un documento de viales nuevo, sin guardar, llamado *Trazado de …*. Tiene un vial por línea ajustada, con el código de las líneas y un número (*EJEVIA 1*, *EJEVIA 2*…; con el código vacío, *EJE 1*, *EJE 2*…). Cada vial lleva:
  * la planta: rectas, clotoides y curvas circulares;
  * el alzado: rasantes y acuerdos parabólicos, cada uno con su Kv;
  * el tipo de vía (carretera, ferrocarril o metro);
  * en ferrocarril y en metro, con los carriles: la sección tipo, con el ancho de vía, y el peralte de las curvas medido en los carriles;
  * los perfiles transversales y el longitudinal. Ver [Perfiles de las vías](#perfiles-de-las-vías).
* **El informe del trazado** (opcional): una página HTML con cada parámetro, su precisión y la bondad del ajuste. Se abre en el navegador al acabar. Se escribe junto al dibujo, con el nombre *&lt;dibujo&gt; informe del trazado.html*. Si el dibujo no se ha guardado nunca, va a la carpeta temporal. Ver [Informe del trazado](informe-del-trazado.md).
* **Un resumen** en la ventana de información: el número de ejes, de curvas (cuántas con clotoide) y de acuerdos, y la diferencia máxima entre el trazado escrito y el calculado, en planta y en la rasante. Esa diferencia comprueba que el trazado reproduce el cálculo y tiene que ser muy pequeña. También dice cuántos perfiles transversales se han hecho y con qué hilos, y qué ejes no se han podido ajustar y por qué.

Para guardar el trazado, guarde el documento de viales como un archivo .VIA.

## El cuadro de diálogo

Al cambiar el **Tipo de vía**, los límites toman los valores por defecto de ese tipo. Los números se pueden escribir con coma o con punto decimal.

| Campo | Carretera | Ferrocarril | Metro | Significado |
|---|---|---|---|---|
| Código de las líneas de eje | EJEVIA | EJEVIA | EJEVIA | Las líneas que se ajustan. Vacío: todas las líneas del dibujo. |
| Radio mínimo (m) | 50 | 175 | 100 | Ninguna curva sale con un radio menor. Una curva que se queda en este límite sale resaltada en el informe. |
| Radio máximo; por encima, recta (m) | 20.000 | 20.000 | 20.000 | Una curva de radio mayor es una recta. Tiene que ser, como poco, el doble del radio mínimo. |
| Giro mínimo (gon) | 0,25 | 0,25 | 0,25 | Si el ángulo entre dos alineaciones es menor, no hay curva entre ellas. |
| Desarrollo mínimo de la curva (m) | 20 | 20 | 20 | La longitud mínima de la curva entera, clotoides y arco. |
| Kv mínimo (m) | 150 | 1.500 | 500 | Ningún acuerdo sale con un Kv menor. Si uno se queda en este límite, el informe lo avisa. |
| Kv máximo; por encima, rasante (m) | 50.000 | 50.000 | 50.000 | Un acuerdo de Kv mayor no es un acuerdo: las dos rasantes son una sola. Tiene que ser, como poco, el doble del Kv mínimo. |
| Diferencia mínima de pendientes (por mil) | 0,3 | 0,3 | 0,3 | Si dos rasantes contiguas difieren menos, no hay cambio de rasante. |
| Ondulación admisible de la vía (mm) | 25 | 15 | 15 | Una vía real ondula sobre su rasante. Las ondulaciones de este tamaño no se toman como cambios de rasante. |
| Código de los carriles, para el hilo bajo | RAILES | RAILES | RAILES | Las líneas de los carriles. Con ellas, la rasante va en el hilo bajo (en una curva, el carril de dentro, con el peralte medido) y se miden la sección tipo y el peralte. Vacío: la rasante va en el eje. En carretera no se usa. |
| Anchos de vía nominales, por orden de preferencia (m) | 1,668; 1,435; 1,000 | 1,668; 1,435; 1,000 | 1,445; 1,435; 1,000 | Los anchos de vía posibles, separados por punto y coma, entre 0,5 y 2,5 m. Cada tramo toma el primero de la lista que encaja con el ancho medido. Un ancho de 1,435 y otro de 1,445 están más cerca que el error de la medida, y por eso importa el orden. |
| Longitud mínima de un túnel; más corto, paso superior (m) | 20 | 20 | 20 | Solo se usa en el trazado de la Clasificación FFCC, que mide los túneles en la nube. Un tramo cubierto más corto es un paso superior y no un túnel. |

* **Añadir también el ajuste anterior, para comparar**: añade al trazado, por cada eje, otro vial con el ajuste del método anterior de MDTopX, llamado *&lt;eje&gt; (ajuste anterior)*.
* **Informe de resultados**: escribe el [informe del trazado](informe-del-trazado.md) y lo abre en el navegador. Marcado por defecto.

Los valores del cuadro de diálogo se guardan para la próxima vez. Son los mismos que los del botón **Parámetros…** de la Clasificación FFCC.

## Cómo se ajusta

* **Planta**: el ajuste busca el número de alineaciones que mejor explica el eje, sin dar por buena una curva o una clotoide que el ruido del eje ya explica. Las clotoides de entrada y de salida de una curva pueden ser distintas. Una curva puede ser compuesta (dos radios seguidos). Los puntos que no son del eje (de una vía contigua, de un desvío) no tiran del trazado. Si un extremo del eje es basura, se descarta, hasta 100 m en cada extremo. El informe dice cuánto se ha descartado.
* **Alzado**: la rasante se ajusta sobre la planta ya ajustada. Cada vértice tiene que explicar más que la ondulación admisible de la vía. Un acuerdo que llega al extremo de los datos se mide con la parte que se ve; su vértice y la pendiente del lado cortado pueden quedar sin determinar.
* **Sección tipo** (ferrocarril y metro, con los carriles): el ancho de vía se mide entre los hilos, por tramos, y cada tramo toma su ancho nominal. La sección tipo del trazado es de vía única, con el ancho nominal que cubre más longitud entre todas las vías. El peralte de las curvas se mide como la diferencia de cota entre los dos hilos y se escribe en la tabla de peraltes de cada vial.

## Perfiles de las vías

Cada vial del trazado lleva sus perfiles:

* **Transversales** (ferrocarril y metro, con los carriles): uno cada 10 m de PK, de 10 m a cada lado del eje. Son la distancia y los anchos por defecto de los perfiles transversales de un documento de viales. La rasante de cada transversal va de un hilo al otro, para que la guitarra dé la distancia al eje y la cota de cada hilo. Bajo cada hilo se dibuja el carril a escala real: una caja del ancho de la cabeza y el alto del carril (70 × 172 mm en un carril 60E1).
  * Si en un PK falta un hilo, se pone a partir del otro, con el ancho de la vía y su peralte.
  * Si faltan los dos (un hueco en los carriles), se ponen los dos a cada lado del eje: el bajo a la cota de la rasante y el otro con el peralte.
  * Sin carriles no hay transversales, salvo en los túneles.
* **Longitudinal**: la rasante del eje.
* **Terreno**: solo en el trazado de la Clasificación FFCC, que tiene la nube. El terreno sale del modelo del suelo de la clasificación, con la plataforma, el balasto y los taludes. Lo llevan cada transversal y el longitudinal, en el eje. Con el terreno, el vial tiene también masas. El trazado de Ajustar geometría de eje no tiene nube y sus perfiles van sin terreno; el resumen lo dice.
* **Túneles**: solo en el trazado de la Clasificación FFCC. Cada túnel lleva:
  * su contorno en la sección tipo;
  * un perfil transversal por cada bloque medido, con el contorno medido (el techo) y el de la sección tipo, para compararlos;
  * en el longitudinal, el techo de boca a boca.

  Con el techo, la [guitarra](../../herramientas-mdt/perfiles/guitarra.md) del longitudinal y la de los transversales pueden mostrar el **gálibo**: la altura del techo sobre la rasante o, si no hay rasante, sobre el terreno.

## Desde la Clasificación FFCC

En la Clasificación FFCC y en la Vectorial FFCC, la casilla **Trazado con su geometría y sección tipo (.VIA)** hace este mismo ajuste sobre los ejes de las vías detectadas. El botón **Parámetros…** abre este mismo cuadro de diálogo. Los códigos de las líneas de eje y de los carriles no se usan: los ejes y los carriles son los que detecta la clasificación. Si el tipo de vía es carretera, se usa ferrocarril. Hay estas diferencias:

* Se ajusta cada eje continuo: una vía detectada a trozos va en un solo vial, llamado *VIA &lt;n&gt;*.
* Se ajustan todas las vías, aunque sean cortas. Una vía que no se puede ajustar (corta o con un eje que no admite geometría) va en el trazado con su eje medido, sin ajustar, en un vial llamado *VIA &lt;n&gt; (eje medido)*. El resumen dice cuáles son.
* El trazado llega hasta los extremos de la vía detectada, por ejemplo hasta su entronque. De cada extremo se descartan como mucho 20 m. Si el ajuste sale mal, se repite dejando descartar hasta 100 m.
* Los túneles se miden en la nube, con una pasada propia, y van en el trazado. Ver [Perfiles de las vías](#perfiles-de-las-vías).
* Los perfiles llevan el terreno.
