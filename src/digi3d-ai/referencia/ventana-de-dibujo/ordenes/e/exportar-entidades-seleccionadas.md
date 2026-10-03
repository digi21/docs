# EXPORTAR\_ENTIDADES\_SELECCIONADAS

Exporta las geometrías seleccionadas a un archivo de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo de destino. Si no tiene extensión, la orden añade `.bind` | Si |

## Observaciones

Al ejecutar la orden ésta solicita que se seleccione una o varias entidades a exportar. Se pueden utilizar las órdenes de selección múltiple para seleccionar varias entidades simultáneamente.

Después de la selección, la orden exporta las entidades igual que [EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md): si no indicas el nombre del archivo, muestra un cuadro de diálogo para seleccionar el archivo de destino y su formato. Solo exporta las entidades no borradas, visibles, no virtuales y dentro de la zona de interés.

## Características de la orden

| Tipo de orden | [Orden interactiva](exportar-entidades-seleccionadas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Exportar entidades seleccionadas |
| Barra de herramientas en la que aparece la orden | Esta orden no aparece en ninguna barra de herramientas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {48605774-446F-4E9C-B594-4A9891A21D18} |

