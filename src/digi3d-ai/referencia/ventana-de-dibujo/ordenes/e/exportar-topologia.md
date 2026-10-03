# EXPORTAR\_TOPOLOGIA

Exporta a un archivo, como polígonos, las topologías cargadas que se seleccionen.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 … N | Nombre de una topología cargada a incluir. Si el nombre tiene espacios, escríbelo entre comillas | — | Si |

## Observaciones

La orden muestra un cuadro de diálogo para seleccionar el archivo de destino y su formato. En ese cuadro de diálogo aparece una casilla por cada topología indicada en los parámetros, marcada si la topología está cargada y desmarcada si no lo está.

La orden exporta, de cada topología marcada, los recintos válidos que tienen centroide asociado. Cada recinto se exporta como un polígono con sus huecos. El código del polígono y el cálculo de su Z salen de la configuración de la topología en la tabla de códigos.

## Características de la orden

| Tipo de orden | [Orden inmediata](exportar-topologia.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Exportar topologías cargadas como polígonos a archivo/Seleccionando topologías... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {5512E8A0-BB41-43B5-A95C-8B714C00407A} |
