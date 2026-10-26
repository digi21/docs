# CLONAR\_CAMPOS\_BBDD
<!-- id: clonar-campos-bbdd -->

Clona los campos de base de datos de la geometría seleccionada.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita que selecciones una geometría. Para cada campo de base de datos de los códigos activos, la orden copia el valor del campo con el mismo nombre en los códigos de la geometría seleccionada. Si varios códigos de la geometría tienen ese campo, la orden usa el valor del primer código. Los campos de los códigos activos que no existen en la geometría seleccionada conservan su valor.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Más/Clonar los campos de BBDD de una entidad |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CLONAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar.md)<br>[CLONAR\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md)<br>[CLONAR\_CÓDIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos.md)<br>[CLONAR\_CÓDIGOS+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos-mas.md)<br>[COPIA\_ATRIBUTO\_BBDD\_ENTIDAD\_EN\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md) |
| Nombre interno | {3AF25FE5-B09A-457B-A2D7-18203A4FF970} |
