# Atributos Activos
<!-- id: atributos-activos -->


![Panel Atributos Activos con algunos atributos](../../../images/PanelAtributosActivos.png)


Este panel permite añadir atributos a asignar a la geometría.

Los atributos son pares clave-valor en los que se almacena información de cualquier tipo.

Digi3D.AI copia los atributos activos a las entidades nuevas que se almacenan con los códigos activos. Las entidades que ya existen no cambian. Para aplicar los atributos activos a entidades existentes, utiliza las órdenes [CAMB\_ATRIBUTOS](../ventana-de-dibujo/ordenes/c/camb_atributos.md) y [ACTUALIZA\_ATRIBUTOS](../ventana-de-dibujo/ordenes/a/actualiza_atributos.md). La orden [ANADE\_ATRIBUTO\_ACTIVO](../ventana-de-dibujo/ordenes/a/anade_atributo_activo.md) añade un atributo a esta lista.

Los números con decimales se muestran y se escriben con punto (`12.5`), sea cual sea la configuración regional de Windows. Un valor numérico con coma da un error de conversión.

Si borras el valor de un atributo en el panel, el atributo queda sin valor (NULL).



## Barra de herramientas

Dispone de una barra de herramientas que permite interactuar con el contenido del panel.

### Botones

* **Añadir atributo activo**: abre el cuadro de diálogo **Añadir atributo activo**.
* **Eliminar atributo seleccionado**: elimina el atributo activo seleccionado.
* **Limpiar**: elimina todos los atributos activos.
* **Clonar atributos**: ejecuta la orden [CLONAR\_ATRIBUTOS](../ventana-de-dibujo/ordenes/c/clonar_atributos.md), que sustituye los atributos activos por los de la geometría que selecciones.

Los botones están desactivados si no hay ninguna ventana de dibujo abierta.

## Cuadro de diálogo Añadir atributo activo

![Cuadro de diálogo Añadir atributo activo](../../../images/anadir-atributo-activo.png)

Añade un atributo a la lista de atributos activos.

* **Nombre del atributo**: nombre del atributo. Si ya hay un atributo activo con ese nombre, el cuadro de diálogo se cierra sin añadir el atributo y sin mostrar ningún aviso.
* **Tipo de valor**: tipo de dato del atributo: cadena de caracteres, entero con o sin signo de 8, 16, 32 o 64 bits, coma flotante de precisión simple o doble, o fecha. Al abrir el cuadro de diálogo está seleccionado **Cadena de caracteres**. El atributo se añade con un valor vacío o cero, que se cambia después en el panel.
* **Valor automático**: opcional. Una lista cerrada con las [macros de base de datos](../editor-de-tablas-de-codigos/pestanas/base-de-datos/macros-de-base-de-datos.md), como `%UID%` o `%ENTITY_AREA%`; no se puede escribir otro valor. Digi3D.AI calcula su valor al almacenar cada entidad y lo convierte al **Tipo de valor** elegido. Si el valor no se puede convertir a ese tipo, Digi3D.AI muestra un error cada vez que almacena una entidad, y la entidad recibe el texto de la macro. Un atributo con valor automático no se puede editar en el panel.
* **Aceptar**: añade el atributo. Está desactivado mientras el nombre esté vacío.
* **Cancelar**: cierra el cuadro de diálogo sin añadir el atributo.

## Mostrar el panel

Selecciona la opción del menú **Ventana/Atributos activos**.

