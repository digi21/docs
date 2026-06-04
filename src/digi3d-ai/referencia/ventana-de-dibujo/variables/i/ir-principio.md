# IR\_PRINCIPIO

Establece las coordenadas a las que se desplazará la ventana fotogramétrica al finalizar una línea.

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
      <td style="text-align:left">Ubicaci&#xF3;n a la que desplazar la ventana fotogram&#xE9;trica al finalizar
        una l&#xED;nea</td>
      <td style="text-align:left">
        <p><b>0</b>: Permanecer en el sitio.</p>
        <p><b>1</b>: Ir al principio de la l&#xED;nea.</p>
        <p><b>2</b>: Ir al principio de la l&#xED;nea incrementando la coordenada
          Z al siguiente m&#xFA;ltiplo de equidistancia.</p>
        <p><b>3</b>: Ir al principio de la l&#xED;nea decrementando la coordenada
          Z al anterior m&#xFA;ltiplo de equidistancia.</p>
        <p><b>4</b>: Permanecer en el sitio pero incrementar la coordenada Z al siguiente
          m&#xFA;ltiplo de equidistancia.</p>
        <p><b>5</b>: Permanecer en el sitio pero decrementar la coordenada Z al anterior
          m&#xFA;ltiplo de equidistancia.</p>
      </td>
      <td style="text-align:left">No</td>
    </tr>
  </tbody>
</table>

## Observaciones

En ocasiones nos interesa que al finalizar una línea la ventana fotogramétrica se desplace al comienzo de ésta, o que se desplace al comienzo de ésta pero incrementando o decrementando la coordenada Z al siguiente múltiplo de equidistancia.

## Características de la orden

<table>
  <thead>
    <tr>
      <th style="text-align:left">Tipo de orden</th>
      <th style="text-align:left"><a href="ir-principio.md">Variable booleana</a>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Repite autom&#xE1;ticamente</td>
      <td style="text-align:left">No</td>
    </tr>
    <tr>
      <td style="text-align:left">Opci&#xF3;n del men&#xFA; donde aparece la orden</td>
      <td style="text-align:left">
        <p>Dibujar/Al finalizar la l&#xED;nea actual.../Ir al principio de &#xE9;sta</p>
        <p>o</p>
        <p>Dibujar/Al finalizar la l&#xED;nea actual.../Ir al principio de &#xE9;sta
          y subir Z</p>
        <p>o</p>
        <p>Dibujar/Al finalizar la l&#xED;nea actual.../Ir al principio de &#xE9;sta
          y bajar Z</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Barra de herramientas en la que aparece la orden</td>
      <td style="text-align:left">Acci&#xF3;n al finalizar l&#xED;nea</td>
    </tr>
    <tr>
      <td style="text-align:left">Extensi&#xF3;n</td>
      <td style="text-align:left">DigiNG.OrdenesStandard.dll</td>
    </tr>
  </tbody>
</table>

