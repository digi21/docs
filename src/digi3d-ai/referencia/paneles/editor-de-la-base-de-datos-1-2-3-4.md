# Editor de la base de datos 1,2,3,4
<!-- id: editor-de-la-base-de-datos-1-2-3-4 -->

![Panel Editor de la base de datos 1 mostrando los registros de la tabla T0011 del archivo Abejeras.bind](../../../images/editordelabasededatos.png)

Permite consultar y editar la base de datos conectada con un determinado archivo de dibujo.

Hay cuatro paneles iguales (**Editor de la base de datos 1** a **4**), de modo que puedes tener a la vista varias tablas a la vez.

## Barra de herramientas

* **Archivo**: archivo de dibujo cuya base de datos se muestra. El desplegable contiene el archivo de dibujo principal y los archivos de referencia cargados.
* **Mostrar registros de la tabla**: tabla de la base de datos cuyos registros se muestran.
* **Expresión Python**: solo aparece si en [Tablas/Registros a mostrar](../cuadros-de-dialogo/configuracion/editor-de-la-base-de-datos/tablas-registros-a-mostrar.md) está seleccionada la opción **Mostrar geometrías que cumplan expresión Python**. Se muestran los registros de las geometrías que cumplen la expresión.
* **Regenerar**: vuelve a leer los registros de la tabla seleccionada. Se habilita al seleccionar una tabla.

## Registros

Cada fila es un registro de la tabla y cada columna, un campo. Puedes arrastrar la cabecera de una columna a la zona superior para agrupar los registros por ese campo.

* Al hacer doble clic sobre un registro, la ventana de dibujo actúa según la opción [Acción al hacer doble clic](../cuadros-de-dialogo/configuracion/editor-de-la-base-de-datos/accion-al-hacer-doble-clic.md).
* Al pulsar con el botón derecho del ratón sobre los registros seleccionados, el menú contextual permite enviar la selección a la orden activa.
* Los valores solo se pueden modificar si la opción [Permitir editar la base de datos](../cuadros-de-dialogo/configuracion/editor-de-la-base-de-datos/permitir-editar-la-base-de-datos.md) está activada.

Las tablas y los registros que se muestran dependen de la opción [Tablas/Registros a mostrar](../cuadros-de-dialogo/configuracion/editor-de-la-base-de-datos/tablas-registros-a-mostrar.md).

## Mostrar el panel

Se puede mostrar el panel de las siguientes formas:

* Pulsando el botón correspondiente en la [barra de herramientas Paneles](../barras-de-herramientas/paneles.md).
* Mediante la opción del menú **Base de Datos/Editor de la base de datos**.
