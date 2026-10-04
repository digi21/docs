# Configuración de ratones, joysticks, mandos,...
<!-- id: configuracion-de-ratones-joysticks-y-mandos -->

Este cuadro de diálogo configura cómo mueven el cursor de la ventana fotogramétrica los ratones, joysticks y mandos que _Windows_ detecta como dispositivos HID.

## Abrir el cuadro de diálogo

Selecciona la opción del menú **Herramientas/Configuración de ratones, joysticks, mandos,...**. La opción solo aparece en el menú que muestra Digi3D.AI cuando no hay ninguna ventana de dibujo ni fotogramétrica abierta.

## Campos

* **Dispositivos HID detectados**: los ratones, joysticks y mandos conectados al equipo.
* **Configurar...**: abre los parámetros del dispositivo seleccionado: **Parámetros de ratón** para un ratón y **Parámetros del dispositivo** para cualquier otro dispositivo.
* **Salir**: cierra el cuadro de diálogo.

## Parámetros de ratón y Parámetros del dispositivo

La tabla de coeficientes indica cuánto cambia cada coordenada del cursor (filas X, Y y Z) al mover cada eje del dispositivo (columnas X, Y y Z). Por ejemplo, un 1 en la fila Y y la columna X hace que el movimiento del eje X del dispositivo cambie la coordenada Y del cursor. Un valor negativo invierte el sentido.

**Parámetros de ratón** añade:

* **Normal**: el eje X del ratón mueve la X del cursor, el eje Y mueve la Y en sentido contrario y el eje Z mueve la Z.
* **Ratón de Z**: el movimiento horizontal del ratón cambia la Z del cursor, y ningún eje mueve la X ni la Y. Sirve para dedicar un segundo ratón a la Z.
* **La rueda cambia el Factor de Zoom**: girar la rueda hacia delante ejecuta la orden ZOOMIN de la ventana fotogramétrica, y hacia atrás, ZOOMOUT.
* **Este ratón se utilizará exclusivamente para la ventana fotogramétrica**: Digi3D.AI guarda esta opción, pero la versión actual no la aplica.

Pulsa **Aceptar** para guardar los parámetros o **Cancelar** para descartarlos.

## Observaciones

* Los parámetros se guardan para el usuario de _Windows_ y para cada dispositivo por separado.
* Para asignar órdenes a los botones de un ratón, utiliza el cuadro de diálogo [Programar botones](programar-botones.md).
