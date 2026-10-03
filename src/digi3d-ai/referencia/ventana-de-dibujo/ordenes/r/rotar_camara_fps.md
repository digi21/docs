# ROTAR\_CÁMARA\_FPS

Rota la cámara en la ventana de dibujo mediante movimientos del ratón.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Sincronizar la rotación con Digi3D | 0 (no) ó 1 (sí) | Si |

## Observaciones

Esta orden anula el movimiento del _SpaceMouse_ y lo rehabilita al finalizar.

La orden oculta el cursor y lo mantiene en el centro de la ventana. El desplazamiento horizontal del ratón cambia el giro kappa de la cámara y el desplazamiento vertical cambia el giro omega. Pulsa Esc para terminar la orden.

Con el parámetro 1, la orden envía la posición y la orientación de la cámara a la ventana fotogramétrica si su sensor admite cámara en primera persona.

## Características de la orden

| Tipo de orden | [Orden interactiva](rotar_camara_fps.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | No aparece en ningún menú. |
| Barra de herramientas en la que aparece la orden | No aparece en ninguna barra de herramientas. |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [VELOCIDAD\_SPACEMOUSE\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/velocidad_spacemouse_xyz.md) — factor de velocidad del SpaceMouse en la ventana de dibujo |
| Nombre interno | {4E0625A7-9F2C-4E75-8307-497A66FCC20A} |

