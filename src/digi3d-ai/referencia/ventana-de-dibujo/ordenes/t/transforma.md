# TRANSFORMA

Realiza transformaciones en el archivo de dibujo.

## Parámetros

| Transformación | Datos de entrada |
| :--- | :--- |
La orden no admite parámetros en la línea de comandos. Muestra un cuadro de diálogo en el que se elige el tipo de transformación y se introducen sus datos:

| Transformación | Datos de entrada |
| :--- | :--- |
| Transformación de Helmert | Fichero ASCII con coordenadas Xi Yi XI YI de la menos dos puntos |
| Transformación Afín | Fichero ASCII con coordenadas Xi Yi XI YI de la menos cuatro puntos |
| Transformación absoluta (3D) | Fichero ASCII con coordenadas Xi Yi Zi XI YI ZI de al menos tres puntos |
| Traslación | Fichero ASCII con coordenadas Xi Yi Zi XI YI ZI de un solo punto, en la primera línea |
| Escala de dibujo | Factor de escala en X, factor de escala en Y, factor de escala en Z y si se desea que la altura de textos también sea escalada. La altura de los textos se multiplica por el factor de escala en X |
| Tensor 3x3 |Fichero ASCII con matriz de tres por tres:<br>a00 a01 a02<br>a10 a11 a12<br>a20 a21 a22|
| Tensor 4x4 |Fichero ASCII con matriz de cuatro por cuatro:<br>a00 a01 a02 a03<br>a10 a11 a12 a13<br>a20 a21 a22 a23<br>a30 a31 a32 a33|

## Observaciones

Puedes elegir entre distintas transformaciones:

* Helmert
* Afín
* Absoluta
* Translación
* Escala
* Tensor 3x3
* Tensor 4x4

La transformación se aplica a las entidades del archivo de dibujo activo que no están borradas, son visibles y están dentro de la zona de interés. Cada entidad se borra y se sustituye por su copia transformada.

La mayoría de las transformaciones que se ofrecen se definen mediante las coordenadas de una serie de puntos en dos sistemas de coordenadas: sistema original y sistema destino o transformado. Las transformaciones pueden incluir un giro, una translación, un factor de escala, un tensor 3x3 ó 4x4.

Para ejecutar cualquiera de dichas transformaciones hay que haber creado previamente un fichero de texto con los datos de entrada necesarios para la transformación, se indicarán las coordenadas origen y destino de al menos dos puntos.

En cada línea del fichero , y justificado arriba a la izquierda, se indicarán las coordenadas de la posición origen y las coordenadas de la posición destino de un punto conocido. Estos cuatro valores se separan mediante comas o espacios en blanco. Es decir, la estructura de este fichero es la siguiente:

X del punto 1 original, Y del punto 1 original, X del punto 1 destino, Y del punto 1 destino

X del punto 2 original, Y del punto 2 original, X del punto 2 destino, Y del punto 2 destino

.......

Si la transformación es en tres dimensiones, la estructura sería:

X p1 original, Y p1 original, Z p1 original, X p1 destino, Y p1 destino, Z p1 destino

X p2 original, Y p2 original, Z p2 original, X p2 destino, Y p2 destino, Z p2 destino

.......

Una vez creado el fichero se podrá ejecutar la orden [TRANSFORMA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/transforma.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](transforma.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Avanzado/Transformar el archivo de dibujo \(escala, huso, afín, helmert, ED50-ETRS89...\) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {0D75B4EC-3036-4684-95A4-D2119B3A6E88} |

