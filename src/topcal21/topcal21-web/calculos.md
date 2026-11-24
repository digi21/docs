# Cálculos en Topcal21 web
<!-- id: topcal21-web-calculos -->

Los cálculos de Topcal21 web se ejecutan en el servidor con las mismas fórmulas, constantes y criterios de convergencia que Topcal21 para Windows. Cada asistente tiene los mismos pasos y pide los mismos datos que en Windows; esta página indica de dónde se inicia cada cálculo, qué página de Windows lo explica y qué cambia en la web.

La web no usa llave de protección: todos los cálculos del menú Herramientas y del menú Cálculos están disponibles para cualquier cuenta activa, y los asistentes que escriben listados siempre ofrecen la zona «Fichero ASCII de resultados».

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
| Croquis de visuales... | | [Menú Herramientas](../menus-de-la-aplicacion/menu-herramientas.md) |
| Mínimos cuadrados... | Comp3D | [Compensación por mínimos cuadrados](../herramientas/compensacion-por-minimos-cuadrados/README.md) |
| Mínimos cuadrados 3D... | | [Compensación por mínimos cuadrados](../herramientas/compensacion-por-minimos-cuadrados/README.md) |
| Transformación de coordenadas... | Transfor. | [Transformación de coordenadas](../herramientas/transformacion/README.md) |

### Cómo funcionan los asistentes

* Cada asistente muestra el título del paso («Paso 1», «Paso 2»...) y los botones **<< Anterior**, **Siguiente >>** y **Salir**. En el último paso, **Siguiente >>** se llama **Calcular**. El botón **Ayuda** abre en una pestaña nueva la página de esta ayuda que describe el paso visible del asistente en Topcal21 para Windows.
* En el paso 1, las listas de archivos de puntos y de visuales contienen los archivos del proyecto que se han podido abrir. Al abrir el asistente, todos los archivos están seleccionados.
* Los archivos de entrada que un asistente pide (parámetros, rejillas, plantillas, archivos de desniveles o de líneas base) se eligen entre los archivos de [Mis archivos](mis-archivos.md) con el botón del asistente.
* Si un cálculo no termina en 60 segundos, el asistente muestra un mensaje y vuelve al paso anterior. En el asistente de replanteo, el asistente se cierra y la web no escribe el listado.
* El cálculo de la compensación de los cuadros de mínimos cuadrados 2D y 3D y de la compensación de redes de nivelación espera en una cola y tiene un plazo de 30 minutos desde que empieza a calcular. Mientras el cálculo espera, el cuadro muestra la posición en la cola; durante la ejecución del cálculo, muestra los segundos transcurridos y el botón **Cancelar**.
* Los asistentes recuerdan los últimos datos que se usaron (por ejemplo, el nombre del listado). La web guarda esos datos en las [preferencias](preferencias-instrumentos-y-sistemas-de-referencia.md) al pulsar **Calcular**.

### Incluir en croquis

Los asistentes de **Poligonales**, **Poligonales alternas**, **Hansen** y **Bisección mixta** tienen en su página de salida el grupo «Incluir en croquis». Los cuadros de **Mínimos cuadrados** 2D y 3D tienen la página «Configurar croquis de dibujo». Al pulsar **Calcular** con la casilla **Incluir en croquis** marcada, la web crea un croquis con el nombre escrito o, si el proyecto ya tiene un croquis con ese nombre, añade los elementos del cálculo a ese croquis. La lista desplegable del nombre contiene los croquis del proyecto, en la lista de capas el usuario elige la capa de los elementos, y el botón «...» abre la «Lista de códigos».

El croquis queda abierto en el proyecto con cambios sin guardar. Si el cálculo no devuelve ningún punto, la web no crea ni modifica ningún croquis. La creación del croquis tiene un plazo de 60 segundos. Ver [Croquis](croquis.md).

El asistente **Croquis de visuales...** crea un croquis con las observaciones de las estaciones elegidas; añade la extensión `.crq` al nombre si falta y rechaza un nombre vacío.

### Listado y archivos de resultados

