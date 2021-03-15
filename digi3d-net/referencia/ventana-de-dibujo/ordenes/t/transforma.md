# TRANSFORMA

Realiza transformaciones en el archivo de dibujo.

## Parámetros

<table>
  <thead>
    <tr>
      <th style="text-align:left">Transformaci&#xF3;n</th>
      <th style="text-align:left">Datos de entrada</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Transformaci&#xF3;n de Helmert</td>
      <td style="text-align:left">Fichero ASCII con coordenadas Xi Yi XI YI de la menos dos puntos</td>
    </tr>
    <tr>
      <td style="text-align:left">Transformaci&#xF3;n Af&#xED;n</td>
      <td style="text-align:left">Fichero ASCII con coordenadas Xi Yi XI YI de la menos cuatro puntos</td>
    </tr>
    <tr>
      <td style="text-align:left">Transformaci&#xF3;n 3D</td>
      <td style="text-align:left">Fichero ASCII con coordenadas Xi Yi Zi XI YI ZI de al menos tres puntos</td>
    </tr>
    <tr>
      <td style="text-align:left">Traslaci&#xF3;n</td>
      <td style="text-align:left">Fichero ASCII con coordenadas Xi Yi Zi XI YI ZI de un solo punto</td>
    </tr>
    <tr>
      <td style="text-align:left">Cambio de Huso</td>
      <td style="text-align:left">Elipsoide (por defecto aparece el Internacional Hayford), hemisferio,
        huso de entrada y huso de salida</td>
    </tr>
    <tr>
      <td style="text-align:left">Escala de dibujo</td>
      <td style="text-align:left">Factor de escala en X, factor de escala en Y, desplazamiento del origen
        y si se desea que la altura de textos tambi&#xE9;n sea escalada</td>
    </tr>
    <tr>
      <td style="text-align:left">Tensor 3x3</td>
      <td style="text-align:left">
        <p>Fichero ASCII con matriz de tres por tres:</p>
        <p>a00 a01 a02</p>
        <p>a10 a11 a12</p>
        <p>a20 a21 a22</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Tensor 4x4</td>
      <td style="text-align:left">
        <p>Fichero ASCII con matriz de cuatro por cuatro:</p>
        <p>a00 a01 a02 a03</p>
        <p>a10 a11 a12 a13</p>
        <p>a20 a21 a22 a23</p>
        <p>a30 a31 a32 a33</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Transformaci&#xF3;n con archivo de rejilla en formato NTV2</td>
      <td style="text-align:left">Archivo de par&#xE1;metros, hemisferio, huso para la transformaci&#xF3;n,
        sentido (de UTM - ED50 a UTM - ETRS89) y archivo de salida (la ruta y el
        nombre del archivo que generar&#xE1; la operaci&#xF3;n)</td>
    </tr>
  </tbody>
</table>

Transformación con archivo de rejilla en formato NTV2: Transforma un archivo utilizando archivos de rejilla de mínima curvatura en formato NTV2 \(Canadian National Transformation Versión2\). Dispones de un archivo de ejemplo en el directorio C:\Archivos de Programa\Digi21.net\Digi3D\sped2et.gsb

## Observaciones

Puedes elegir entre distintas transformaciones:

* Helmert
* Afin
* Absoluta
* Translación
* Cambio de huso
* Escala
* Tensor 3x3
* Tensor 4x4
* Transformación con archivo de rejilla en formato NTV2

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

Una vez creado el fichero se podrá ejecutar la orden [TRANSFORMA](TRANSFORMA.html).

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Avanzado/Transformar el archivo de dibujo \(escala, huso, afín, helmert, ED50-ETRS89...\) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

