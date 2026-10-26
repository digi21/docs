# Archivo de archivos de referencia
<!-- id: archivo-de-archivos-de-referencia -->

Digi3D.AI guarda junto a cada archivo de dibujo un archivo con la lista de archivos de referencia del dibujo y, si se ha asociado al dibujo un proyecto fotogramétrico o un archivo de modelo fotogramétrico (`.d3d`), con la ruta de ese proyecto o de ese modelo. El nombre del archivo de referencias se forma con el nombre del archivo de dibujo, incluida la extensión, seguido de `.reference_files.json`: por ejemplo, `plano.bin.reference_files.json` para `plano.bin`. Así, `plano.bin` y `plano.dgn` de la misma carpeta tienen cada uno su propio archivo de referencias.

Lo que guarda el archivo de referencias depende de dos opciones de la categoría [Archivos de referencia](../cuadros-de-dialogo/configuracion/archivos-de-referencia/README.md) del cuadro de diálogo **Configuración**:

* [Almacenar los archivos de referencia en un archivo .reference_files.json](../cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-los-archivos-de-referencia-en-un-archivo-json.md), activada por defecto. Si desactivas esta opción, Digi3D.AI no guarda los archivos de referencia en el archivo de referencias ni carga los que tiene guardados.
* [Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia](../cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-el-proyecto-o-el-modelo-fotogrametrico.md), desactivada por defecto. Si no activas esta opción, Digi3D.AI no guarda la ruta del proyecto ni la del modelo, y no carga el proyecto ni abre el modelo que tenga guardados el archivo de referencias.

Para cada archivo de referencia, Digi3D.AI guarda:

* La ruta del archivo.
* El importador con el que se cargó.
* Los parámetros de importación, si el importador permite guardarlos.
* Las transformaciones de coordenadas horizontales y verticales que se eligieron al cargarlo.

Así, la próxima vez que se abra el archivo de dibujo, sus archivos de referencia se cargan sin volver a pedir los parámetros de importación ni las transformaciones.

## Proyecto o modelo fotogramétrico

Con la opción **Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia** activada, Digi3D.AI guarda una ruta absoluta en el archivo de referencias del archivo de dibujo con el que se abrió la última ventana de dibujo que ha tenido el foco:

