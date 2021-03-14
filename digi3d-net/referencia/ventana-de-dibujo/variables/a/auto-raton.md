# AUTO\_RATON

Activa o desactiva el autozoom.

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

Sólo funciona en caso de que el dispositivo de entrada sea el ratón y se esté trabajando en la ventana ortogonal.

Cuando está activada la variable AUTO\_RATON, la pantalla va siguiendo al cursor en sus desplazamientos por el dibujo, excepto cuadno se registra en modo contínuo. En este caso, la pantalla no se desplaza hasta que se suelta el botón de registro, centrándose en la posición que tenga el cursor en ese momento.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Zooms/Activar el auto seguimiento de cámara para ratón |
| Barra de herramientas en la que aparece la orden | Desplazamientos de ventana |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

