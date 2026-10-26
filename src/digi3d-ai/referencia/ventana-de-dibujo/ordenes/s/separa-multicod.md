# SEPARA\_MULTICOD
<!-- id: separa-multicod -->

Divide cada entidad con varios códigos en varias entidades con un solo código cada una.

## Parámetros

No admite parámetros.

## Observaciones

Genera geometrías duplicadas.

La orden recorre el archivo de dibujo activo. Cada entidad visible, no borrada, dentro de la zona de interés y con más de un código se borra y se sustituye por una copia por cada uno de sus códigos. Al terminar, la orden muestra cuántas entidades ha borrado y cuántas ha creado.

Si Digi3D.AI descarta alguna de las copias nuevas, la orden no aplica el cambio y se conservan todas las entidades originales.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Más/Separar códigos generando geometría duplicada |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DESAGRUPAR\_ENTIDADES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desagrupar-entidades.md) |
| Nombre interno | {E1056769-9785-414E-BF51-6837CE331FA9} |

