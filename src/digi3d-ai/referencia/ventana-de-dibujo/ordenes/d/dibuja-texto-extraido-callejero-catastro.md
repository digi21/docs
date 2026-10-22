# DIBUJA\_TEXTO\_EXTRAIDO\_CALLEJERO\_CATASTRO
<!-- id: dibuja-texto-extraido-callejero-catastro-2 -->

Inserta en el punto pulsado un texto con la calle y el número del inmueble que devuelve el servicio de consulta por coordenadas del Catastro de España.

## Parámetros

No admite parámetros.

## Observaciones

Cada vez que pulsas el botón de dato, la orden envía las coordenadas del punto al servicio web del Catastro e inserta en el punto un texto con el campo `ldt` de la respuesta. Cada texto queda en una transacción propia, así que cada UNDO deshace un texto.

La orden solo se inicia si el código EPSG horizontal de la ventana de dibujo es uno de los que admite el servicio: 4230, 4326, 4258, 32627, 32628, 32629, 32630, 32631, 25829, 25830, 25831, 23029, 23030 o 23031. Si no lo es, la orden escribe un mensaje en el panel de resultados y no se inicia.

Si el servicio responde con un error, la orden escribe el error en el panel de resultados, emite el sonido de error y muestra un cuadro de mensaje.

La orden es el guion de Python `dibuja_texto_extraido_callejero_catastro.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Texto del callejero del Catastro](/digi3d-ai/programacion/python/panel-de-python/ejemplos/dibuja-texto-extraido-callejero-catastro.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | dibuja\_texto\_extraido\_callejero\_catastro.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [dibuja\_texto\_extraido\_callejero\_catastro.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/dibuja_texto_extraido_callejero_catastro.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DIBUJA\_TEXTO\_EXTRAIDO\_SERVICIO\_MAPAS\_AZURE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-texto-extraido-servicio-mapas-azure.md) |
