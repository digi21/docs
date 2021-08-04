# Flujo de trabajo para el inventariado de una carretera

[Módulo MMS](./)

### Preliminares

#### Generación de tramos

Cuando se calculan las nubes de puntos registradas, podríamos tener archivos que contuvieran la totalidad de los datos, pudiendo ocupar decenas o centenas de Gb. Esto no es operativo ni para gestionar ni para visualizar. Dado el caso, se debería realizar una división en diversos archivos, indicando la cantidad máximo de datos o el espacio que ocupan. Para esta eventualidad, se puede utilizar la herramienta [Preprocesar Láser](../modulo-laser/vista/preprocesar.md) de la barra de herramientas [Archivos LiDAR](../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/).

#### Eje aproximado de la trayectoria

Las herramientas de tratamiento de los datos MMS de forma automática admitirán un archivo con la definición de la trayectoria como dato aproximada inicial. Esta trayectoria evitará que las herramientas tengan que hacer cálculos adicionales para ubicar al vehículo en el momento de la toma, por lo que se recomienda su utilización, aunque no es obligatoria.

El archivo podría ser generado por el usuario. Asimismo, se podría generar el trazado que siguió el vehículo a partir de los centros de proyección de las imágenes cargadas en un único proyecto, desde la herramienta **Trazado desde imágenes** de la [cinta de herramientas Proyecto Editar](../fichas-de-herramientas/ficha-de-herramientas-proyecto/editar-proyecto.md).

Pero también puede ser importado a partir del fichero de cálculo de la trayectoria, que suele ser un archivo ASCII con las posiciones GNSS y ángulos de orientación tomados cada cierto tiempo.

Un ejemplo de este tipo de archivos es el siguiente:

```text
file_name,file_type,sequence_id,timestamp,GPS_time(s),east,north,altitude,attitude(x)=roll,attitude(y)=pitch,attitude(z)=pan,frame_id
E:/2021-03-15_11-47-26/ladybug_panoramic_001929.jpg,JPG,1929,162259326648,1299841796.17742848,596126.402298610075,3121341.12428526115,51.4542347844690084,177.971166137430686,2.05551927384272703,-93.0967238715002026,3791
E:/2021-03-15_11-47-26/ladybug_panoramic_001930.jpg,JPG,1930,162356296464,1299841797.14712691,596131.650464848964,3121341.97523138579,51.2559816902503371,177.033894729433285,0.378351863176165426,-113.457547588796572,3792
E:/2021-03-15_11-47-26/ladybug_panoramic_001931.jpg,JPG,1931,162455886013,1299841798.14302278,596136.238556805649,3121344.82461331319,51.1919172378256917,176.771113624685285,-0.33364872741620677,-137.619259427909441,3793
```

#### Buffer alrededor del eje para eliminar puntos alejados

Antes de comenzar con los procesos de clasificación automática, podría ser adecuado eliminar aquellos puntos registrados que se alejan demasiado de la zona de interés. Este proceso se puede realizar con la herramienta [**Buffer**](trazado/buffer-en-datos-mms.md) de la cinta de herramientas [Trazado MMS](trazado/).

#### Proceso de clasificación automática de elementos

Una vez preparadas los datos de origen, se puede empezar el proceso de clasificación. Este proceso asignará un valor a cada punto, indicando a qué tipo de objeto pertenece cuando fue medido por el sensor LiDAR. MDTopX dispone de un conjunto de herramientas que permiten automatizar este proceso. Como son varios los pasos a seguir, se recomienda tener una cuadrícula donde se vaya señalando en qué estado está cada proceso. Cabe reseñar que el proceso automático adolecerá de errores o defectos, por lo que se debería tener un proceso de control de calidad posterior a cada herramienta que permita al usuario refinar los datos calculados.

### Clasificación de la nube de puntos

#### Búsqueda de suelo

El primer paso será la búsqueda de aquellos puntos que sean “suelo”. Realmente, una clasificación burda de puntos sería entre “suelo” y “no suelo” \(objeto\). Es decir, puntos que podrían ser utilizados para un MDT y puntos que serían utilizados para un MDS. Sería puntos suelo: asfalto, aceras, bordillos, zonas sin asfaltar, etc. El resto, serían “no suelo” y se clasificarán en un proceso posterior.

Debido a que el escáner tiene gran alcance \(hasta 200 m, habitualmente\) y a que existen diversas ocultaciones debido a los objetos y al método de registro, habrá zonas donde se hayan medido puntos pero no lo suficientemente densas como para determinar si son “suelo” o “no suelo”. Por tanto, la salida de la herramienta de búsqueda de suelo dará como resultado puntos “suelo” \(tipo 2\), puntos “no suelo u objeto” \(tipo 6\) y puntos donde no se ha podido determinar su tipología \(tipo 0\).

