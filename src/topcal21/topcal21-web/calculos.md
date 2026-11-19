# Cálculos en Topcal21 web
<!-- id: topcal21-web-calculos -->

Los cálculos de Topcal21 web se ejecutan en el servidor con las mismas fórmulas, constantes y criterios de convergencia que Topcal21 para Windows. Cada asistente tiene los mismos pasos y pide los mismos datos que en Windows; esta página indica de dónde se inicia cada cálculo, qué página de Windows lo explica y qué cambia en la web.

## Herramientas

Los asistentes del menú **Herramientas** y de la barra de botones inferior están habilitados cuando hay un proyecto abierto y su grupo está activo en el panel del proyecto. **Cierre de triángulos** solo necesita que el documento activo sea un archivo de visuales.

| Menú Herramientas | Botón | Explicación en Topcal21 para Windows |
|---|---|---|
| Desorientaciones... | Orienta | [Cálculo de desorientaciones](../herramientas/calculo-de-desorientaciones/README.md) |
| Cierre de triángulos... | Cierre | [Cierre de triángulos](../herramientas/cierre-de-triangulos/README.md) |
| Radiación... | Radiación | [Radiación](../herramientas/radiacion/README.md) |
| Poligonales... y Poligonales alternas... | Poligonal | [Poligonales](../herramientas/poligonales/README.md) |
| Intersecciones directas... | Directas | [Intersecciones directas](../herramientas/intersecciones-directas/README.md) |
| Intersecciones inversas... | Inversas | [Intersecciones inversas](../herramientas/intersecciones-inversas/README.md) |
| Intersección de Hansen... | Hansen | [Intersecciones de Hansen](../herramientas/intersecciones-de-hansen/README.md) |
| Bisección mixta... | B.Mixta | [Bisección mixta](../herramientas/biseccion-mixta/README.md) |
| Cálculo de altimetría... | Altimetría | [Compensación de altimetría](../herramientas/compensacion-de-altimetria/README.md) |
| Replanteo... | Replanteo | [Replanteo](../herramientas/replanteo/README.md) |
| Generar libreta... | Libreta | [Generar libreta de campo](../herramientas/generar-libreta-de-campo/README.md) |

### Cómo funcionan los asistentes

* Cada asistente muestra el título del paso («Paso 1», «Paso 2»...) y los botones **<< Anterior**, **Siguiente >>** y **Salir**. En el último paso, **Siguiente >>** se llama **Calcular**. El botón **Ayuda** de los asistentes está deshabilitado: esta ayuda sustituye a la ayuda de los asistentes.
* En el paso 1, las listas de archivos de puntos y de visuales contienen los archivos del proyecto que se han podido abrir. Al abrir el asistente, todos los archivos están seleccionados.
* Si un cálculo no termina en 60 segundos, el asistente muestra un mensaje y vuelve al paso anterior. En el asistente de replanteo, el asistente se cierra y la web no escribe el listado.
* Los asistentes recuerdan los últimos datos que se usaron (por ejemplo, el nombre del listado). La web guarda esos datos en las [preferencias](preferencias-instrumentos-y-sistemas-de-referencia.md) al pulsar **Calcular**.
* Los asistentes de Hansen, bisección mixta y poligonales muestran el grupo «Incluir en croquis» deshabilitado con «No disponible en la web», porque la web todavía no permite abrir ni editar croquis.

### Listado y archivos de resultados

Cada asistente, excepto Desorientaciones, tiene el grupo «Fichero ASCII de resultados» (en las intersecciones y en el cálculo de superficies se llama «Fichero de resultados») con la casilla **Crear el fichero de resultados**, el nombre del listado y la casilla **Visualizar después del cálculo**. Los nombres predeterminados son `Radiacion.html`, `Interseccion.html`, `Hansen.html`, `Biseccion.html`, `Poligonal.html`, `Altimetria.html`, `Replanteo.html`, `LibretaNueva.html`, `Cierre de triangulos.html` y `Superficies.html`.

* Si el nombre del listado termina en `.html` o `.htm`, la web escribe un listado en HTML (lenguaje de marcado de hipertexto). Con cualquier otra extensión, escribe un listado de texto. El color de fondo y la fuente de los listados HTML se configuran en **Configurar HTML...** del cuadro [Preferencias](preferencias-instrumentos-y-sistemas-de-referencia.md).
* Un nombre sin carpeta se resuelve en la carpeta del proyecto. La web escribe el listado en el espacio de archivos del usuario (visible en [Mis archivos](mis-archivos.md)) y sustituye el archivo que tenga el mismo nombre.
* Con **Visualizar después del cálculo** marcada, la web abre el listado en un visor dentro de la página. El visor tiene los botones **Imprimir**, que abre el listado en una pestaña nueva del navegador para imprimirlo con **Ctrl** + **P**, **Descargar** y **Cerrar**. Los scripts del listado no se ejecutan en el visor. Las fechas de los listados usan la zona horaria Europe/Madrid.

