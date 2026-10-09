# EXPLOTAR\_POLIGONOS\_COD
<!-- id: explotar-poligonos-cod -->

Divide varios polígonos, en todas las entidades que los forman.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

Si no indicas parámetros, la orden muestra un cuadro de diálogo para seleccionar los códigos. La orden explota los polígonos visibles, dentro de la zona de interés y del archivo de dibujo activo que tienen alguno de los códigos. Cada polígono se convierte en una línea con el contorno exterior y los códigos del polígono, y en una línea por cada hueco con los códigos del hueco.

Si Digi3D.AI descarta alguna de las entidades resultantes, la orden no explota ningún polígono y se conservan todos los originales.

## Características de la orden

| Tipo de orden | [Orden inmediata](explotar-poligonos-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Polígonos/Descomponer polígono por código... |
| Barra de herramientas en la que aparece la orden | Polígonos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [EXPLOTAR\_COMPLEJOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md)<br>[EXPLOTAR\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligono.md)<br>[EXPLOTAR\_PUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Nombre interno | {E72C8E5E-2C00-46E9-AAAA-A2E6E33C83EF} |
