# DEJAR
<!-- id: dejar -->

Descarga los ficheros de referencia que se encuentren unidos al fichero de trabajo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ruta del archivo de referencia a descargar | Si |

## Observaciones

Si no hay ningún archivo de referencia cargado, la orden muestra un mensaje de error y termina.

Si indicas el parámetro, la orden descarga ese archivo de referencia sin mostrar ningún cuadro de diálogo. Si la ruta contiene espacios, escríbela entre comillas dobles.

Sin parámetro, si solo hay un archivo de referencia cargado, la orden lo descarga directamente. Si hay varios, la orden muestra el cuadro de diálogo **Dejar fichero de referencia**.

## Cuadro de diálogo Dejar fichero de referencia

![Cuadro de diálogo Dejar fichero de referencia](../../../../../images/dejar-fichero-de-referencia.png)

* **Lista de archivos**: los archivos de referencia cargados. Selecciona uno o varios con las teclas Ctrl y Mayúsculas.
* **Todos**: descarga todos los archivos de referencia.
* **Aceptar**: descarga los archivos seleccionados. Sin ningún archivo seleccionado, no hace nada.
* **Cancelar**: cierra el cuadro de diálogo sin descargar ningún archivo.

## Características de la orden

| Tipo de orden | [Orden inmediata](dejar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Descargar archivo de referencia... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md) |
| Nombre interno | {99D6E304-1AE6-4eec-B6E5-D1A438009F11} |

