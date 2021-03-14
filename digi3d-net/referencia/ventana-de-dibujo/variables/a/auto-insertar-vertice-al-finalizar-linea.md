# AUTO\_INSERTAR\_VERTICE\_INTERSECCION\_AL\_FINALIZAR\_LINEA

Inserta un vértice automáticamente en las coordenadas de interseción de la línea que se acaba de digitalizar y las líneas o polígonos con los que se cruza.

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
      <td style="text-align:left">Indica si activar o desactivar esta caracter&#xED;stica.</td>
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

Si está activa, siempre que se finalice una línea, el programa analizará las intersecciones de esta línea con el resto de líneas/polígonos existentes en el archivo de dibujo. Si localiza intersecciones, añadirá un vértice en la intersección tanto en la línea que se acaba de digitalizar como en las líneas o polígonos con los que se cruza.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Análisis geométricos/Insertar un vértice en el punto de cruce de las líneas/Insertar vértice en las intersecciones automáticamente al finalizar línea |
| Barra de herramientas en la que aparece la orden | Desplazamientos de ventana |
| Extensión | DigiNG.OrdenesdStandard.dll |

