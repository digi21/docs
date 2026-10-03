# BORRA\_COD\_V

Borra todas aquellas entidades que tengan un código igual al teclado por el usuario y que además estén asociadas a una ventana, bien en el interior de la ventana, bien en solape con ella o bien que se corten con la ventana misma.

## Parámetros

No admite parámetros.

## Observaciones

La orden pide primero que selecciones la línea que actúa de borde (ventana). La línea tiene que existir en el dibujo antes de ejecutar la orden.

No se borrarán aquellos códigos que estén apagados \([OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)\).

Después de seleccionar la ventana, la orden muestra un cuadro de diálogo en el que se eligen los códigos y el **Modo de búsqueda**:

| Modo de búsqueda | Descripción |
| :--- | :--- |
| Interior | Borra las entidades que están totalmente dentro de la ventana |
| Corte | Borra las entidades que están dentro de la ventana y corta las líneas que la atraviesan: borra el trozo interior y conserva los trozos exteriores |
| Solape | Borra las entidades que tienen al menos un punto dentro de la ventana |

La orden busca en todos los archivos de dibujo cargados. Una entidad se borra entera si tiene cualquiera de los códigos elegidos, aunque tenga además otros códigos. Si no hay ninguna entidad que borrar, suena el aviso de error.

Para elegir los códigos se puede utilizar una de estas opciones:

* Cargar de archivo...: carga un archivo de muestra de códigos previamente generado y guardado.
* Guardar en archivo...: podemos guardar mediante un nombre, la lista de códigos seleccioanada para una posterior utilización. Los archivos generados estarán en formato .xml.
* Seleccionar de forma manual los códigos que queremos borrar.

## Características de la orden

| Tipo de orden | [Orden interactiva](borra-cod-v.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Mas/Cortar por polígono y código... |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {89AC83BA-9BC7-4c4d-8E5C-5384E892EB0F} |

