# Especificación del Sistema de Referencia de Coordenadas del Sensor

Todos los sensores tienen asociado un sistema de referencia de coordenadas. Algunos tienen un sistema de referencia de coordenadas fijo y otros lo tienen variable.

En la siguiente tabla podemos comprobar los sistemas de referencia de coordenadas asociados a cada uno de los sensores implementados por Digi3D.NET.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Sensor</th>
      <th style="text-align:left">Sistemas de referencia de coordenadas permitidos</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Sat&#xE9;lite RPC</td>
      <td style="text-align:left">Este sensor trabaja siempre en el sistema de referencia de coordenadas:
        <a
        href="http://spatialreference.org/ref/epsg/4979/">EPSG:4979</a>. Este es un sistema de referencia de coordenadas es id&#xE9;ntico
          al <a href="http://spatialreference.org/ref/epsg/4326/">EPSG:4326</a> pero
          en vez de ser geogr&#xE1;fico 2D, es geogr&#xE1;fico 3D (con coordenadas
          Z elipsoidales).</td>
    </tr>
    <tr>
      <td style="text-align:left">VM Quasi-Panoramic</td>
      <td style="text-align:left">Este sensor trabaja siempre en el sistema de referencia de coordenadas:
        <a
        href="http://spatialreference.org/ref/epsg/4979/">EPSG:4979</a>. Este es un sistema de referencia de coordenadas es id&#xE9;ntico
          al <a href="http://spatialreference.org/ref/epsg/4326/">EPSG:4326</a> pero
          en vez de ser geogr&#xE1;fico 2D, es geogr&#xE1;fico 3D (con coordenadas
          Z elipsoidales).</td>
    </tr>
    <tr>
      <td style="text-align:left">ADS 40/80</td>
      <td style="text-align:left">Este sensor trabaja siempre en el sistema de referencia de coordenadas:
        <a
        href="http://spatialreference.org/ref/epsg/4979/">EPSG:4979</a>. Este es un sistema de referencia de coordenadas es id&#xE9;ntico
          al <a href="http://spatialreference.org/ref/epsg/4326/">EPSG:4326</a> pero
          en vez de ser geogr&#xE1;fico 2D, es geogr&#xE1;fico 3D (con coordenadas
          Z elipsoidales).</td>
    </tr>
    <tr>
      <td style="text-align:left">Ortofoto</td>
      <td style="text-align:left">Se obtiene el sistema de referencia de coordenadas de la orientaci&#xF3;n
        de la ortofoto. Si es un GeoTiff y &#xE9;ste (que no siempre es as&#xED;)
        aporta informaci&#xF3;n del sistema de referencia de coordenadas, el sensor
        tendr&#xE1; ese sistema, si no es as&#xED; y existe un archivo <a href="http://en.wikipedia.org/wiki/Shapefile">.prj</a>,
        se asignar&#xE1; el sistema indicado en ese archivo, si no, el sistema
        de referencia de coordenadas ser&#xE1; desconocido, tanto para el vertical
        como para el horizontal.</td>
    </tr>
    <tr>
      <td style="text-align:left">Ortofoto estereosc&#xF3;pica</td>
      <td style="text-align:left">Se obtiene el sistema de referencia de coordenadas de la orientaci&#xF3;n
        de la ortofoto. Si es un GeoTiff y &#xE9;ste (que no siempre es as&#xED;)
        aporta informaci&#xF3;n del sistema de referencia de coordenadas, el sensor
        tendr&#xE1; ese sistema, si no es as&#xED; y existe un archivo <a href="http://en.wikipedia.org/wiki/Shapefile">.prj</a>,
        se asignar&#xE1; el sistema indicado en ese archivo, si no, el sistema
        de referencia de coordenadas ser&#xE1; desconocido, tanto para el vertical
        como para el horizontal.</td>
    </tr>
    <tr>
      <td style="text-align:left">Web Map Service</td>
      <td style="text-align:left">Libre. Lo define la propia cadena de conexi&#xF3;n al servidor WMS</td>
    </tr>
    <tr>
      <td style="text-align:left">Web Map Tile Service</td>
      <td style="text-align:left">Libre. Lo define la propia cadena de conexi&#xF3;n al servidor WMTS</td>
    </tr>
    <tr>
      <td style="text-align:left">C&#xF3;nico</td>
      <td style="text-align:left">
        <ul>
          <li>Si cargamos un modelo sin orientaci&#xF3;n absoluta ni aerotriangulaci&#xF3;n
            asociada, el sistema de referencia de coordenadas ser&#xE1; Horizontal
            local + Vertical local.</li>
          <li>Si el modelo tiene una aerotriangulaci&#xF3;n:
            <ul>
              <li>Si el archivo de aerotriangulaci&#xF3;n informa internamente de un sistema
                de referencia de coordenadas, se seleccionar&#xE1; este sistema de referencia
                de coordenadas. A d&#xED;a de hoy, &#xFA;nicamente los archivos <em>.prj</em> de
                Inpho son los &#xFA;nicos que informan de su sistema de referencia de coordenadas
                internamente</li>
              <li>Si el archivo de aerotriangulaci&#xF3;n no informa internamente de un
                sistema de referencia de coordenadas, pero se localiza un archivo <em>.prj</em> en
                el mismo directorio que el archivo de aerotriangulaci&#xF3;n con un sistema
                de referencia de coordenadas, se seleccionar&#xE1; el sistema de referencia
                de coordenadas de ese archivo <em>.prj</em>
              </li>
              <li>Si el archivo de aerotriangulaci&#xF3;n no informa de sistema de referencia
                de coordenadas ni se localiza un archivo .prj, se seleccionar&#xE1; como
                sistema de referencia de coordenadas Horizontal local + Vertical local.</li>
            </ul>
          </li>
          <li>Si se localiza un archivo de orientaci&#xF3;n absoluta, y &#xE9;ste proporciona
            informaci&#xF3;n de sistema de referencia de coordenadas, se seleccionar&#xE1;
            &#xE9;ste sistema de coordenadas que sustituir&#xE1; al proporcionado por
            el archivo de aerotriangulaci&#xF3;n.</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

