# RATON\_DIGI3D
<!-- id: raton-digi3d -->

Captura y libera el ratón de Windows en la ventana fotogramétrica.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no especificas ningún parámetro, la variable booleana pasa de Activado a Desactivado o de Desactivado a Activado, según el valor actual.<br>**0**: Desactiva la variable booleana.<br>**1**: Activa la variable booleana.<br>**?**: Consulta el valor de la variable booleana. Aparece un globo que indica si la orden está activada o desactivada.| Si |

## Observaciones

Independientemente del dispositivo de entrada que tengas seleccionado \(topo-mouse, sistemas de manivelas, etc.), siempre puedes utilizar cualquiera de los ratones conectados al sistema como dispositivo de entrada en la ventana fotogramétrica.

Cuando la ventana fotogramétrica captura el ratón, la ventana oculta el puntero del ratón hasta que se libera el ratón. Los movimientos del ratón se convierten en movimientos de las imágenes mostradas en la ventana fotogramétrica.

Sin parámetros, esta orden alterna la captura del ratón: si el ratón está capturado, la orden lo libera; si está liberado, la orden lo captura.

La orden RATÓN_DIGI3D no puede liberar ratones configurados como ratones de uso exclusivo para la ventana fotogramétrica.

Existen dos formas de capturar el ratón en la ventana fotogramétrica:

1. Haz clic con el ratón en la ventana fotogramétrica \(si está activa la opción _Capturar el ratón al hacer clic_ de la sección _Estereoscopía_ del cuadro de diálogo _Configuración_\).
2. Ejecuta la orden _RATÓN\_DIGI3D_.

Existen tres formas de liberar el ratón de la ventana fotogramétrica:

1. Pulsa la tecla _Ctrl_ del teclado y mantenla pulsada. Mientras mantengas pulsada la tecla _Ctrl_, el ratón estará liberado y podrás utilizar el ratón para interactuar con los elementos de la interfaz de usuario del programa, como los menús o las barras de herramientas. Cuando sueltes la tecla _Ctrl_, la ventana fotogramétrica volverá a capturar el ratón.
2. Ejecuta la orden _RATÓN\_DIGI3D_.
3. Pulsa _Enter_ y luego _Esc_. Al pulsar _Enter_, se muestra la ventana para introducir órdenes. Al pulsar _Esc_, se cierra la ventana para introducir órdenes. Esta combinación de teclas libera el ratón de la ventana fotogramétrica si estaba capturado.

## Características de la orden

| Tipo de orden | [Variable booleana]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {D14B2F4A-B798-4670-A7C7-E64489ED1A1D} |

