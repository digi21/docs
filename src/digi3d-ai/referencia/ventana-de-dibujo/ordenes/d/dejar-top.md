# DEJAR\_TOP

Descarga un fichero de topología, generado mediante la orden [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md), de los cargados en el momento de ejecutar la orden.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ruta completa del archivo de topología a descargar | Si |

## Observaciones

Si indicas el parámetro, la orden descarga esa topología sin mostrar ningún cuadro de diálogo. Si la ruta contiene espacios, escríbela entre comillas dobles.

Sin parámetro:

- Si no hay ninguna topología cargada, la orden muestra un mensaje de error y termina.
- Si solo hay una topología cargada, la orden la descarga directamente.
- Si hay varias, la orden muestra un cuadro de diálogo para seleccionar las topologías a descargar.

## Ejemplo

`dejar_top=C:\Bronchales\aste.top`

## Características de la orden

| Tipo de orden | [Orden inmediata](dejar-top.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Descargar topologías |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {EAB36190-29B7-42de-9AF0-D48298D5286B} |

