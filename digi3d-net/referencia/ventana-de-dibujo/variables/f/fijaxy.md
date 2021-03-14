# FIJAXY

Activa o desactiva la opción de forzar que la variación de las coordenadas planimétricas se realice en intervalos múltiplos de la [equidistancia]().

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

### Ejemplos

Si establecemos `EQUIDISTANCIA=100`, y estamos en un punto de coordenadas X=1200.43, Y=3460.78, al activar FIJAXY se produciría:

* El redondeo de las coordenadas a los valores: X=1200.00, Y=3500.00.
* La variación de estos valores en intervalos de 100 metros, al realizar cualquier desplazamiento con el cursor en el fichero de trabajo.

## Observaciones

La opción de forzar la variación de las coordenadas planimétricas, se especifica en la pantalla de inicio de DigiNG o bien con la orden [EQUIDISTANCIA](EQUIDISTANCIA.html).

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción del menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html), [EQUIDISTANCIA](EQUIDISTANCIA.html), [FIJAZ](FIJAZ.html) |

