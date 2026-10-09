# Editor de tablas de códigos
<!-- id: editor-de-tablas-de-codigos -->

![Programa Editor de tablas de códigos](../../../images/editordetablascodigos.png)

El editor de tablas de códigos (DigiTab) crea y edita tablas de códigos (`.tab.xml`). La ventana tiene una barra de [menús](menus/README.md), una fila de [pestañas](pestanas/README.md) y tres botones.

## Botones

* **Aplicar**: aplica a la tabla de códigos los cambios de la pestaña visible. Se habilita cuando la pestaña tiene cambios sin aplicar.
* **Aceptar**: aplica los cambios pendientes de todas las pestañas; si la tabla tiene cambios sin guardar, pregunta si guardarlos, y cierra el editor. Las pestañas Base de datos, Estilos y Códigos preguntan antes si aplicar sus cambios.
* **Cancelar**: cierra el editor sin aplicar ni guardar los cambios.

Al cambiar de pestaña, las pestañas Colores y Topologías aplican sus cambios, y Base de datos, Estilos y Códigos preguntan si aplicarlos. El resto conserva sus cambios sin aplicar hasta que pulses **Aplicar** o **Aceptar**.

Los cambios aplicados están en la tabla de códigos abierta, pero no en el archivo hasta que la guardas con **Archivo/Guardar**.
