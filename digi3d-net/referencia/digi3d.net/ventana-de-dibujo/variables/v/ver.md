# VER

Activa la verificación por parte del usuario de la selección del tentativo.

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
      <td style="text-align:left">Repetir</td>
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

Si la la orden VER está activada, al efectuar un enganche a una entidad con el botón de tentatvo, ésta se presenta en pantalla con el color asignado con la orden [COLOR\_TENTATIVO](COLOR_TENTATIVO.html), y el usuario puede verificar si la captura se realiza o no con dicha entidad.

Si la oren está desactivada, al intentar un enganche a una entidad con el botón de tentativo, el proceso se llevará a cabo sin pedir confirmación.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Tentativos/Verificar |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

