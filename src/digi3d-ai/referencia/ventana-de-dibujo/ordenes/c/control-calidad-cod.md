# CONTROL\_CALIDAD\_COD

Realiza análisis de control de calidad por código

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | Códigos de las entidades a analizar. Un parámetro que empieza por `#` se sustituye por todos los códigos que tienen esa etiqueta en la tabla de códigos. | Si. Si no se especifica ningún parámetro, la orden muestra un cuadro de diálogo para seleccionar los códigos |

## Observaciones

La orden analiza las entidades del archivo de dibujo activo que no están borradas, son visibles, están en la zona de interés y tienen alguno de los códigos indicados.

## Características de la orden

| Tipo de orden | [Orden inmediata](control-calidad-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Control de Calidad/Analizar control de calidad/Por código... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CONTROL\_CALIDAD\_ENTIDADES\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-entidades-visibles.md)<br>[CONTROL\_CALIDAD\_SELECCION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-seleccion.md) |
| Nombre interno | {EF96CDAC-A31F-4A6C-84FA-BAEA89F6F61D} |