Cada asistente que escribe un listado tiene el grupo «Fichero ASCII de resultados» (en las intersecciones y en el cálculo de superficies se llama «Fichero de resultados») con la casilla **Crear el fichero de resultados**, el nombre del listado y la casilla **Visualizar después del cálculo**. Los nombres predeterminados incluyen `Radiacion.html`, `Interseccion.html`, `Hansen.html`, `Biseccion.html`, `Poligonal.html`, `Altimetria.html`, `Replanteo.html`, `LibretaNueva.html`, `Cierre de triangulos.html` y `Superficies.html`.

* Si el nombre del listado termina en `.html` o `.htm`, la web escribe un listado en HTML (lenguaje de marcado de hipertexto). Con cualquier otra extensión, escribe un listado de texto. El color de fondo y la fuente de los listados HTML se configuran en **Configurar HTML...** del cuadro [Preferencias](preferencias-instrumentos-y-sistemas-de-referencia.md).
* Un nombre sin carpeta se resuelve en la carpeta del proyecto. La web escribe el listado en el espacio de archivos del usuario (visible en [Mis archivos](mis-archivos.md)) y sustituye el archivo que tenga el mismo nombre.
* Con **Visualizar después del cálculo** marcada, la web abre el listado en un visor dentro de la página. El visor tiene los botones **Imprimir**, que abre el listado en una pestaña nueva del navegador para imprimirlo con **Ctrl** + **P**, **Descargar** y **Cerrar**. Los scripts del listado no se ejecutan en el visor. Las fechas de los listados usan la zona horaria Europe/Madrid.

**Desorientaciones** no escribe ningún listado: al pulsar **Calcular** u **Otro punto**, guarda la desorientación calculada en el punto de la estación, como un paso de **Deshacer** del archivo de puntos.

Los asistentes que calculan puntos (radiación, intersecciones directas e inversas, Hansen, bisección mixta, poligonales y altimetría) tienen el grupo «Fichero TopCal de resultados» con el nombre del archivo de puntos de resultados. El grupo **Al añadir puntos nuevos** decide si la web modifica los puntos existentes con el mismo número. Si el proyecto ya tiene un archivo de puntos con ese nombre, la web añade los puntos calculados a ese archivo en un paso de **Deshacer**. Si no lo tiene, la web crea un archivo de puntos nuevo, sin guardar, en la carpeta del proyecto; la casilla **Incluir en el proyecto actual** añade ese archivo al proyecto. Guarda el archivo con **Guardar** o **Guardar todo** para conservar los resultados. **Generar libreta** crea de la misma forma un archivo de visuales; su grupo **Al añadir visuales nuevas** ofrece **No modificar visuales existentes**, **Modificar visuales existentes** y **Añadir aunque exista**.

## Menú Cálculos

