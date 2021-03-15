# CARGA\_F

Visualiza en pantalla, junto al fichero actual de dibujo, uno o varios ficheros gráficos de referencia.

## Parámetros

<table>
  <thead>
    <tr>
      <th style="text-align:left">Archivo</th>
      <th style="text-align:left">Par&#xE1;metros</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Archivo .bin</td>
      <td style="text-align:left">
        <ul>
          <li>Precisi&#xF3;n</li>
          <li>Coordenadas del origen global</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Archivo ASCII de Kork</td>
      <td style="text-align:left">
        <ul>
          <li>No hace falta ning&#xFA;n par&#xE1;metro</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Archivo .DGN v8</td>
      <td style="text-align:left">
        <ul>
          <li>Archivo de c&#xE9;lulas</li>
          <li>N&#xBA; de entidades a saltar</li>
          <li>Criterio de c&#xF3;digos</li>
          <li>C&#xF3;digos desconocidos</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Archivo DXF de AutoCAD</td>
      <td style="text-align:left">
        <ul>
          <li>Tabla de traducci&#xF3;n</li>
        </ul>
        <p>C:\Archivos de programa\Digi21.net\Digi3D2006\Tablas\BINDXF.TAB.XML</p>
      </td>
    </tr>
  </tbody>
</table>

## Observaciones

Los archivos que se pueden cargar pueden ser .bin, .dgn, .dwg, .mdb, xyz ..., dependiendo del tipo de archivo seleccionado vamos a tener unos parámetros u otros.

Los ficheros de referencia se usan en modo lectura, pudiéndose ejecutar sobre ellos cualquier operación de este tipo \(listado de elementos, enganches gráficos,...\). No es posible dibujar nuevas entidades o hacer modificaciones sobre las entidades que pertenecen a estos ficheros, para ello debe ejecutarse la orden [CAMBIA\_FICHEROS](CAMBIA_FICHEROS.html) para pasar el archivo de referencia a fichero actual de dibujo.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Cargar archivo de referencia |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

