# SELECCIONA\_FUERA\_VENTANA
<!-- id: selecciona-fuera-ventana -->

Permite digitalizar una nueva ventana y selecciona todas las entidades que estén completamente fuera de la ventana.

## Parámetros

No admite parámetros.

## Observaciones

Es necesario que se esté ejecutando previamente una orden que admita selección múltiple.

Digitaliza dos esquinas opuestas de la ventana con el pulsador de datos. La ventana se alinea con los bordes de la pantalla. Si la variable [VER](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) está activada, la orden marca las entidades seleccionadas y espera confirmación: pulsa el pulsador de datos o la tecla `+` para enviarlas a la orden activa, o el pulsador de reset, la tecla `-` o `Esc` para cancelar. Si VER está desactivada, la orden envía las entidades sin pedir confirmación. Si no se selecciona ninguna entidad, la orden emite un sonido de error y vuelve a pedir la primera esquina.

## Características de la orden

| Tipo de orden | [Orden interactiva](selecciona-fuera-ventana.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Seleccionar entidades fuera de la ventana |
| Barra de herramientas en la que aparece la orden | Selecciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [VER](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) — verificación por parte del usuario de la selección del tentativo |
| Órdenes relacionadas | [SELECCIONA\_DENTRO\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-ventana.md)<br>[SELECCIONA\_FUERA\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-poligono.md)<br>[SELECCIONA\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md) |
| Nombre interno | {A4584D1D-758E-44C1-B23C-DE1F7E8A141F} |

