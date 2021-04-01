# RATON\_DIGI3D

Captura y descaptura el ratón de Windows en la ventana fotogramétrica.

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
          booleana cambiar&#xE1; de modo Activado a Desactivado y de Desactivado
          a Activado.</p>
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

Independientemente del dispositivo de entrada que tengamos seleccionado \([topo-mouse](raton-digi3d.md), [sistemas de manivelas](raton-digi3d.md), ....\) siempre podemos utilizar cualquiera de los ratones conectados al sistema como dispositivo de entrada en la ventana fotogramétrica.

Cuando la ventana fotogramétrica captura el ratón, este deja de ser visible para Windows, ya que la ventana fotogramétrica oculta su icono hasta que se vuelve a liberar. Los movimientos del ratón se convertirán en movimientos de las imágenes mostradas en la ventana fotogramétrica.

Esta orden es booleana, lo que significa que cada vez que la ejecutemos se capturará o liberará el ratón en función de si está o no capturado: Si el ratón está capturado y la ejecutamos se liberará, y si está liberado y la ejecutamos, se capturará.

Esta orden no puede descapturar ratones configurados como ratones de uso exclusivo para la ventana fotogramétrica.

Existen dos formas de capturar el ratón en la ventana fotogramétrica:

1. Haciendo clic con el ratón en la ventana fotogramétrica \(si está activa la opción _Capturar el ratón al hacer clic_ de la sección _Estereoscopía_ del cuadro de diálogo _Configuración._
2. Ejecutando la orden _RATON\_DIGI3D_.

Existen tres formas de liberar el ratón de la ventana fotogramétrica:

1. Pulsando la tecla _Ctrl_ del teclado y mantenerla pulsada. Mientras la mantengamos pulsada se liberará el ratón que podremos utilizar para interactuar con los elementos de interfaz de usuario del programa, como por ejemplo menús o barras de herramientas. En el momento en el que soltemos la tecla _Ctrl_ el ratón volverá a capturarse.
2. Ejecutando la orden _RATON\_DIGI3D_.
3. Pulsando _Enter_ y luego _Esc_. Al pulsar _Enter_ se mostrará la ventana para introducir órdenes. Al pulsar la tecla _Esc_ cerraremos esta ventana. Esta combinación de teclas libera el ratón de la ventana fotogramétrica si estaba capturado.

## Características de la orden

| Tipo de orden | [Variable booleana](raton-digi3d.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