Los cálculos del menú **Cálculos** usan los puntos del documento activo. Las órdenes que leen o insertan puntos necesitan que el documento activo sea un archivo de puntos. Las órdenes **Calcular medias CD-CI...**, **Calcular medias de visuales...** y **Calcular errores accidentales...** necesitan que el documento activo sea un archivo de visuales. **Cálculo de distancias**, **Resolución de triángulos**, **Transformaciones › de unidades...** y **Nivelación geométrica...** no necesitan ningún documento.

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
| Máximas y mínimas... | [Máximas y mínimas](../calculos/maximas-y-minimas.md) |
| Cálculo de superficies... | [Cálculo de superficies](../calculos/calculo-de-superficies/README.md) |
| Perfiles › Longitudinales... | [Perfiles longitudinales](../calculos/perfiles-longitudinales/README.md) |
| Perfiles › Transversales... | [Perfiles transversales](../calculos/perfiles-transversales/README.md) |
| Transformaciones › Helmert/Afín... | [Transformación Helmert de coordenadas](../calculos/transformacion-helmert-de-coordenadas/README.md) |
| Transformaciones › Coordenadas geográficas... | [Transformación de coordenadas geográficas](../calculos/transformacion-de-coordenadas-geograficas/README.md) |
| Transformaciones › Coordenadas geográficas manual... | [Transformación manual de coordenadas geográficas](../calculos/transformacion-manual-de-coordenadas-geograficas.md) |
| Transformaciones › Struve a Hayford... | [Transformación del elipsoide de Struve al de Hayford](../calculos/transformacion-de-coordenadas-del-elipsoide-de-struve-al-de-hayford.md) |
| Transformaciones › Entre sistemas de referencia... | [Transformación entre sistemas de referencia](../calculos/transformacion-de-coordenadas-entre-diferentes-sistemas-de-referencia/README.md) |
| Transformaciones › Entre sistemas de referencia utilizando rejilla NTV2... | [Transformación utilizando rejilla NTV2](../calculos/transformacion-de-coordenadas-utilizando-rejilla-ntv2/README.md) |
| Transformaciones › de unidades... | [Transformación de unidades](../calculos/transformacion-de-unidades.md) |
| Transformaciones › Cambio de altura según rejilla... | [Cambio de altura según rejilla](../calculos/cambio-de-altura-segun-rejilla/README.md) |
| Generar reseñas › Vértices... | [Generar reseñas de vértices](../calculos/generar-resenas-de-vertices/README.md) |
| Generar reseñas › Puntos de apoyo... | [Generar reseñas de puntos de apoyo](../calculos/generar-resenas-de-puntos-de-apoyo/README.md) |
| Calcular medias CD-CI... | [Calcular medias CD-CI](../calculos/calculo-medias-cd-ci/README.md) |
| Calcular medias de visuales... | [Calcular medias de visuales](../calculos/calculo-de-medias-de-visuales/README.md) |
| Calcular errores accidentales... | [Calcular errores accidentales](../calculos/calculo-de-errores-accidentales/README.md) |
| Nivelación geométrica... | [Nivelación geométrica](../calculos/nivelacion-geometrica/README.md) |
| Compensación MMCC red de nivelación... | [Compensación MMCC de red de nivelación](../calculos/compensacion-mmcc-de-red-de-nivelacion/README.md) |

### Cálculos sencillos

Los cuadros de una página (rectangulares a polares, polares a rectangulares, intersecciones, arco, distancias, resolución de triángulos, Struve a Hayford, coordenadas geográficas manual y transformación de unidades) recalculan al escribir en las cajas de texto; cada caja admite hasta 100 caracteres. El botón **Salvar** de los cuadros que calculan puntos (polares a rectangulares, arco, intersecciones, Struve a Hayford y coordenadas geográficas manual) añade los puntos calculados al archivo de puntos activo. Al cerrar el cuadro, la web aplica los puntos añadidos como un solo paso de **Deshacer** y deja el archivo con cambios sin guardar. **Rectangulares a polares**, **Cálculo de distancias**, **Resolución de triángulos** y **Transformación de unidades** no modifican ningún archivo.

Con la cuenta suspendida, la web deshabilita los asistentes de Herramientas y los cálculos que añaden puntos o escriben archivos. **Rectangulares a polares**, **Cálculo de distancias**, **Resolución de triángulos**, **Transformación de unidades** y **Máximas y mínimas** siguen habilitados.

### Máximas y mínimas

**Máximas y mínimas...** abre un cuadro con los puntos no borrados del archivo de puntos activo, todos seleccionados. Para los puntos seleccionados, el cuadro muestra el mínimo, el máximo y el incremento de X, Y y Z con los decimales lineales del archivo. Un clic selecciona una fila, **Ctrl** + clic alterna la selección de una fila y **Mayús** + clic selecciona un rango; los botones **Todos** y **Ninguno** seleccionan o deseleccionan todas las filas. El cuadro no modifica el archivo.

### Cálculo de superficies

El cuadro y el listado funcionan como en Windows. La web dibuja la parcela en un gráfico vectorial en formato SVG (Scalable Vector Graphics) con los vértices de la parcela cerrada y los puntos de cada arco, sin zoom ni cuadrícula. El botón **Ajustar...** está deshabilitado y el cuadro de resultados no incluye la parcela en ningún croquis.

### Perfiles

