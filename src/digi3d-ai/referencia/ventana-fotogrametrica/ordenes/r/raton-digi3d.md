# RATON\_DIGI3D

Captura y descaptura el ratón de Windows en la ventana fotogramétrica.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo Activado a Desactivado y de Desactivado a Activado.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |

## Observaciones

Independientemente del dispositivo de entrada que tengamos seleccionado \(topo-mouse, sistemas de manivelas, etc.) siempre podemos utilizar cualquiera de los ratones conectados al sistema como dispositivo de entrada en la ventana fotogramétrica.

Cuando la ventana fotogramétrica captura el ratón, este deja de ser visible para Windows, ya que la ventana fotogramétrica oculta su icono hasta que se vuelve a liberar. Los movimientos del ratón se convertirán en movimientos de las imágenes mostradas en la ventana fotogramétrica.

Esta orden es booleana, lo que significa que cada vez que la ejecutemos se capturará o liberará el ratón en función de si está o no capturado: Si el ratón está capturado y la ejecutamos se liberará, y si está liberado y la ejecutamos, se capturará.

Esta orden no puede descapturar ratones configurados como ratones de uso exclusivo para la ventana fotogramétrica.

Existen dos formas de capturar el ratón en la ventana fotogramétrica:

1. Haciendo clic con el ratón en la ventana fotogramétrica \(si está activa la opción _Capturar el ratón al hacer clic_ de la sección _Estereoscopía_ del cuadro de diálogo _Configuración._
2. Ejecutando la orden _RATÓN\_DIGI3D_.

Existen tres formas de liberar el ratón de la ventana fotogramétrica:

1. Pulsando la tecla _Ctrl_ del teclado y mantenerla pulsada. Mientras la mantengamos pulsada se liberará el ratón que podremos utilizar para interactuar con los elementos de interfaz de usuario del programa, como por ejemplo menús o barras de herramientas. En el momento en el que soltemos la tecla _Ctrl_ el ratón volverá a capturarse.
2. Ejecutando la orden _RATÓN\_DIGI3D_.
3. Pulsando _Enter_ y luego _Esc_. Al pulsar _Enter_ se mostrará la ventana para introducir órdenes. Al pulsar la tecla _Esc_ cerraremos esta ventana. Esta combinación de teclas libera el ratón de la ventana fotogramétrica si estaba capturado.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {91FA9DA6-7B6D-42c5-B2E9-CD339513D1DC} |

