# TECLA

Asigna órdenes de DigiNG a pulsaciones de teclas.

## Parámetros

Esta orden no admite parámetros.

## Observaciones

Esta orden permite la creación o modificación del fichero de asignación de teclas **TECLAS.MNU**, sin tener que editarlo como fichero de texto.

No se puede asignar más de una orden a una tecla, pero es posible agrupar varias en un fichero de macro instrucciones \(un arroba\) y asignar este fichero a una tecla.

No se pueden realizar asignaciones a las teclas _Enter_, _Esc_, _Bloq Mayús_, _Impr Pant_, etc. Sin embargo, es posible utilizar una combinación de varias teclas para realizar la asignación, por ejemplo _Ctrl+a_, _Mayús+F3_.

Después de aceptar una asignación de una orden a una tecla, pulsando la tecla _Enter_, el programa vuelve a solicitar que se pulse una nueva tecla o combinación de varias, para realizar otra asignación. El proceso continúa hasta que se pulsa la tecla _Esc_, con lo que finaliza la ejecución de la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](tecla.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Teclados virtuales/Asignar una orden al teclado virtual activo... |
| Barra de herramientas en la que aparece la orden | Teclados |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

## Nota

Tienes que tener en cuenta que Digi3D.NET no puede importar tus archivos de tecla antiguos, tenemos un [programa de consola](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/ArchivosDeConfiguracionDeTeclas.html) que te puede ayudar a importarlos.

