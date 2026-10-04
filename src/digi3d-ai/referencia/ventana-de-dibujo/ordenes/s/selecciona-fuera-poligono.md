# SELECCIONA\_FUERA\_POLIGONO
<!-- id: selecciona-fuera-poligono -->

Permite digitalizar un nuevo polígono y selecciona todas las entidades que estén completamente fuera del polígono.

## Parámetros

No admite parámetros.

## Observaciones

Es necesario que se esté ejecutando previamente una orden que admita selección múltiple.

Digitaliza los vértices del polígono con el pulsador de datos y ciérralo con el pulsador de reset. La orden marca las entidades seleccionadas. Pulsa el pulsador de datos o la tecla `+` para enviarlas a la orden activa, o el pulsador de reset, la tecla `-` o `Esc` para cancelar. No se seleccionan entidades borradas, ocultas ni fuera de la zona de interés.

## Características de la orden

| Tipo de orden | [Orden interactiva](selecciona-fuera-poligono.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Seleccionar entidades fuera de polígono |
| Barra de herramientas en la que aparece la orden | Selecciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) — incremento de registro activo<br>[IR\_TENTATIVO](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) — al tentativar, el restituidor se desplaza a las coordenadas tentativadas |
| Órdenes relacionadas | [SELECCIONA\_DENTRO\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-poligono.md)<br>[SELECCIONA\_FUERA\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-ventana.md)<br>[SELECCIONA\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-poligono.md) |
| Nombre interno | {78C1F628-2674-451B-B00F-11E18CF3A4A3} |

