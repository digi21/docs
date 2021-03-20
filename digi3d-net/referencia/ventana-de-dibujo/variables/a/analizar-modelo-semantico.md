# ANALIZAR\_MODELO\_SEMANTICO

Activa o desactiva el análisis de _Modelo semántico_ en tiempo real al finalizar de digitalizar una entidad.

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
      <td style="text-align:left">Valor que indica si activar o desactivar el an&#xE1;lisis de modelo sem&#xE1;ntico
        en tiempo real.</td>
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

El análisis se realiza únicamente en las entidades que tengan un código para el cual se ha activado la propiedad **Analizar reglas de modelo semántico**.

## Características de la orden

| Tipo de varible | [Booleana](../variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Modelo semántico/Analizar modelo semántico al finalizar entidad_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no está asignada a ninguna barra de herramientas._ |
| Extensión | DigiNG.OrdenesStandard.dll |

