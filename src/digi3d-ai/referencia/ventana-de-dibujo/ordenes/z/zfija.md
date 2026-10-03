# ZFIJA

Asigna a todos los vértices de la geometría/s seleccionada/s una misma coordenada Z, múltiplo de la equidistancia.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

La orden toma la mediana de las Z de los vértices de la geometría, la redondea al múltiplo de la [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) más cercano y asigna esa Z a todos los vértices. Las geometrías que ya tienen todos sus vértices a una misma Z múltiplo de la equidistancia no se modifican.

Sin parámetros, la orden pide que selecciones una o varias geometrías y se repite hasta que la canceles.

Con parámetros, la orden no pide selección: procesa todas las geometrías visibles y dentro de la zona de interés que tienen alguno de los códigos indicados, y termina.

## Características de la orden

| Tipo de orden | [Orden interactiva](zfija.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/ZFija (asignar la coordenada Z de vértices al múltiplo de equidistancia más cercano)/Geometrías seleccionadas |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — equidistancia de curvas de nivel<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {3E17788B-48FA-4A1B-9EAC-F65E66CDAE30} |
