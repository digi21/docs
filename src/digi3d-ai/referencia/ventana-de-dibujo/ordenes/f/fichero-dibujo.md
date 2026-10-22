# FICHERO\_DIBUJO
<!-- id: fichero-dibujo -->

Solicita el nombre de un archivo de dibujo, lo carga y sustituye con él el archivo de dibujo activo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ruta y nombre del archivo de dibujo | Si |

Si no se indica el parámetro, la orden muestra el cuadro de diálogo para seleccionar el archivo.

## Observaciones

El archivo indicado sustituye al archivo de dibujo activo. Si el archivo ya estaba cargado como archivo de referencia, pasa a ser el archivo de dibujo activo. Si no estaba cargado, la orden lo abre. En los dos casos, el archivo que era el activo deja de estar cargado.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMBIA\_FICHEROS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md)<br>[CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md) |
| Nombre interno | {66525905-CDFE-468e-AD45-78C81CA6F861} |

