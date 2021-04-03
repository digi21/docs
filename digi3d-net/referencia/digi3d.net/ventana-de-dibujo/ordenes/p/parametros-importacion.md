# PARAMETROS\_IMPORTACION

Especifica los parámetros que se enviarán al importador/exportador correspondiente, sin que aparecerá el cuadro de diálogo de configuración de importación al importar/exportar un determinado tipo de archivo.

## Parámetros

Los parámetros de exportación dependerán del tipo de archivo.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Archivo</th>
      <th style="text-align:left">Par&#xE1;metro</th>
      <th style="text-align:left">Descripci&#xF3;n</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">BIN</td>
      <td style="text-align:left">
        <ul>
          <li>Precisi&#xF3;n</li>
          <li>Coordenadas del origen global</li>
          <li>Bloqueo de fichero</li>
        </ul>
      </td>
      <td style="text-align:left">
        <p>La precisi&#xF3;n ser&#xE1;:</p>
        <p>0= micras</p>
        <p>1= mil&#xED;metros</p>
        <p>2= cent&#xED;metros</p>
        <p>3= dec&#xED;metros</p>
        <p>4= metros</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">DGN v8</td>
      <td style="text-align:left">
        <ul>
          <li>Salto de entidades</li>
          <li>Criterio para c&#xF3;digos</li>
          <li>Importar paleta</li>
          <li>Colores de las entidades</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Carga un archivo DGN v8 de gran tama&#xF1;o sin cosumo de memoria</li>
          <li>
            <p>0 - Nivel 1 - Nivel, color, grosor, estilo, c&#xE9;lula</p>
            <p>2 - Grupo gr&#xE1;fico</p>
          </li>
          <li>
            <p>0 - No</p>
            <p>1 - Si</p>
          </li>
          <li>
            <p>0 - Utiliza colores del archivo DGN</p>
            <p>1 - Utiliza colores de la tabla de c&#xF3;digos activa</p>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">DWG &#xF3; DXF de AutoCAD</td>
      <td style="text-align:left">
        <ul>
          <li>Versi&#xF3;n de AutoCAD</li>
          <li>Importar bloques</li>
          <li>Ruta de importaci&#xF3;n</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Con la cual se va a leer el archivo resultado (AutoCAD 11/12, 13, 14,
            200, 2004 o AutoCAD 2007)</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

## Observaciones

Por defecto, si intentas abrir un archivo .dgn o .dxf \(con la orden [CARGA\_F](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/p/CARGA_F.html), o [IMPORTAR](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/p/IMPORTAR.html) o [EXPORTAR](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/p/EXPORTAR.html)\), aparece el cuadro de diálogo de configuración donde se especifican los parámetros para la orden. Si no te interesa que aparezca este cuadro de diálogo o bien quieres ejecutar estas órdenes desde la línea de comandos, deberás especificar estos valores a priori mediante la orden _PARAMETROS\_IMPORTACIÓN_.

Sintaxis:

parametros\_importacion=\[importación/exportación\]\[.extensión\]

\["parámetros\_específicos\_para\_el\_importador/exportador"\]

donde:

* importación/exportación: cuando se trate de importar, este parámetro debe ser 1. Si deseas exportar debe ser 0.
* extensión: la correspondiente al archivo a importar/exportar con un punto delante \(.dgn, .dxf, .dwg, .bin\).
* parámetros específicos para el importador: deben ir entre comillas.

**Nota:**

La orden PARAMETROS\_IMPORTACION recibe tres parámetros, por lo que todos los parámetros que recibe el importador tienen que ir delimitados entre comillas dobles o simples como en el ejemplo anterior, si a su vez los parámetros que recibe el importador tienen que estar entrecomillados por que contienen espacios, se utilizará el delimitador opuesto.

Después de haber ejecutado la orden PARAMETROS\_IMPORTACION para definir los parámetros para el formato deseado, el usuario podrá ejecutar las órdenes de importación o exportación que le interesen más: [CARGA\_F](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/p/CARGA_F.html), [IMPORTAR](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/p/IMPORTAR.html), [EXPORTAR](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/p/EXPORTAR.html).

`EXPORTAR=C:\prueba.dxf`

ó

`IMPORTAR=C:\... fichero.BIN`

ó

`CARGA_F=C:\... fichero.dgn`

Puedes desactivar los parámetros asociados con alguna extensión, llamando a esta orden con la siguiente sintaxis:

`parametros_importacion=[importación/exportación][extensión]`

## Características de la orden

| Tipo de orden | [Orden inmediata](parametros-importacion.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

