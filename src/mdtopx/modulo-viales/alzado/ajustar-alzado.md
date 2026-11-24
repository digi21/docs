# Ajustar alzado
<!-- id: ajustar-alzado -->

[Ficha de herramientas Alzado](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-alzado.md)

Calcula una rasante con acuerdos parabólicos a partir de la rasante de un vial o de su terreno.

## Cómo se usa

Con un archivo .VIA abierto, en la vista de alzado, en la cinta **Alzado**, grupo **Editar**, pulse **Ajustar alzado** y pique un alzado. El alzado picado decide de qué se parte:

* **Una rasante**: se le ponen acuerdos en sus quiebros.
* **El terreno**: se saca de él una rasante nueva.

Rellene el cuadro de diálogo y pulse **Aceptar**. El mismo ajuste se puede hacer al buscar la geometría del trazado. Ver [Buscar geometría](../trazado/buscar-geometria.md).

## El cuadro de diálogo

* **A partir de**: la rasante o el terreno. Desde la herramienta, es el del alzado picado y no se puede cambiar.
  * **La rasante: acuerdos en sus quiebros**: los vértices de la rasante se quedan, y cada quiebro lleva el mayor Kv que cabe sin que su acuerdo se monte con los vecinos. Cada rasante entre dos quiebros se reparte entre sus dos acuerdos a partes iguales de Kv; si uno pide menos, el otro se queda el resto. Un vértice que ya tenía un Kv lo conserva si cabe. Una rasante densa (10 vértices o más, a menos de 20 m de media, como un perfil digitalizado) se ajusta como el terreno.
  * **El terreno: rasantes y acuerdos ajustados**: el ajuste de [Ajustar geometría de eje](/mdtopx/modulo-mms/ffcc/ajustar-geometria-de-eje.md#cómo-se-ajusta), sobre la cota del terreno.
* **Resultado**:
  * **Una rasante nueva (la actual se queda)**: se añade un alzado de tipo rasante. Se llama *Rasante del terreno* o *&lt;rasante&gt; con acuerdos*.
  * **Modificar la rasante actual**: la rasante cambia, con su nombre y su código.

  Desde el terreno, el resultado es siempre una rasante nueva: el terreno no se toca nunca, ni la rasante que hubiera.
* **Límites**:
  * **Kv mínimo** y **Kv máximo (m)**: ningún acuerdo sale fuera de ellos. Con acuerdos en los quiebros, un acuerdo que no cabe con el Kv mínimo sale con el que cabe, y se avisa.
  * **Diferencia mínima de pendientes (por mil)**: un quiebro menor no lleva acuerdo.
  * **Longitud mínima del acuerdo (m)**: un acuerdo más corto se avisa.
  * **Ondulación del terreno (mm)**: lo que el terreno se aparta de la rasante sin que eso sea un cambio de rasante. Solo cuenta al ajustar el terreno o una rasante densa.
* **Informe de resultados**: escribe junto al .VIA la página *&lt;archivo&gt; informe del alzado.html* y la abre en el navegador. Con acuerdos en los quiebros, compara la rasante nueva con la de partida: vértices, Kv, tangentes, flechas y lo que se aparta en cada punto. Ver [Informe del trazado](/mdtopx/modulo-mms/ffcc/informe-del-trazado.md).

Los valores del cuadro de diálogo se guardan para la próxima vez.

## Qué genera

* **La rasante** nueva o modificada. Se puede deshacer.
* **Un resumen** en la ventana de información: los vértices y acuerdos (con su Kv mínimo y máximo), el error medio cuadrático respecto al terreno si se ha ajustado, y los avisos.

## La rasante que manda

Las cotas del trazado, la guitarra y los perfiles usan la primera rasante del vial. Una rasante nueva se añade detrás: la de partida sigue mandando. En el longitudinal, la primera rasante y el primer terreno se dibujan con los códigos de la [configuración de los perfiles](../general/configuracion-de-perfiles.md). Los demás alzados se dibujan con su propio código, que se cambia en la información del alzado (en el [panel de viales y perfiles](../general/README.md), botón derecho sobre el alzado, **Información del alzado**, campo **Código**, de hasta 6 caracteres). Sin código propio, se dibujan con el código de los otros alzados de la configuración.
