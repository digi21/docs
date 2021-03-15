# EXPORTAR

Exporta el archivo actual a los formatos:

* BIN \(DigiNG\)
* DGN \(MicroStation v8\)
* DWG \(AutoCAD\)
* MDB Geomedia Datawarehose \(para poder utilizar esta función es requisito indispensable tener licencia de Geomedia\)
* ASCII de Kork
* Coordenadas XYZ
* ASCII de Digi

## Parámetros

Los parámetros de exportación dependerán del tipo de archivo que se desea exportar.

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
        </ul>
      </td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">DGN v8</td>
      <td style="text-align:left">
        <ul>
          <li>Archivo de c&#xE9;lulas</li>
          <li>Salto de entidades</li>
          <li>Criterio para c&#xF3;digos</li>
          <li>C&#xF3;digos desconocidos</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Archivo de c&#xE9;lulas relacionado con el archivo DGN</li>
          <li>Carga un archivo DGN v8 de gran tama&#xF1;o sin cosumo de memoria</li>
          <li>Criterio a seguir para la selecci&#xF3;n del c&#xF3;digo de Digi para
            la representaci&#xF3;n de entidades (Nivel, Color, Estilo, Grosor, C&#xE9;lula
            &#xF3; &#xFA;nicamente Grupo Gr&#xE1;fico)</li>
          <li>C&#xF3;digo con que se generar&#xE1;n las entidades desconocidas, si no
            se especifica nada, el programa generar&#xE1; las entidades en el c&#xF3;digo
            desconocido standard (no seleccionable por parte del usuario)</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">DWG &#xF3; DXF de AutoCAD</td>
      <td style="text-align:left">
        <ul>
          <li>Versi&#xF3;n de AutoCAD</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Con la cual se va a leer el archivo resultado (AutoCAD 11/12, 13, 14,
            200, 2004 o AutoCAD 2007)</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">ASCII de Kork</td>
      <td style="text-align:left">
        <ul>
          <li>Sin par&#xE1;metro</li>
        </ul>
      </td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">MDB de Geomedia Datawarehose</td>
      <td style="text-align:left">
        <ul>
          <li>Altura de textos</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Es indispensable tener licencia de Geomedia</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Coordenadas XYZ</td>
      <td style="text-align:left">
        <ul>
          <li>N&#xFA;mero de decimales</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>N&#xFA;mero de decimales para las coordenadas</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">ASCII de Digi</td>
      <td style="text-align:left">
        <ul>
          <li>N&#xFA;mero de decimales</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>N&#xFA;mero de decimales para las coordenadas</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

## Observaciones

Las entidades que estén registradas con un código que está apagado \([OFF](OFF.html)\), en el momento de ejecutar la orden, no serán incluidas en el archivo exportado.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Exportar... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

