# Macro
<!-- id: macro -->

![Barra de herramientas Macro](../../../images/macro.png)

Graba una secuencia de órdenes para almacenarla en una pulsación de tecla o en un archivo de macroinstrucciones.

## Botones

* **Grabar macro**: a partir de este momento, Digi3D.AI anota cada orden que ejecutas. La ventana de dibujo muestra un recuadro rojo mientras se graba la macro.
* **Parar la grabación de la macro...**: termina la grabación y abre el cuadro de diálogo **Macro preparada para ser almacenada**. Si no se ha grabado ninguna orden, no hace nada más.

Digi3D.AI anota cada orden cuando la orden termina. Una orden que sigue activa al pulsar **Parar la grabación de la macro...** no se anota. Algunas órdenes internas de Digi3D.AI no se anotan nunca.

## Cuadro de diálogo Macro preparada para ser almacenada

![Cuadro de diálogo Macro preparada para ser almacenada](../../../images/macro-preparada-para-ser-almacenada.png)

Elige dónde se almacena la macro:

* **Almacenar la macro en una pulsación de tecla**: Digi3D.AI escribe las órdenes grabadas en un archivo temporal y ejecuta la orden [TECLA](../ventana-de-dibujo/ordenes/t/tecla.md) con ese archivo. TECLA pide que pulses una tecla y abre su cuadro de diálogo con la secuencia de órdenes grabada. Cada vez que pulses esa tecla se ejecutará la macro. Si no se puede crear el archivo temporal, Digi3D.AI muestra el error «Error al crear el archivo temporal...».
* **Crear un archivo de macroinstrucciones**: abre el cuadro de diálogo **Almacenar archivo de macro-instrucciones**. El archivo se podrá ejecutar después como una orden más.

## Cuadro de diálogo Almacenar archivo de macro-instrucciones

![Cuadro de diálogo Almacenar archivo de macro-instrucciones](../../../images/almacenar-archivo-de-macro-instrucciones.png)

* **Directorio destino**: carpeta donde se crea el archivo. No se puede editar aquí. Si hay un proyecto activo con su propio directorio de macroinstrucciones, es ese directorio. Si no, es el de la opción [Directorio de macroinstrucciones](../cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) de la sección **DigiNG** de **Herramientas/Configuración**. Si no hay ninguna carpeta indicada, Digi3D.AI avisa de que no se puede almacenar el archivo y no abre este cuadro de diálogo.
* **Nombre del archivo a generar**: nombre del archivo. Digi3D.AI le antepone `@`, el prefijo de los archivos de macroinstrucciones. Digi3D.AI no comprueba el nombre ni le añade extensión.
* **Contenido del archivo a generar**: las órdenes grabadas, una por línea. Puedes modificarlas antes de guardar.
* **Aceptar**: crea el archivo con el contenido del campo anterior. Si ya existe un archivo con ese nombre, lo sustituye. Si no se puede crear el archivo, Digi3D.AI muestra el mensaje de error del sistema operativo.
* **Cancelar**: cierra el cuadro de diálogo sin crear el archivo.
