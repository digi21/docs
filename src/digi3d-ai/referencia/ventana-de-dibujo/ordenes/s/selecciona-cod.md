# SELECCIONA\_COD
<!-- id: selecciona-cod -->

Selecciona todas las entidades que tengan entre sus códigos los seleccionados.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1...n | Códigos a seleccionar | Nombre de código, o `#etiqueta` para todos los códigos con esa etiqueta | Si; si no se indica ningún código, la orden muestra un cuadro de diálogo para seleccionar los códigos |

## Observaciones

Es necesario que se esté ejecutando previamente una orden que admita selección múltiple.

La orden busca en el archivo de dibujo activo las entidades visibles y dentro de la zona de interés. Las entidades borradas solo se seleccionan si está activada la variable [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](selecciona-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Seleccionar por código... |
| Barra de herramientas en la que aparece la orden | Selecciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ENTIDADES\_DE\_INTERES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/entidades-de-interes.md)<br>[SELECCIONA\_EXPRESION\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md)<br>[SELECCIONA\_POR\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-por-atributo.md) |
| Nombre interno | {EDFDC360-67F1-4954-B873-1FA761933B79} |

