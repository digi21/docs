# REDONDEA\_COORDENADA

Sustituye por un valor dado las coordenadas X o Y de los vértices de las líneas y polígonos seleccionados que difieren de ese valor como máximo una tolerancia.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Valor | No |
| 2 | Sigma (tolerancia) | No |

## Observaciones

Si faltan parámetros, la orden emite un sonido de error y termina.

Para cada vértice de la geometría seleccionada, incluidos los de los huecos de los polígonos, si la diferencia en valor absoluto entre la X y el valor es menor o igual que la tolerancia, la X toma el valor. La Y se trata del mismo modo. La Z no cambia.

Por ejemplo, `REDONDEA_COORDENADA=20 1e-5` convierte una X de 20,000004 en 20.

La orden admite selección simple y selección múltiple, y solo modifica líneas y polígonos del modelo actual.

## Características de la orden

| Tipo de orden | [Orden interactiva](redondea-coordenada.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {EDC67F10-FE62-4A1A-939B-DC6D565B9446} |
