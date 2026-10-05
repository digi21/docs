# Códigos activos
<!-- id: codigos-activos -->

![Panel códigos activos mostrando como códigos activos el 050146 y 060533](../../../images/panelcodigosactivos.png)

Este panel permite seleccionar el código o códigos activos en caso de estar trabajando con multi codificación.

Al almacenar una geometría nueva, esta tendrá tantos códigos como códigos tengamos seleccionados en este panel.

Este panel se habilita únicamente si seleccionamos la opción **Panel de multi-codificación** en el campo [Interfaz para seleccionar código](../cuadros-de-dialogo/configuracion/diging/interfaz-para-seleccionar-codigo.md) de la configuración del programa.

## Barra de herramientas

Dispone de una barra de herramientas que permite interactuar con el contenido del panel.

### Botones

* **Añadir códigos**: ejecuta la orden [COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md), que añade códigos a la lista de códigos activos.
* **Quitar códigos**: quita el código seleccionado de la lista de códigos activos.
* **Seleccionar códigos**: ejecuta la orden [COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md), que sustituye la lista de códigos activos por los códigos que selecciones.
* **Copiar códigos de entidad**: ejecuta la orden [CLONAR_CODIGOS](../ventana-de-dibujo/ordenes/c/clonar-codigos.md), que sustituye la lista de códigos activos por los de la entidad que selecciones.
* **Añadir códigos de entidad**: ejecuta la orden [CLONAR_CODIGOS+](../ventana-de-dibujo/ordenes/c/clonar-codigos-mas.md), que añade a la lista de códigos activos los de la entidad que selecciones.

## Columnas

* **Código**: nombre del código.
* **Tabla** e **Id**: tabla de la base de datos y número de registro asociados al código, si se trabaja con base de datos.
* **Color**: color del código en la tabla de códigos.
* **Descripción**: descripción del código en la tabla de códigos.

## Base de datos

Si estamos trabajando con una base de datos, al seleccionar un determinado código en este panel se forzará al panel [Campos de la base de datos](/digi3d-ai/referencia/paneles/campos-de-la-base-de-datos.md) en la tabla de códigos para el código seleccionado.
