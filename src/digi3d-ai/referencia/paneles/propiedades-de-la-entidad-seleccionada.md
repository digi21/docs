# Propiedades de la entidad seleccionada
<!-- id: propiedades-de-la-entidad-seleccionada -->

![Panel Propiedades de la entidad seleccionada con los atributos de base de datos de una línea](../../../images/panel-propiedades-de-la-entidad-seleccionada.png)

Este panel muestra los códigos y los atributos de la geometría seleccionada. Es de solo lectura: para modificar los atributos de base de datos se utiliza el panel [Editor de la base de datos 1,2,3,4](editor-de-la-base-de-datos-1-2-3-4.md).

El panel se actualiza cada vez que se selecciona una geometría y se vacía al deseleccionarla.

## Mostrar el panel

Se puede mostrar el panel mediante la opción del menú **Ventana/Propiedades de la entidad seleccionada**.

## Lista de códigos

La parte superior muestra los códigos de la geometría seleccionada, uno por fila:

* **Código**: nombre del código.
* **Tabla**: tabla de la base de datos a la que está enlazado el código.
* **ID**: identificador del registro de la base de datos enlazado con el código.
* **Color**: color del código en la tabla de códigos.
* **Descripción**: descripción del código en la tabla de códigos.

## Atributos

La parte inferior muestra:

* **Atributos**: los atributos de la geometría, si tiene alguno.
* Los campos de la base de datos del código seleccionado en la lista de códigos, en una categoría con el nombre de la tabla entre corchetes. Al seleccionar otro código de la lista se muestran los campos de su registro. Si el código no está enlazado con la base de datos, o el archivo de dibujo no tiene base de datos, no se muestra esta categoría.

Los campos marcados como no visibles en la tabla de códigos no se muestran, salvo que se active la opción [Mostrar campos no visibles en el panel Propiedades de la entidad seleccionada](../cuadros-de-dialogo/configuracion/base-de-datos/mostrar-campos-no-visibles.md) de la configuración.
