# Archivo de archivos de referencia
<!-- id: archivo-de-archivos-de-referencia -->

Digi3D.AI guarda junto a cada archivo de dibujo un archivo con la lista de archivos de referencia del dibujo y, si se ha asociado un proyecto fotogramétrico al dibujo, con la ruta de ese proyecto. El nombre del archivo de referencias se forma con el nombre del archivo de dibujo, incluida la extensión, seguido de `.reference_files.json`: por ejemplo, `plano.bin.reference_files.json` para `plano.bin`. Así, `plano.bin` y `plano.dgn` de la misma carpeta tienen cada uno su propio archivo de referencias.

Para cada archivo de referencia, Digi3D.AI guarda:

* La ruta del archivo.
* El importador con el que se cargó.
* Los parámetros de importación, si el importador permite guardarlos.
* Las transformaciones de coordenadas horizontales y verticales que se eligieron al cargarlo.

Así, la próxima vez que se abra el archivo de dibujo, sus archivos de referencia se cargan sin volver a pedir los parámetros de importación ni las transformaciones.

## Proyecto fotogramétrico

Cuando cargas un proyecto con los botones **Nuevo** o **Cargar** del panel [Proyecto fotogramétrico](../paneles/proyecto-fotogrametrico.md), o con la función Python [open_project](../../programacion/python/referencia/digi3d/functions.md#open_project), Digi3D.AI guarda la ruta absoluta del proyecto en el archivo de referencias del archivo de dibujo con el que se abrió la última ventana de dibujo que ha tenido el foco. Digi3D.AI no guarda la ruta si no hay ninguna ventana de dibujo abierta o si el archivo de dibujo de la última ventana de dibujo que ha tenido el foco es de solo lectura.

Al abrir el archivo de dibujo, si su archivo de referencias tiene la ruta de un proyecto:

* Si el panel Proyecto fotogramétrico no tiene ningún proyecto cargado, Digi3D.AI carga el proyecto asociado.
* Si el panel tiene cargado el mismo proyecto, Digi3D.AI no vuelve a cargar el proyecto asociado.
* Si el panel tiene cargado otro proyecto, Digi3D.AI pregunta si quieres sustituir el proyecto del panel por el proyecto asociado al archivo de dibujo.
* Si el archivo del proyecto asociado no existe, Digi3D.AI añade una advertencia al panel [Tareas](../paneles/tareas.md) y no carga el proyecto.
* Si se está cargando un modelo en segundo plano, Digi3D.AI muestra el mensaje «No se puede cargar un proyecto mientras se está cargando un modelo en segundo plano. Espera a que termine.» y no carga el proyecto.

Digi3D.AI no carga el proyecto asociado sin licencia de fotogrametría, al abrir el archivo de dibujo con la función Python [open_drawing](../../programacion/python/referencia/digi3d/functions.md#abrir-un-dibujo) ni cuando la línea de comandos incluye el subcomando `proyecto`, que indica el proyecto que se carga.

## Cuándo se modifica

* Al cargar un archivo de referencia en un archivo de dibujo que no es de solo lectura, se añade o se actualiza su entrada.
* Al descargar un archivo de referencia con la orden [DEJAR](../ventana-de-dibujo/ordenes/d/dejar.md), al eliminarlo en el cuadro de diálogo [Selección de archivos de referencia](../cuadros-de-dialogo/seleccion-de-archivos-de-referencia.md) o al no localizarlo y optar por quitarlo, se elimina su entrada.
* Al cargar un proyecto fotogramétrico como indica la sección [Proyecto fotogramétrico](#proyecto-fotogramétrico), Digi3D.AI guarda la ruta del proyecto en el archivo de referencias en lugar de la ruta anterior.
* Cuando el archivo de referencias no contiene entradas de archivos de referencia ni una ruta de proyecto, Digi3D.AI borra el archivo de referencias.

Si al abrir el archivo de dibujo este contiene referencias que no están en el archivo `.reference_files.json`, Digi3D.AI las carga pidiendo los parámetros de importación.

Si el archivo de referencias está dañado, Digi3D.AI trata el archivo como vacío: solicita de nuevo los parámetros de importación de los archivos de referencia para cargarlos y no carga el proyecto asociado al archivo de dibujo.

## Formato

Es un archivo JSON con dos elementos, que pueden faltar: `archivos`, que contiene una entrada por archivo de referencia, y `proyecto`, con la ruta del proyecto fotogramétrico:

```json
{
  "archivos": [
    {
      "ruta": "C:\\Proyecto\\ortofoto.ecw",
      "importador": "{GUID del importador}",
      "parametros": { "nombre": "valor" },
      "transformaciones": [ { "origen": "...", "destino": "...", "codigo": 1 } ],
      "transformacionesVerticales": [ { "origen": "...", "destino": "...", "wkt": "..." } ]
    }
  ],
  "proyecto": "C:\\Proyecto\\vuelo.prj"
}
```
