# FICHERO\_DIBUJO

Especifica al sistema el fichero de dibujo con el cual se va a trabajar, entre los archivos de referencia cargados con la orden [CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md).

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ruta y nombre del archivo de dibujo | Si |

Si no se indica el parámetro, la orden muestra el cuadro de diálogo para seleccionar el archivo.

## Observaciones

El archivo indicado sustituye al archivo de dibujo activo. Si el archivo ya estaba cargado como archivo de referencia, pasa a ser el archivo de dibujo activo. Si no estaba cargado, la orden lo abre. En los dos casos, el archivo que era el activo deja de estar cargado.

## Características de la orden

| Tipo de orden | [Orden inmediata](fichero-dibujo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Nuevo/Abrir modelo fotogramétrico o archivo de dibujo.../Selecciona la ruta donde se encuentre el archivo |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMBIA\_FICHEROS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md)<br>[CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md) |
| Nombre interno | {66525905-CDFE-468e-AD45-78C81CA6F861} |

