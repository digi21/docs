# Versión de ArcGIS
<!-- id: version-de-arcgis -->

Este cuadro de diálogo aparece al importar un archivo XML de definición de espacio de trabajo de ArcGIS con cualquiera de estas dos opciones, después de elegir los archivos:

* **Base de datos/Tablas/Importar esquema de archivo de definición de espacio de trabajo de ArcGIS...**, que crea las tablas del archivo. Consulta el menú [Base de datos](base-de-datos/README.md).
* **Códigos/Importar códigos de archivo de definición de espacio de trabajo de ArcGIS...**, que añade los códigos del archivo. Consulta el menú [Códigos](codigos/README.md).

Los archivos de definición de espacio de trabajo de ArcGIS cambian el espacio de nombres en el que guardan los nodos según la versión de ArcGIS. El editor necesita esa versión para encontrar las clases de entidad del archivo.

## Controles

* **Versión**: el campo que sigue a `<esri:Workspace xmlns:esri='http://www.esri.com/schemas/ArcGIS/`. Escribe la versión tal como aparece en la primera línea del archivo XML, que puedes abrir con cualquier editor de textos. El valor por defecto es `10.4`; el editor recuerda el último valor aceptado.
* **Aceptar**: guarda la versión y continúa la importación. Con **Códigos/Importar códigos...**, a continuación se abre el cuadro [Selecciona el estilo](../pestanas/selecciona-el-estilo.md) con el título **Selecciona el estilo a asignar a los puntos**.
* **Cancelar**: cancela la importación.

Si la versión no coincide con la del archivo, el editor no encuentra ninguna clase de entidad y no importa nada de ese archivo.
