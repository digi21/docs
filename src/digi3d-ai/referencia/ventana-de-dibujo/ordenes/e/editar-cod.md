# EDITAR\_COD
<!-- id: editar-cod -->

Edita los códigos de la entidad seleccionada.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita que selecciones una entidad y muestra el cuadro de diálogo de edición de códigos con los códigos de esa entidad. Si aceptas el cuadro de diálogo con cambios, la orden sustituye la entidad por una copia con los códigos editados. Si eliminas todos los códigos, la orden borra la entidad.

## Cuadro de diálogo Editor de códigos

![Cuadro de diálogo Editor de códigos con una entidad de tres códigos](../../../../../images/editor-de-codigos.png)

Esta orden muestra este cuadro de diálogo con los códigos de la entidad seleccionada.

* **Lista de códigos**: cada código de la entidad, con su **Tabla** y su **ID** en la base de datos, su color, su tipo y su descripción.
* **Subir** y **Bajar**: cambian el orden del código seleccionado.
* **Borrar**: quita el código seleccionado de la entidad.
* **Añadir nuevo**: abre el cuadro de diálogo [Seleccione códigos](../../../cuadros-de-dialogo/seleccione-codigos.md) para añadir códigos a la entidad.
* **Atributos**: los campos del registro de la base de datos enlazado con el código seleccionado. El título de la categoría es el nombre de la tabla. Los campos que no se pueden editar aparecen atenuados.
* **Avanzado**: abre el cuadro de diálogo **Editar parámetros avanzados del código**, que cambia la tabla y el ID del registro enlazado. Solo funciona si el código tiene un ID numérico.
* **Asignar ID**: abre el cuadro de diálogo **Asignar un ID existente**.
* **Nuevo ID**: al aceptar, se creará un registro nuevo en la base de datos para el código seleccionado.
* **Quitar**: desenlaza el código seleccionado de la base de datos y borra sus atributos.
* **Aceptar**: aplica los cambios a la entidad y crea en la base de datos los registros nuevos.
* **Cancelar**: cierra el cuadro de diálogo sin cambiar la entidad.

## Cuadro de diálogo Asignar un ID existente

![Cuadro de diálogo Asignar un ID existente](../../../../../images/asignar-un-id-existente.png)

Lo abre el botón de asignar un ID existente del editor de códigos. Enlaza el código seleccionado con un registro que ya existe en la base de datos, en lugar de crear un registro nuevo.

* **ID**: identificador del registro de la base de datos con el que se enlaza el código.
* **Aceptar**: enlaza el código con ese registro.
* **Cancelar**: cierra el cuadro de diálogo sin cambiar el enlace.

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](editar-cod.md)                                                                                                                              |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Repite automáticamente                           | Si                                                                                                                                                              |
| Opción del menú donde aparece la orden           | _Esta orden no tiene asociada ninguna opción de menú_                                                                                                           |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_                                                                                    |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                      |
| Variables relacionadas                           | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas                             | [ANADIR\_CODIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anadir-codigos.md)<br>[CAMB\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md)<br>[EDITAR\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar_atributos.md)<br>[SUSTITUYE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sustituye-cod.md) |
| Nombre interno | {973DB18A-7628-4254-9CB7-BABA38426AC4} |
