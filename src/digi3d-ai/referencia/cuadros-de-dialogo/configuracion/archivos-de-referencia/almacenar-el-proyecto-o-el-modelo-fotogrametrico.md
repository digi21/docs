# Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia
<!-- id: almacenar-el-proyecto-o-el-modelo-fotogrametrico -->

Indica si Digi3D.AI asocia a cada archivo de dibujo un proyecto fotogramétrico, con el modelo del proyecto cargado en la ventana fotogramétrica, o un archivo de modelo fotogramétrico (`.d3d`). Digi3D.AI guarda la ruta del proyecto y el nombre del modelo, o la ruta del archivo de modelo, en el [archivo de archivos de referencia](../../../archivos/archivo-de-archivos-de-referencia.md#proyecto-o-modelo-fotogramétrico) del archivo de dibujo. Al abrir el archivo de dibujo, Digi3D.AI carga el proyecto y el modelo asociados, o abre el archivo de modelo asociado, en los casos que describe esa sección del archivo de archivos de referencia.

## Valores posibles

* **Sí**. Si hay una ventana de dibujo abierta, Digi3D.AI guarda la ruta en el archivo `.reference_files.json` del archivo de dibujo de esa ventana, salvo si el archivo de dibujo es de solo lectura:
  * Al cargar un proyecto con los botones **Nuevo** o **Cargar** del panel [Proyecto fotogramétrico](../../../paneles/proyecto-fotogrametrico.md), o con la función Python [open_project](../../../../programacion/python/referencia/digi3d/functions.md#open_project), guarda la ruta del proyecto.
  * Cuando la ventana fotogramétrica activa carga un modelo del proyecto, o cuando una ventana fotogramétrica con un modelo del proyecto recibe el foco, guarda la ruta del proyecto, el nombre del modelo y su punto de vista.
  * Al abrir un archivo de modelo fotogramétrico (`.d3d`) cuando el panel Proyecto fotogramétrico no tiene ningún proyecto cargado, guarda la ruta del archivo de modelo.
  * Al abrir un archivo de dibujo cuyo `.reference_files.json` no tiene ruta de proyecto ni de modelo, guarda la ruta del proyecto cargado en el panel y el modelo del proyecto de la ventana fotogramétrica activa o, sin proyecto cargado, la ruta del archivo de modelo de esa ventana.

  Digi3D.AI no guarda la ruta del archivo de modelo que se indica con el subcomando `foto` de la línea de comandos. Al abrir el archivo de dibujo, Digi3D.AI carga el proyecto y el modelo asociados, o abre el archivo de modelo asociado, según las condiciones que describe la sección [Proyecto o modelo fotogramétrico](../../../archivos/archivo-de-archivos-de-referencia.md#proyecto-o-modelo-fotogramétrico) del archivo de archivos de referencia.
* **No**. Digi3D.AI no guarda la ruta del proyecto ni la del modelo, y al abrir un archivo de dibujo no carga el proyecto ni abre el modelo que tenga guardados su archivo `.reference_files.json`. El cuadro de abrir archivo del botón **Cargar** del panel Proyecto fotogramétrico propone el último proyecto cargado. Es el valor por defecto.

Esta opción no afecta a los archivos de referencia. Los archivos de referencia dependen de la opción [Almacenar los archivos de referencia en un archivo .reference_files.json](almacenar-los-archivos-de-referencia-en-un-archivo-json.md).

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `AlmacenarProyectoOModeloFotogrametricoComoArchivoReferencia` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
