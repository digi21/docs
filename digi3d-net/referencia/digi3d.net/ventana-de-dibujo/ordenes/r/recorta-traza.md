# RECORTA\_TRAZA

Crea una serie de hojas al estilo de la orden [HOJA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/r/HOJA.html) a partir de los polígonos generados con la orden [TRAZA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/r/TRAZA.html).

## Parámetros

<table>
  <thead>
    <tr>
      <th style="text-align:left">N&#xFA;mero de par&#xE1;metro</th>
      <th style="text-align:left">Descripci&#xF3;n</th>
      <th style="text-align:left">Valores</th>
      <th style="text-align:left">Opcional</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1</td>
      <td style="text-align:left">Directorio de salida</td>
      <td style="text-align:left">Indica el directorio en el cual se guardar&#xE1; el resultado</td>
      <td
      style="text-align:left">Si</td>
    </tr>
    <tr>
      <td style="text-align:left">2</td>
      <td style="text-align:left">Extensi&#xF3;n de los archivos a generar</td>
      <td style="text-align:left">Tipo de formato de archivo a generar, BIK, BIN, DGN, DWG o DXF</td>
      <td
      style="text-align:left">Si</td>
    </tr>
    <tr>
      <td style="text-align:left">3</td>
      <td style="text-align:left">Propiedades del motor de importaci&#xF3;n/exportaci&#xF3;n</td>
      <td style="text-align:left">
        <p>Precisi&#xF3;n: de las coordenadas en el modelo</p>
        <p>Origen global , Y y Z</p>
        <p>Tipo de bloqueo: No bloquear, Denegar lectura, Denegar escritura, Denegar
          lectura y escritura</p>
      </td>
      <td style="text-align:left">Si</td>
    </tr>
    <tr>
      <td style="text-align:left">4</td>
      <td style="text-align:left">Propiedades generales</td>
      <td style="text-align:left">
        <p>Escala: escala de creaci&#xF3;n de la hoja</p>
        <p>C&#xF3;digo del marco</p>
      </td>
      <td style="text-align:left">Si</td>
    </tr>
    <tr>
      <td style="text-align:left">5</td>
      <td style="text-align:left">Propiedades de las cruces</td>
      <td style="text-align:left">
        <p>C&#xF3;digo cruces</p>
        <p>Altura cruces</p>
        <p>Separaci&#xF3;n de cruces</p>
        <p>Medias cruces: Indica si insertar medias cruces en el l&#xED;mite de la
          hoja</p>
      </td>
      <td style="text-align:left">Si</td>
    </tr>
  </tbody>
</table>

Puedes ejecutar la orden desde la línea de comandos utilizando el siguiente formato:

RECORTA\_TRAZA=\[directorio de salida\] \[extension\] \[parametros importador \(varían según la extensión\)\] \[escala\] \[código del marco\] \[código de las cruces\] \[altura de cruces\] \[separación de cruces\] \[insertar medias cruces\] \[código de coordenadas\] \[altura de coordenadas\] \[número de decimales para coordenadas\]

Los parámetros del importador para archivos .bin son \[precisión\]\[origen global X\]\[origen global Y\]\[origen global Z\]. La precisión 2 para centímetros y 3 para milímetros. Los parámetros del importador se tomán como un único parámetro para la orden RECORTA\_TRAZA, lo que significa que hay que ponerlos entre comillas.

### Ejemplo:

`recorta_traza="c:\trabajo\x" bin "2 0.0 0.0 0.0" 1000 HOJA HOJA 10 100 1 HOJA 7.5 2`

## Observaciones

No se han registrado observaciones para esta orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](recorta-traza.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Gráfico de hojas/Crear hojas a partir de gráfico de hojas |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

