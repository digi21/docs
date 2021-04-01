# RELLENAR

Activa o desactiva el rellenado de entidades lineales cerradas.

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
      <td style="text-align:left">Modo autom&#xE1;tico</td>
      <td style="text-align:left">
        <p>Si no se especifica ning&#xFA;n par&#xE1;metro el valor de la variable
          booleana cambiar&#xE1; de modo <em>Activado</em> a <em>Desactivado</em> y de <em>Desactivado</em> a <em>Activado</em>.</p>
        <p><b>0</b>: Para desactivar la variable booleana.</p>
        <p><b>1</b>: Para activar la variable booleana.</p>
        <p><b>?</b>: Para consultar el valor de la variable booleana. Aparecer&#xE1;
          un globo indicando si la orden est&#xE1; activada o desactivada.</p>
      </td>
      <td style="text-align:left">No</td>
    </tr>
  </tbody>
</table>

## Observaciones

El color de rellenado se define en el [archivo de definición de códigos](), con extensión .TAB. En cada línea de este tipo de archivos se define un código, y en el segundo campo se define el tipo de entidad. Si éste es negativo \(menor de 0\), indica que se trata de una entidad lineal cerrada con rellenado.

El valor absoluto del campo define un número de color dentro del archivo DIGI.PAL, color con el que se rellenará la entidad lineal cerrada digitalizada con este código en caso de que esté esta propiedad activada.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Ver/Parámetros de visualización/Rellenar polígonos |
| Barra de herramientas en la que aparece la orden | Parámetros de visualización |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html) |

