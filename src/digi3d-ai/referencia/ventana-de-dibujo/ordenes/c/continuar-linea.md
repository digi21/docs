# CONTINUAR\_LINEA

Continúa una determinada línea seleccionada.

## Parámetros

No admite parámetros.

## Observaciones

1. Selecciona una línea del modelo actual cerca del extremo por el que quieres continuarla. Si la entidad seleccionada no es una línea o no pertenece al modelo actual, la orden emite un sonido de error y espera otra selección.
2. La orden asigna como códigos activos los códigos de la línea, ejecuta la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) con todos los vértices de la línea, ordenados para que el extremo seleccionado sea el último, y borra la línea original.
3. Continúa digitalizando vértices con la orden LINEA.

## Características de la orden

| Tipo de orden | [Orden interactiva](continuar-linea.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Continuar polilínea |
| Barra de herramientas en la que aparece la orden | Polilíneas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [PITA](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md) — activa o desactiva las señales acústicas |
| Órdenes relacionadas | [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) |
| Nombre interno | {8BCECA78-3971-42ec-849B-F93B672A52E7} |