**Desorientaciones** no escribe ningún listado: al pulsar **Calcular** u **Otro punto**, guarda la desorientación calculada en el punto de la estación, como un paso de **Deshacer** del archivo de puntos.

Los asistentes que calculan puntos (radiación, intersecciones directas e inversas, Hansen, bisección mixta, poligonales y altimetría) tienen el grupo «Fichero TopCal de resultados» con el nombre del archivo de puntos de resultados. El grupo **Al añadir puntos nuevos** decide si la web modifica los puntos existentes con el mismo número. Si el proyecto ya tiene un archivo de puntos con ese nombre, la web añade los puntos calculados a ese archivo en un paso de **Deshacer**. Si no lo tiene, la web crea un archivo de puntos nuevo, sin guardar, en la carpeta del proyecto; la casilla **Incluir en el proyecto actual** añade ese archivo al proyecto. Guarda el archivo con **Guardar** o **Guardar todo** para conservar los resultados. **Generar libreta** crea de la misma forma un archivo de visuales; su grupo **Al añadir visuales nuevas** ofrece **No modificar visuales existentes**, **Modificar visuales existentes** y **Añadir aunque exista**.
## Cálculos sencillos

Los cálculos del menú **Cálculos** usan los puntos del documento activo. Las órdenes que leen o insertan puntos necesitan que el documento activo sea un archivo de puntos. **Cálculo de distancias** y **Resolución de triángulos** no necesitan ningún documento. Las demás entradas del menú Cálculos todavía no están disponibles; ver las [diferencias con Windows](diferencias-con-el-escritorio.md).

| Menú Cálculos | Explicación en Topcal21 para Windows |
|---|---|
| Rectangulares a polares... | [Rectangulares a polares](../calculos/rectangulares-a-polares.md) |
| Polares a rectangulares... | [Polares a rectangulares](../calculos/polares-a-rectangulares.md) |
| Intersección de rectas › Cuatro puntos..., Tres puntos y un acimut..., Dos puntos y dos acimuts... | [Intersección de rectas](../calculos/interseccion-de-rectas.md) |
| Intersección de recta y círculo › Dos puntos y un círculo..., Un punto, un acimut y un círculo... | [Intersección de recta y círculo](../calculos/interseccion-de-recta-y-circulo.md) |
| Intersección de círculos... | [Intersección de círculos](../calculos/interseccion-de-circulos.md) |
| Cálculo de un arco | [Arco definido por tres puntos](../calculos/arco-definido-por-tres-puntos.md) |
| Cálculo de distancias › UTM... | [Distancia en proyección UTM](../calculos/distancia-en-proyeccion-utm.md) |
| Cálculo de distancias › Geográficas... | [Distancia en geográficas](../calculos/distancia-en-geograficas.md) |
| Resolución de triángulos... | [Resolución de triángulos](../calculos/resolucion-de-triangulos.md) |
| Cálculo de superficies... | [Cálculo de superficies](../calculos/calculo-de-superficies/README.md) |

Los cuadros de cálculo recalculan al escribir en las cajas de texto; cada caja admite hasta 100 caracteres. El botón **Salvar** de los cuadros que calculan puntos (polares a rectangulares, arco, intersecciones) añade los puntos calculados al archivo de puntos activo. Al cerrar el cuadro, la web aplica los puntos añadidos como un solo paso de **Deshacer** y deja el archivo con cambios sin guardar. **Rectangulares a polares**, **Cálculo de distancias** y **Resolución de triángulos** no modifican ningún archivo.

Con la cuenta suspendida, la web deshabilita los asistentes de Herramientas y los cálculos sencillos que pueden añadir puntos. **Rectangulares a polares**, **Cálculo de distancias** y **Resolución de triángulos** siguen habilitados.

### Cálculo de superficies

El cuadro y el listado funcionan como en Windows. La web dibuja la parcela en un gráfico vectorial en formato SVG (Scalable Vector Graphics) con los vértices de la parcela cerrada y los puntos de cada arco, sin zoom ni cuadrícula. El botón **Ajustar...** está deshabilitado y el cuadro de resultados no incluye la parcela en ningún croquis.