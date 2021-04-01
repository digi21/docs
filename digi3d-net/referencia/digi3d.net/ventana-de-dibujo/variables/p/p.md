# P

Dibuja una paralela a una entidad lineal, automáticamente cuando se termina de registrar la entidad.

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

La paralela que se genera, se dibujará con el mismo código que la entidad dibujada.

Conviene fijar la [distancia activa](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/p/DA.html), con su signo:

* Positivo: La paralela se realizará a la derecha en el sentido de avance del dibujo de la entidad.
* Negativo: La paralela se realizará a la izquierda en el sentido de avance del dibujo de la entidad.

No obstante, si no se ha establecido el valor de _DA_ con anterioridad, al ejecutar esta orden se pedirá la distancia activa en ese momento, pues no se pueden dibujar paralelas cuando el valor de _DA_ es cero.

## Características de la orden

| Tipo de orden | [Variable booleana](p.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Al finalizar la línea actual.../Crear automáticamente una paralela \(según distancia activa\) |
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/p/REPITE.html) |

