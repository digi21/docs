# DIBUJA\_TEXTO\_EXTRAIDO\_SERVICIO\_MAPAS\_AZURE
<!-- id: dibuja-texto-extraido-servicio-mapas-azure-2 -->

Inserta un texto orientado con el nombre de la calle que devuelve el servicio de búsqueda inversa de Azure Maps para el punto pulsado.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Clave (_subscription key_) de tu cuenta de Azure Maps | Cadena sin espacios | No |

## Observaciones

La orden pide dos datos por cada texto:

1. El primer dato fija el punto de inserción. La orden convierte el punto a coordenadas geográficas y consulta el nombre de la calle a Azure Maps, en español.
2. El segundo dato fija la orientación. La orden inserta en el punto de inserción un texto con el nombre de la calle, girado el ángulo que forman los dos puntos.

Cada texto queda en una transacción propia, así que cada UNDO deshace un texto.

Si la consulta a Azure Maps falla, la orden escribe el error en el panel de resultados, emite el sonido de error y espera de nuevo un punto de inserción.

Si falta la clave, la orden emite el sonido de error, muestra un cuadro con el motivo y la forma de uso y no se inicia.

La orden es el guion de Python `dibuja_texto_extraido_servicio_mapas_azure.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Texto del callejero de Azure Maps](/digi3d-ai/programacion/python/panel-de-python/ejemplos/dibuja-texto-extraido-servicio-mapas-azure.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | dibuja\_texto\_extraido\_servicio\_mapas\_azure.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [dibuja\_texto\_extraido\_servicio\_mapas\_azure.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/dibuja_texto_extraido_servicio_mapas_azure.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DIBUJA\_TEXTO\_EXTRAIDO\_CALLEJERO\_CATASTRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-texto-extraido-callejero-catastro.md) |
