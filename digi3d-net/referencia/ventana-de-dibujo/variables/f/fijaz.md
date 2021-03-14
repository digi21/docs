# FIJAZ

Activa o desactiva la opción de fijar el valor de la coordenada Z al múltiplo más próximo de la [equidistancia]() de curvas de nivel.

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

La equidistancia se especifica en la pantalla de inicio de DgiNG o bien con la orden [EQUIDISTANCIA](EQUIDISTANCIA.html).

El valor de Z queda bloqueado, de forma que no puede ser modificado al variar la altura con el pedal del restituidor.

Esta orden se suele utilizar en el dibujo de curvas de nivel, forzando a que la coordenada Z se registre con un valor constate igual a un múltiplo de la equidistancia.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Coordenada Z/Fijar la coordenada Z al múltiplo de equidistancia más cercano |
| Barra de herramientas en la que aparece la orden | Coordenada Z |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html) |