**Perfiles › Longitudinales...** y **Perfiles › Transversales...** necesitan un archivo de puntos activo y una cuenta no suspendida. Cada cuadro escribe en «Mis archivos» un dibujo con los perfiles y los archivos ASCII con los puntos de los perfiles.

* El archivo de dibujo se escribe solo en formato DIGI (`.bin`). Los demás tipos de archivo de dibujo de Windows aparecen deshabilitados con «No disponible en la web». Una extensión `.dxf` o `.dgn` en el nombre elige ese tipo y **Aceptar** avisa sin escribir ningún archivo.
* La web pide confirmación al aceptar, una vez por cada archivo que ya existe y se va a sustituir.
* La web rechaza las entradas que superan estos límites: 1.000 perfiles por orden, 10.000 puntos por perfil, 50.000 puntos entre todos los perfiles, 20 MiB por archivo de dibujo y 100.000 líneas horizontales. La orden se cancela si dura más de 60 segundos.
* En los casos en que Topcal21 para Windows termina el programa, por ejemplo con una cantidad de perfiles por fila igual a 0 en «Presentación gráfica...», la web muestra un mensaje en el cuadro y no genera el dibujo.
* **Desde archivo...** de los perfiles transversales lee archivos de hasta 20 MiB de «Mis archivos».
* Los datos de los cuadros se guardan en las preferencias al pulsar **Aceptar**; **Salir** no guarda nada.

### Transformaciones y cambio de sistema

* **Helmert/Afín...** busca el archivo de parámetros en la carpeta del proyecto cuando su nombre no tiene carpeta.
* **Entre sistemas de referencia utilizando rejilla NTV2...** incluye la rejilla `spED2ET.gsb`. Para usar otra rejilla NTV2, súbela a «Mis archivos» y elígela con **Buscar...**.
* **Cambio de altura según rejilla...** no incluye ninguna rejilla de alturas. Sube tu archivo de rejilla a «Mis archivos» (por ejemplo `ibngeo96.gri`) y elígelo con **Buscar...**.
* **Entre sistemas de referencia...**, **Entre sistemas de referencia utilizando rejilla NTV2...** y **Cambio de altura según rejilla...** escriben los puntos calculados como los asistentes de Herramientas: en un archivo de puntos del proyecto o en un archivo nuevo.

### Reseñas

**Generar reseñas › Vértices...** y **Puntos de apoyo...** escriben un documento HTML a partir de una plantilla. Los botones **Buscar...** del croquis, de la foto, de la plantilla y del archivo de salida abren el selector de «Mis archivos», que solo muestra archivos que ya existen: para crear un archivo de salida, escribe su nombre en el campo. El documento no puede superar 20 MiB. Las reseñas de los puntos procesados se guardan en el archivo de puntos como un paso de **Deshacer**. El visor de listados no carga las imágenes que referencia el HTML de las reseñas; descarga el archivo para verlas.

### Medias y errores accidentales

**Calcular medias CD-CI...**, **Calcular medias de visuales...** y **Calcular errores accidentales...** trabajan sobre el archivo de visuales activo, con o sin proyecto. Los dos asistentes de medias crean un archivo de visuales con el resultado, como **Generar libreta**, y ninguno de los tres modifica el archivo activo.

### Nivelación

* **Nivelación geométrica...** lee un archivo GSI de Leica de «Mis archivos» con las lecturas de mira de espaldas y de frente y escribe un listado. No usa el proyecto.
* **Compensación MMCC red de nivelación...** compensa las cotas del archivo de puntos activo con los desniveles de un archivo de «Mis archivos» en formato ASCII, M5 de Trimble o GSI de Leica, que se elige en la lista **Formato de archivo**.

### Mínimos cuadrados

* **Mínimos cuadrados...** y **Mínimos cuadrados 3D...** comparten los datos guardados de los cuadros: al abrir uno de los dos cuadros, la web carga las últimas opciones guardadas desde cualquiera de ellos.
* El cuadro 3D tiene el grupo «Archivo con líneas base».
* La página «Configurar croquis de dibujo» incluye en el croquis las visuales, las elipses de error planimétricas y las precisiones altimétricas; ver [Incluir en croquis](#incluir-en-croquis).
