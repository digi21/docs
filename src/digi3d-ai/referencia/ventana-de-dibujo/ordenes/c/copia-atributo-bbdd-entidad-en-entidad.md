# COPIA\_ATRIBUTO\_BBDD\_ENTIDAD\_EN\_ENTIDAD
<!-- id: copia-atributo-bbdd-entidad-en-entidad -->

Copia el valor de un campo de la base de datos de una entidad en un campo de otra entidad.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del campo origen | No |
| 2 | Nombre del campo destino | No |

## Observaciones

1. Selecciona la entidad origen. Solo se pueden seleccionar entidades con algún código que tenga el campo origen.
2. Selecciona la entidad destino. Solo se pueden seleccionar entidades con algún código que tenga el campo destino.

La orden asigna el valor del campo origen al campo destino de todos los códigos de la entidad destino que tienen ese campo, y termina.

Si falta alguno de los dos parámetros, la orden emite un sonido de error, muestra un aviso y termina.

Si Digi3D.AI descarta la entidad con el atributo modificado (por ejemplo, por una restricción de la base de datos o de una extensión), la entidad original se conserva sin cambios.

## Características de la orden

| Tipo de orden | [Orden interactiva](copia-atributo-bbdd-entidad-en-entidad.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesBaseDatos.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ASIGNA\_ATRIBUTO\_BBDD\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md)<br>[ASIGNAR\_ANGULO\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md)<br>[ASIGNAR\_AZIMUT\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md)<br>[ASIGNAR\_DISTANCIA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md)<br>[CLONAR\_CAMPOS\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-campos-bbdd.md) |
| Nombre interno | {05DCB238-42A7-4072-8F1D-C4FB95DDC570} |
