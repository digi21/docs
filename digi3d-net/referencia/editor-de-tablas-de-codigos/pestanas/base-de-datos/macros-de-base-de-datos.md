# Macros de base de datos

Las macros de base de datos son valores que le indican a Digi3D.NET que se deben calcular en el momento en el que se crea un registro en la base de datos.

Se pueden introducir opcionalmente en la propiedad [Valor por defecto](propiedades-de-los-campos.md#valor-por-defecto) de un determinado campo de base de datos.

En caso de que un determinado campo tenga asignada una macro, en el momento de almacenar el registro en la base de datos, Digi3D.NET sustituirá la macro por el valor calculado.

A continuación, tienes el listado de macros que puedes introducir:

<table>
  <thead>
    <tr>
      <th style="text-align:left">Macro</th>
      <th style="text-align:left">Descripci&#xF3;n</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">%UID%</td>
      <td style="text-align:left">Almacena un GUID calculado en ese instante. Se almacena completo, con
        sus llaves como, por ejemplo: <code>{F9E7E680-3CDD-4733-A8F1-22F850F8774B}</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">%UID_SIMPLE%</td>
      <td style="text-align:left">Almacena un GUID calculado en ese instante. Se almacena completo, con
        sus llaves como, por ejemplo: <code>F9E7E680-3CDD-4733-A8F1-22F850F8774B</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">%CENTROID_TEXT%</td>
      <td style="text-align:left">En caso de que la geometr&#xED;a que se est&#xE9; almacenando sea un pol&#xED;gono
        generado por una topolog&#xED;a, almacena en este campo el texto del centroide
        del pol&#xED;gono.</td>
    </tr>
    <tr>
      <td style="text-align:left">%CENTROID_VALUE=[valor]%</td>
      <td style="text-align:left">En caso de que la geometr&#xED;a que se est&#xE9; almacenando sea un pol&#xED;gono
        generado por una topolog&#xED;a, almacena en este campo el valor indicado
        a la derecha del igual de entre todos los valores que tenga asignados el
        c&#xF3;digo del centroide en la propiedad <a href="../codigos/propiedades-del-codigo.md#valores">Valores</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_CODE%</td>
      <td style="text-align:left">Almacena el c&#xF3;digo principal de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_TEXT%</td>
      <td style="text-align:left">En caso de que la geometr&#xED;a que se est&#xE9; almacenando sea de tipo
        texto, almacena el texto de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_LENGTH_2D%</td>
      <td style="text-align:left">Almacena el per&#xED;metro en el plano X, Y de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_LENGTH_3D%</td>
      <td style="text-align:left">Almacena el per&#xED;metro tridimensional de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_AREA%</td>
      <td style="text-align:left">Almacena el &#xE1;rea de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_FIRST_VERTEX_Z%</td>
      <td style="text-align:left">Almacena la coordenada Z del primer v&#xE9;rtice de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_FIRST_VERTEX_Z_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z del primer v&#xE9;rtice de la geometr&#xED;a
        redondeado al n&#xFA;mero entero m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMIN%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xED;nima de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMIN_TRUNC_INT%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xED;nima de la geometr&#xED;a truncado a n&#xFA;mero
        entero.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMIN_ROUND_INT%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero entero m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMIN_FLOOR_INT%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero inferior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMIN_CEIL_INT%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero superior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMIN%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xED;nima de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMIN_TRUNC_INT%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xED;nima de la geometr&#xED;a truncado a n&#xFA;mero
        entero.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMIN_ROUND_INT%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero entero m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMIN_FLOOR_INT%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero inferior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMIN_CEIL_INT%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero superior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMIN%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xED;nima de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMIN_TRUNC_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xED;nima de la geometr&#xED;a truncado a n&#xFA;mero
        entero.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMIN_ROUND_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero entero m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMIN_FLOOR_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero inferior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMIN_CEIL_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xED;nima de la geometr&#xED;a redondeando
        al n&#xFA;mero superior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMAX%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xED;nima de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMAX_TRUNC_INT%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xE1;xima de la geometr&#xED;a truncado a n&#xFA;mero
        entero.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMAX_ROUND_INT%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero entero m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMAX_FLOOR_INT%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero inferior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_XMAX_CEIL_INT%</td>
      <td style="text-align:left">Almacena la coordenada X m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero superior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMAX%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xED;nima de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMAX_TRUNC_INT%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xE1;xima de la geometr&#xED;a truncado a n&#xFA;mero
        entero.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMAX_ROUND_INT%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero entero m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMAX_FLOOR_INT%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero inferior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_YMAX_CEIL_INT%</td>
      <td style="text-align:left">Almacena la coordenada Y m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero superior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMAX%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xED;nima de la geometr&#xED;a.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMAX_TRUNC_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xE1;xima de la geometr&#xED;a truncado a n&#xFA;mero
        entero.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMAX_ROUND_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero entero m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMAX_FLOOR_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero inferior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ZMAX_CEIL_INT%</td>
      <td style="text-align:left">Almacena la coordenada Z m&#xE1;xima de la geometr&#xED;a redondeando
        al n&#xFA;mero superior m&#xE1;s cercano.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_WIDTH%</td>
      <td style="text-align:left">Almacena el ancho de la geometr&#xED;a (diferencia de coordenadas X m&#xE1;xima
        - X m&#xED;nima)</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_HEIGHT%</td>
      <td style="text-align:left">Almacena el alto de la geometr&#xED;a (diferencia de coordenadas Y m&#xE1;xima
        - Y m&#xED;nima)</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_LENGTH%</td>
      <td style="text-align:left">Almacena el largo de la geometr&#xED;a (diferencia de coordenadas Z m&#xE1;xima
        - Z m&#xED;nima)</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ROTATION_TRIGONOMETRIC_SEXAGESIMAL%</td>
      <td style="text-align:left">Almacena la rotaci&#xF3;n trigonom&#xE9;trica de la geometr&#xED;a en
        grados sexagesimales.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ROTATION_TRIGONOMETRIC_CENTESIMAL%</td>
      <td style="text-align:left">Almacena la rotaci&#xF3;n trigonom&#xE9;trica de la geometr&#xED;a en
        grados centesimales.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ROTATION_TRIGONOMETRIC_RADIAN%</td>
      <td style="text-align:left">Almacena la rotaci&#xF3;n trigonom&#xE9;trica de la geometr&#xED;a en
        radianes.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ROTATION_AZIMUTAL_SEXAGESIMAL%</td>
      <td style="text-align:left">Almacena la rotaci&#xF3;n azimutal de la geometr&#xED;a en grados sexagesimales.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ROTATION_AZIMUTAL_CENTESIMAL%</td>
      <td style="text-align:left">Almacena la rotaci&#xF3;n azimutal de la geometr&#xED;a en grados centesimales.</td>
    </tr>
    <tr>
      <td style="text-align:left">%ENTITY_ROTATION_AZIMUTAL_RADIAN%</td>
      <td style="text-align:left">Almacena la rotaci&#xF3;n azimutal de la geometr&#xED;a en radianes.</td>
    </tr>
    <tr>
      <td style="text-align:left">%MACRO%</td>
      <td style="text-align:left">
        <p>Expande la macro que aparece a la derecha de %MACRO%.</p>
        <p></p>
        <p>Ejemplo:</p>
        <p>`%MACRO%$(NombreArchivoDibujo)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>



