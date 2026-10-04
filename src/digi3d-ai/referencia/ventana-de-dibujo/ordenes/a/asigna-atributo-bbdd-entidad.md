# ASIGNA\_ATRIBUTO\_BBDD\_ENTIDAD
<!-- id: asigna-atributo-bbdd-entidad -->

Asigna un nuevo valor a un campo en la BBDD para una entidad.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código | No |
| 2 | Nombre del campo | No |
| 3 | Valor | No |

## Observaciones

La orden comprueba al ejecutarse que se han pasado los tres parámetros, que el código tiene una tabla de base de datos asociada en la tabla de códigos, que esa tabla existe en el esquema de la base de datos y que tiene el campo indicado. Si falla alguna comprobación, muestra un mensaje de error y termina.

A continuación, la orden solicita que selecciones una entidad. Solo se pueden seleccionar entidades del modelo actual que tengan el código indicado. La orden asigna el valor al campo en los atributos de ese código de la entidad, convertido al tipo que ya tenga el campo, y termina.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesBaseDatos.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ASIGNAR\_ANGULO\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md)<br>[ASIGNAR\_AZIMUT\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md)<br>[ASIGNAR\_DISTANCIA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md)<br>[CAMBIAR\_VALORES\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambiar-valores-bbdd.md)<br>[COPIA\_ATRIBUTO\_BBDD\_ENTIDAD\_EN\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md) |
| Nombre interno | {B3980EF5-BD6D-4F06-ABB9-06AB2D141982} |
