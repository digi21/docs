# EXPLOTAR\_COMPLEJOS\_COD

Explota las entidades complejas quedando divididas por las cadenas de líneas que componen la entidad compleja.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código o códigos de las entidades complejas a explotar | Si |

## Observaciones

Esta orden está diseñada para las entidades complejas de archivos en formato DGN v8 de MicroStation.

Si no indicas parámetros, la orden muestra un cuadro de diálogo para seleccionar los códigos. La orden explota las entidades complejas visibles, dentro de la zona de interés y del archivo de dibujo activo que tienen alguno de los códigos. Cada entidad resultante conserva sus propios códigos. Al terminar, la orden muestra cuántas entidades ha explotado y cuántas ha creado.

## Características de la orden

| Tipo de orden | [Orden interactiva](explotar-complejos-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Complejos/Descomponer elementos complejos por código |
| Barra de herramientas en la que aparece la orden | Complejos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CREAR\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejo.md)<br>[CREAR\_COMPLEJOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejos-cod.md)<br>[EXPLOTAR\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLOTAR\_COMPLEJOS\_COD2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod2.md)<br>[EXPLOTAR\_POLIGONOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligonos-cod.md)<br>[EXPLOTAR\_PUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Nombre interno | {46DDEC37-E52A-4b1f-AE46-76CDF8BE8407} |

