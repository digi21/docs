# C

Indica si _Digi3D.NET_ cerrará automáticamente la línea que está digitalizando al finalizarla.

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
      <td style="text-align:left">Modo de finalizaci&#xF3;n cerrando l&#xED;nea</td>
      <td style="text-align:left">
        <p>Si no se especifica ning&#xFA;n par&#xE1;metro el valor de la variable
          booleana cambiar&#xE1; de modo <em>Activado</em> a <em>Desactivado</em> y de <em>Desactivado</em> a <em>Activado</em>.</p>
        <p><b>0</b>: Para desactivar la variable booleana.</p>
        <p><b>1</b>: Para activar la variable booleana.</p>
        <p><b>?</b>: Para consultar el valor de la variable booleana. Aparecer&#xE1;
          un globo indicando si la orden est&#xE1; activada o desactivada.</p>
      </td>
      <td style="text-align:left">Si</td>
    </tr>
  </tbody>
</table>

## Observaciones

Puedes finalizar una línea mediante el botón de _Reset_ del dispositivo de entrada, ejecutando la orden [FIN\_ENT](FIN_ENT.html) o ejecutando la orden [CIERRA\_ENT](CIERRA_ENT.html).

Si está activada la [variable booleana]() **C**, al finalizar la línea con el botón de _Reset_ o con la orden _FIN\_ENT_ el programa cerrará automáticamente la línea como si se hubiera ejecutado la orden _CIERRA\_ENT_.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Al finalizar la línea actual.../Cerrarla |
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |

## Vídeo

Vea también

