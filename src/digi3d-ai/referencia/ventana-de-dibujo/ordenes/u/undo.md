# UNDO
<!-- id: undo -->

Deshace las últimas acciones efectuadas por el programa.

## Parámetros

No admite parámetros.

## Observaciones

El programa guarda las órdenes ejecutadas en una pila, cada orden encima de la anterior. UNDO deshace las órdenes en el orden inverso al de ejecución: primero la última, después la penúltima y así sucesivamente.

Cada ejecución de la orden UNDO solo deshace una orden.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Deshacer |
| Barra de herramientas en la que aparece la orden | Deshacer |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [REDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redo.md) |
| Nombre interno | {57B9A609-A048-42f6-AB11-8BD2DDBC9CE2} |

