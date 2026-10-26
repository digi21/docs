# Almacenar los archivos de referencia en un archivo .reference_files.json
<!-- id: almacenar-los-archivos-de-referencia-en-un-archivo-json -->

Indica si Digi3D.AI guarda los archivos de referencia de cada archivo de dibujo en su [archivo de archivos de referencia](../../../archivos/archivo-de-archivos-de-referencia.md) (`<archivo de dibujo>.reference_files.json`), con los parámetros de importación y las transformaciones de coordenadas elegidas al cargarlos.

## Valores posibles

* **Sí**. Al cargar un archivo de referencia en un archivo de dibujo que no es de solo lectura, Digi3D.AI guarda su entrada en el archivo `.reference_files.json`. Al abrir el archivo de dibujo, Digi3D.AI carga los archivos de referencia guardados sin volver a pedir los parámetros de importación ni las transformaciones. Es el valor por defecto.
* **No**. Digi3D.AI no guarda los archivos de referencia en el archivo `.reference_files.json` ni carga los que ese archivo tiene guardados. Al abrir un archivo de dibujo, Digi3D.AI solo carga los archivos de referencia que guarda el propio formato del archivo de dibujo, como BIND o DGN, y pide sus parámetros de importación.

Esta opción no afecta a la ruta del proyecto fotogramétrico ni a la del archivo de modelo fotogramétrico. El almacenamiento de la ruta del proyecto o del archivo de modelo depende de la opción [Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia](almacenar-el-proyecto-o-el-modelo-fotogrametrico.md).

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `AlmacenarArchivosReferenciaEnArchivoJson` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
