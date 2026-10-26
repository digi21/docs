# ROTAR\_CÁMARA\_FPS
<!-- id: rotar-camara-fps -->

Rota la cámara en la ventana de dibujo mediante movimientos del ratón.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Sincronizar la rotación con Digi3D | 0 (no) o 1 (sí) | Sí |

## Observaciones

Esta orden desactiva el control de movimiento mediante _SpaceMouse_ y vuelve a activar ese control al finalizar la orden.

La orden oculta el cursor y lo mantiene en el centro de la ventana. El desplazamiento horizontal del ratón cambia el giro kappa de la cámara y el desplazamiento vertical cambia el giro omega. Pulsa Esc para terminar la orden.

Con el valor 1 en el parámetro, la orden envía la posición y la orientación de la cámara a la ventana fotogramétrica si el sensor de la ventana fotogramétrica admite cámara en primera persona.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [VELOCIDAD\_SPACEMOUSE\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/velocidad_spacemouse_xyz.md) — factor de velocidad del SpaceMouse en la ventana de dibujo |
| Órdenes relacionadas | [MOVER\_CAMARA\_FPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-camara-fps.md) |
| Nombre interno | {4E0625A7-9F2C-4E75-8307-497A66FCC20A} |

