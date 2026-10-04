# CAMBIAR\_VALORES\_BBDD
<!-- id: cambiar-valores-bbdd -->

Cambia valores en la BBDD asociada con el archivo de dibujo.

## Parámetros

No admite parámetros.

## Observaciones

La orden muestra un cuadro de diálogo para seleccionar los códigos y, debajo, los datos del cambio: el campo, el valor antiguo y el valor nuevo.

La orden recorre las entidades visibles, no borradas y dentro de la zona de interés del archivo de dibujo activo. En cada código de esas entidades que coincide con uno de los seleccionados, sustituye el valor del campo por el valor nuevo si el valor actual es igual al valor antiguo. Con la casilla de cualquier valor, sustituye el valor sea cual sea. Con la casilla de identificador único, asigna a cada código un GUID nuevo en lugar del valor nuevo.

Con la casilla de valor antiguo nulo, solo cambia los códigos en los que el campo está vacío (nulo). Con la casilla de valor nuevo nulo, deja el campo vacío en lugar de asignar el valor nuevo o el GUID.

## Características de la orden

| Tipo de orden | [Orden inmediata](cambiar-valores-bbdd.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Base de Datos/Cambiar valores BBDD... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesBaseDatos.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ASIGNA\_ATRIBUTO\_BBDD\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md) |
| Nombre interno | {3E045845-BD0D-45AB-8050-91448BF532A3} |