La herramienta [Suelo](trazado/clasificar-suelo-de-trazado.md) puede ejecutarse desde un archivo con la nube de puntos, pero lo habitual es hacerlo desde un proyecto para que se procese por lotes y los cálculos tengan continuidad entre zonas anexas.

#### Generación de MDT y mapas de representación del relieve

Después de procesados los archivos del proyecto, se tendrá información suficiente para [calcular un Modelo Digital del Terreno](../modulo-laser/obtener-modelo-digital/triangulacion-2d.md), ya que se podrá discriminar entre puntos pertenecientes al suelo y al resto de objetos que en él se apoyan. Estos MDT podrán ser utilizados para calcular diversos mapas de evaluación de relieve, por ejemplo, [curvados](../como.../como-curvado.md), [tintas hipsométricas](../como.../como-mapa-de-tintas-hipsometricas.md), [pendientes ](../como.../como-mapa-de-pendientes.md)o [sombreados](../como.../como-sombreado.md), o para calcular [ortofotos](../modulo-ortofoto/).

Con la nube de puntos clasificada con suelo se pueden generar estos mapas directamente sin necesidad de generar un MDT previamente, como puede ser [curvados](../modulo-laser/generar/curvado-a-partir-de-lidar.md) o [imágenes](../modulo-laser/generar/generar-imagen.md).

La generación de mapas del relieve puede realizarse de múltiples formas:

* [A partir de un modelo TIN](../modulo-laser/obtener-modelo-digital/triangulacion-2d.md). Como la cantidad de puntos LiDAR clasificados como suelo es cuantiosa, no es muy recomendable generar un modelo TIN puesto que la cantidad de puntos duplicará la cantidad de puntos utilizado y supondrá una carga importante para el ordenador, no teniendo grandes ventajas en el resultado final. Es más, el hecho de utilizar todos los puntos provocará que se produzcan pequeños “artefactos” o “defectos” en el modelo no deseables, debido a las pequeñas diferencias en cota entre los puntos vecinos. Si se quiere generar un TIN para ser utilizado en otras operaciones posteriores, se recomienda primero hacer un filtrado de los puntos suelo, reduciendo con ello estas diferencias.
* [A partir de una rejilla DEM](../modulo-laser/generar/rejilla-a-partir-de-lidar.md). Este modelo es mucho más ligero y sencillo de utilizar. Habrá que indicar un paso de rejilla para su generación. Además, tiene la ventaja de poderse utilizar algoritmos de suavizado de toda la superficie, generando curvados óptimos.
* [A partir directamente de la nube de puntos LiDAR](../modulo-laser/generar/curvado-a-partir-de-lidar.md): Si no se desean generar archivos intermedios \(TIN o DEM\), se puede utilizar la herramienta que MDTopX tiene para curvar directamente la nube de puntos. De hecho, según con se configure esta herramienta, el curvado será el resultado del cálculo sobre un TIN o un DEM, sin tener que salvar estos archivos a disco. Una ventaja adicional es la posibilidad de corregir puntos que fueron erróneamente clasificados como suelo.

#### Búsqueda de asfalto y línea blanca

Una vez detectado el suelo, se está en disposición de buscar los siguientes elementos, que también formarán parte del suelo, pero con una caracterización especial: asfalto, señalización horizontal sobre el asfalto y bordillos de aceras.

La detección de estos tres tipos puede ser realizada en pasos diferentes o en un mismo cálculo, en función de lo que se indique en el [cuadro de diálogo](trazado/clasificar-lineas-de-vial.md). El primer caso, puede ser adecuado si se quiere editar el cálculo realizado por el programa, ya que la detección de la señalización horizontal dependerá de una buena detección del asfalto. Podría ser recomendable para aquellos viales que tienen un asfalto irregular o un trazado sinuoso que puede dificultar al programa a su óptima detección. En el caso de carreteras bien señalizadas, no sería necesario.

Después de realizar la clasificación automática anterior, es posible que se generen zonas con resultados no deseados, que se desearían editar de forma asistida.

Para ello, MDTopX dispone de una [herramienta ](editar-objetos/calcular-limite-de-asfalto.md)que permite realizar la edición de forma rápida y cómoda. Para ello, se debería calcular previamente el límite del asfalto a partir de los puntos ya clasificados.

Al igual que la herramienta anterior, se dispone de otra [herramienta ](editar-objetos/calcular-lineas-de-vial.md)que permite editar los puntos clasificados como señalización horizontal. 

