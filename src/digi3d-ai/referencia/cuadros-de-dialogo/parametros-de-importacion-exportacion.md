# Parámetros de importación/Exportación
<!-- id: parametros-de-importacion-exportacion -->

![Cuadro de diálogo Parámetros de importación/Exportación](../../../images/parametros-de-importacion-exportacion.png)

Digi3D.AI muestra este cuadro de diálogo cuando una orden carga, importa o exporta un archivo cuyo importador/exportador necesita parámetros, por ejemplo un archivo DWG. También lo muestra al abrir un archivo de dibujo cuyos archivos de referencia guardados no tienen parámetros guardados. No lo muestra en estos casos:

* El formato no tiene parámetros que pedir al usuario.
* El formato tiene parámetros por defecto, fijados con **Defecto** o con la orden [PARAMETROS\_IMPORTACIÓN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md).

Los parámetros de cada formato se describen en su página, dentro de [Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md).

## Campos

* **Digi3D.AI va a crear/cargar el siguiente archivo**: la ruta del archivo que se va a crear o cargar. No se puede modificar. En algunas operaciones, como la orden [CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md) con el nombre del archivo como parámetro, muestra solo la extensión del archivo.
* **Haz clic aquí para aprender a evitar que Digi3D.AI muestre este cuadro de diálogo**: abre la página de la orden [PARAMETROS\_IMPORTACIÓN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md), que fija los parámetros de un formato sin mostrar este cuadro de diálogo.
* **Propiedades de Digi3D.AI**
  * **Defecto**: con **Sí**, al pulsar **Aceptar** Digi3D.AI guarda estos parámetros como parámetros por defecto del formato. Los usa para los siguientes archivos del mismo formato sin mostrar el cuadro de diálogo, hasta que se cierra Digi3D.AI. La orden `PARAMETROS_IMPORTACION` sustituye estos parámetros por los suyos. Algunos formatos no admiten esta opción y vuelven a mostrar el cuadro de diálogo. Al iniciar Digi3D.AI vale **No**; después el cuadro de diálogo muestra el último valor elegido, hasta que se cierra Digi3D.AI.
* **Propiedades del importador/exportador**: los parámetros del formato del archivo.
* **Aceptar**: abre, importa o exporta el archivo con estos parámetros.
* **Cancelar**: cancela la operación. Excepción: en la orden CARGA\_F con el nombre del archivo como parámetro, el cuadro de diálogo se muestra otra vez con la ruta completa del archivo; **Cancelar** en ese segundo cuadro cancela la carga.