* Al cargar un proyecto con los botones **Nuevo** o **Cargar** del panel [Proyecto fotogramétrico](../paneles/proyecto-fotogrametrico.md), o con la función Python [open_project](../../programacion/python/referencia/digi3d/functions.md#open_project), Digi3D.AI guarda la ruta del proyecto.
* Al abrir un archivo de modelo fotogramétrico (`.d3d`) cuando el panel Proyecto fotogramétrico no tiene ningún proyecto cargado, Digi3D.AI guarda la ruta del archivo de modelo. El archivo de modelo se puede abrir desde la pestaña [Sensores fotogramétricos](../cuadros-de-dialogo/nuevo-proyecto/sensores-fotogrametricos.md) del cuadro de diálogo **Nuevo proyecto** o con la función Python [open_photogrammetric_file](../../programacion/python/referencia/digi3d/functions.md#open_photogrammetric_file). Si el panel tiene un proyecto cargado, el modelo se abre en el punto de vista del proyecto y el archivo de referencias conserva la ruta del proyecto.

El archivo de referencias guarda la ruta de un proyecto o la de un modelo, no las dos: la ruta nueva sustituye a la ruta anterior del proyecto o del modelo. Digi3D.AI no guarda la ruta si no hay ninguna ventana de dibujo abierta, si el archivo de dibujo de la última ventana de dibujo que ha tenido el foco es de solo lectura o si el proyecto o el modelo se indican con el subcomando `proyecto` o `foto` de la línea de comandos.

### Al abrir un archivo de dibujo con un proyecto asociado

* Si el panel Proyecto fotogramétrico no tiene ningún proyecto cargado, Digi3D.AI carga el proyecto asociado.
* Si el panel tiene cargado el mismo proyecto, Digi3D.AI no vuelve a cargar el proyecto asociado.
* Si el panel tiene cargado otro proyecto, Digi3D.AI pregunta si quieres sustituir el proyecto del panel por el proyecto asociado al archivo de dibujo.
* Si el archivo del proyecto asociado no existe, Digi3D.AI añade una advertencia al panel [Tareas](../paneles/tareas.md) y no carga el proyecto.
* Si se está cargando un modelo en segundo plano, Digi3D.AI muestra el mensaje «No se puede cargar un proyecto mientras se está cargando un modelo en segundo plano. Espera a que termine.» y no carga el proyecto.
* Sin licencia de fotogrametría, Digi3D.AI no carga el proyecto asociado.

### Al abrir un archivo de dibujo con un modelo asociado

Al terminar de crear la ventana de dibujo, lo que hace Digi3D.AI con el modelo asociado depende de estas condiciones:

* Si no hay ninguna ventana fotogramétrica abierta, Digi3D.AI abre el modelo en una ventana fotogramétrica nueva.
* Si una ventana fotogramétrica tiene abierto el archivo de modelo asociado al archivo de dibujo, Digi3D.AI no lo vuelve a abrir.
* Si hay alguna ventana fotogramétrica abierta y ninguna tiene abierto el modelo asociado al archivo de dibujo, Digi3D.AI pregunta si quieres abrir el modelo asociado al archivo de dibujo en una ventana fotogramétrica nueva.
* Si el archivo de modelo no existe, Digi3D.AI añade una advertencia al panel [Tareas](../paneles/tareas.md) y no abre el modelo.
* Sin licencia de fotogrametría, Digi3D.AI solo abre el modelo si su sensor no necesita esa licencia, como el sensor de ortofoto.

Digi3D.AI no carga el proyecto ni abre el modelo asociados al abrir el archivo de dibujo con la función Python [open_drawing](../../programacion/python/referencia/digi3d/functions.md#abrir-un-dibujo), ni cuando la línea de comandos incluye el subcomando `proyecto` o el subcomando `foto`, que indican el proyecto o el modelo que se abre.

## Cuándo se modifica

* Con la opción **Almacenar los archivos de referencia en un archivo .reference_files.json** activada:
  * Al cargar un archivo de referencia en un archivo de dibujo que no es de solo lectura, se añade o se actualiza su entrada.
  * Al descargar un archivo de referencia con la orden [DEJAR](../ventana-de-dibujo/ordenes/d/dejar.md), al eliminarlo en el cuadro de diálogo [Selección de archivos de referencia](../cuadros-de-dialogo/seleccion-de-archivos-de-referencia.md) o al no localizarlo y optar por quitarlo, se elimina su entrada.
* Con la opción **Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia** activada, al cargar un proyecto o abrir un archivo de modelo como indica la sección [Proyecto o modelo fotogramétrico](#proyecto-o-modelo-fotogramétrico), Digi3D.AI guarda su ruta en lugar de la ruta anterior del proyecto o del modelo.
* Cuando el archivo de referencias no contiene entradas de archivos de referencia ni una ruta de proyecto o de modelo, Digi3D.AI borra el archivo de referencias.

Si al abrir el archivo de dibujo este contiene referencias que no están en el archivo `.reference_files.json`, Digi3D.AI las carga pidiendo los parámetros de importación.

Si el archivo de referencias está dañado, Digi3D.AI trata el archivo como vacío: solicita de nuevo los parámetros de importación de los archivos de referencia para cargarlos, y no carga el proyecto ni abre el modelo asociados al archivo de dibujo.

## Formato

Es un archivo JSON con tres elementos, que pueden faltar: `archivos`, que contiene una entrada por archivo de referencia; `proyecto`, con la ruta del proyecto fotogramétrico, y `modelo`, con la ruta del archivo de modelo fotogramétrico. El archivo nunca contiene a la vez `proyecto` y `modelo`.

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

Con un modelo asociado, el archivo contiene `"modelo": "C:\\Proyecto\\108-109.d3d"` en lugar de `proyecto`.
