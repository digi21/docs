# AUTOMATICO

Indica si _Digi3D.NET_ ejecutará automáticamente una orden al digitalizar un punto cuando el programa está en modo preparado.

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

Si digitalizas un punto en la ventana de dibujo cuando _Digi3D.NET_ está en [modo preparado](), y está activa la [variable booleana]() **AUTOMATICO**, el programa ejecuta automáticamente una orden especificada por el usuario, la orden [LINEA](LINEA.html), [PUNTO](PUNTO.html) o la orden [COTA](COTA.html) y envía a esa orden la coordenada del punto que acabamos de diitalizar.

El criterio para determinar la orden a ejecutar es el siguiente:

1. Si el primer código de la lista de códigos activos tiene asignada una orden en la tabla de códigos, se ejecutará esa orden.
2. Si el primer código de la lista de códigos activos coincide con el valor almacenado en el primer parámetro de [COD\_COTAS](COD_COTAS.html), se ejecuta la orden [COTA](COTA.html).
3. Si el primer código de la lista de códigos activos es un código lineal en la tabla de códigos activa, se ejecuta la orden [LINEA](LINEA.html).
4. Si el primer código de la lista de códigos activos es un código puntual en la tabla de códigos activa, se ejecuta la orden [PUNTO](PUNTO.html).

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Variables booleanas/Modo automático |
| Barra de herramientas en la que aparece la orden | Órdenes automáticas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

