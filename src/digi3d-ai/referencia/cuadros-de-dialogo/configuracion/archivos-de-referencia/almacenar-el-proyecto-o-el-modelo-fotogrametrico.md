# Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia
<!-- id: almacenar-el-proyecto-o-el-modelo-fotogrametrico -->

Indica si Digi3D.AI asocia a cada archivo de dibujo un proyecto fotogramétrico o un archivo de modelo fotogramétrico (`.d3d`). Digi3D.AI guarda la ruta del proyecto o del modelo en el [archivo de archivos de referencia](../../../archivos/archivo-de-archivos-de-referencia.md#proyecto-o-modelo-fotogramétrico) del archivo de dibujo, y al abrir el archivo de dibujo carga ese proyecto o abre ese modelo.

## Valores posibles

* **Sí**. Si hay una ventana de dibujo abierta, Digi3D.AI guarda la ruta en el archivo `.reference_files.json` del archivo de dibujo de esa ventana, salvo si el archivo de dibujo es de solo lectura:
  * Al cargar un proyecto con los botones **Nuevo** o **Cargar** del panel [Proyecto fotogramétrico](../../../paneles/proyecto-fotogrametrico.md), o con la función Python [open_project](../../../../programacion/python/referencia/digi3d/functions.md#open_project), guarda la ruta del proyecto.
  * Al abrir un archivo de modelo fotogramétrico (`.d3d`) cuando el panel Proyecto fotogramétrico no tiene ningún proyecto cargado, guarda la ruta del archivo de modelo.

  Digi3D.AI no guarda las rutas del proyecto o del modelo que se indican con el subcomando `proyecto` o `foto` de la línea de comandos. Al abrir el archivo de dibujo, Digi3D.AI carga el proyecto asociado en el panel o abre el modelo asociado en una ventana fotogramétrica. La sección [Proyecto o modelo fotogramétrico](../../../archivos/archivo-de-archivos-de-referencia.md#proyecto-o-modelo-fotogramétrico) del archivo de archivos de referencia explica qué hace Digi3D.AI cuando el panel ya tiene un proyecto o hay otra ventana fotogramétrica abierta.
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
