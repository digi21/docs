# REPITE

Si está activa, repite la última orden que se ha ejecutado para las órdenes que admiten repetición.

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

Algunas órdenes tienen la capacidad de auto-ejecutarse cada vez que finalizan. Podemos controlar si queremos o no que se auto-ejecuten estas órdenes al finalizarse mediante esta orden.

Esta orden es de tipo booleano, lo que significa que puede estar activa o desactiva.

* Si la orden está activa y ejecutamos una orden que admite repetición, como por ejemplo [CIRCR](CIRCR.html), cuando se digitalice un círculo, la orden CIRCR se auto-destruirá, pero al estar activa la orden _REPITE_, _DigiNG_ volverá a ejecutar la orden _CIRCR_.
* Si la orden no está activa y ejecutamos una orden que admite repetición, cuando ésta se destruya no se volverá a ejecutar automáticamente.

Algunas órdenes no admiten auto-repetición, como por ejemplo la orden [BORRA\_ULTIMO](BORRA_ULTIMO.html), pues si esta orden admitiese repetición, si se ejecuta con el valor de REPITE activado, se borraría todo el modelo al ejecutarla.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Variables booleanas/Repetir la última orden |
| Barra de herramientas en la que aparece la orden | Órdenes automáticas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

## Vídeo

