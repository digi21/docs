# RECONOCER\_VOZ

Activa o desactiva el análisis de voz en tiempo real.

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
      <td style="text-align:left">Valor que indica si activar o desactivar el an&#xE1;lisis de voz.</td>
      <td
      style="text-align:left">
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

Si está activo, el programa escucha comandos por el micrófono del ordenador. Si se localiza algún comando de los especificados en la pestaña [Reconocimiento de voz ](../../../../editor-de-tablas-de-codigos/pestanas/reconocimiento-de-voz.md)del programa [Editor de tablas de códigos](../../../../editor-de-tablas-de-codigos/), el programa ejecuta dicho comando.

## Características de la orden

| Tipo de orden | [Variable booleana](reconocer-voz.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Reconocer voz |
| Barra de herramientas en la que aparece la orden | Reconocimiento de voz. |
| Extensión | DigiNG.OrdenesStandard.dll |

