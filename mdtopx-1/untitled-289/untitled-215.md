---
description: Cuadro de diálogo Web Map Services
---

# Web Map Services

[VirtuaLand Cargar](../fichas-de-herramientas/untitled-257/untitled-331.md)

A través de esta herramienta, se pueden descargar datos ráster a partir de servidores de libre distribución de datos geoespaciales. Esta operación se realiza a través de comunicación WMS, es decir, mediante consultas al servidor que deberá tener Web Map Services. Existen múltiples servidores pertenecientes a diversos organismos cartográficos que publican sus datos para que puedan ser descargados por los usuarios. De esta forma, conociendo la dirección de estos servidores, el usuario podrá configurar desde dónde descargar datos para la zona correspondiente al documento actual. Estos datos ayudarán en los trabajos a realizar de modelado de la superficie o de clasificación de una zona LiDAR, etc.

Los parámetros que requiere son los siguientes:

* **Dirección URL**: Se muestra un listado con los posibles servidores donde realizar la consulta para la descarga de datos. Por defecto, el programa incluye algunas direcciones pertenecientes a España, pero el usuario podrá modificar este listado mediante los botones que están situados en la parte inferior del listado: Nueva, Borrar o Editar
* **Información**: A continuación, se muestran una serie de campos con la información correspondiente a la dirección URL seleccionada en el listado superior. Esta información es extraída mediante la consulta realizada por lo que no se puede modificar. Estos campos son:
  * Descripción
  * Título
  * Propietario
  * Restricciones
* **Capas**: Se muestra un listado con las diferentes capas de información que se publican. El usuario deberá seleccionar qué capa desea descargar.
* **Sistemas de referencia**: Asimismo, se muestra un listado con los sistemas de referencia disponibles. El usuario deberá seleccionar el que coincide con las coordenadas del documento actual.
* **Fichero de salida**: Se deberá especificar un nombre de fichero salida. El documento resultante será un archivo ráster, por lo que se podrá salvar en los formatos TIFF, BMP o JPEG.
* **¿Cargar sobre esta vista?:** El usuario podrá seleccionar cómo desea visualizar los datos, presentándose las siguientes opciones:
  * No: No cargará el archivo generado en la vista del documento actual.
  * Como referencia: El archivo se cargará como una [referencia](../operaciones-con-archivos/untitled-14.md)
  * Como textura: El archivo se cargará como una [textura ](untitled-67/)estando sólo disponible esta opción si el documento actual es un MDT.

