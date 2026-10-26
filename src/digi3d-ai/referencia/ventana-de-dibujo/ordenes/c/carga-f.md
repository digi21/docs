# CARGA\_F
<!-- id: carga-f -->

Visualiza en pantalla, junto al fichero actual de dibujo, uno o varios ficheros gráficos de referencia.

## Parámetros


| Archivo | Parámetros |
| :--- | :--- |
| Archivo .bin |Precisión<br>Coordenadas del origen global|
| Archivo ASCII de Kork | No hace falta ningún parámetro |
| Archivo .DGN v8 |Archivo de células<br>Nº de entidades a saltar<br>Criterio de códigos<br>Códigos desconocidos|
| Archivo DXF de AutoCAD |Tabla de traducción<br>C:\Archivos de programa\Digi21.net\Digi3D2006\Tablas\BINDXF.TAB.XML|


## Observaciones

Puedes cargar archivos .bin, .dgn, .dwg, .mdb, xyz, etc. Los parámetros disponibles dependen del tipo de archivo seleccionado.

Los ficheros de referencia se usan en modo lectura. Puedes ejecutar sobre estos ficheros cualquier operación de lectura \(listado de elementos, enganches gráficos, etc.\). Para dibujar nuevas entidades o modificar las entidades de un fichero de referencia, ejecuta la orden [CAMBIA\_FICHEROS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md) para convertir el fichero de referencia en el fichero de dibujo activo.

## Véase también

- [Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — formatos disponibles y los parámetros que admite cada uno.
- [Conectarse a un servidor WMS](/digi3d-ai/procedimientos/conectar-servidor-wms.md) — carga como archivo de referencia las capas de un servidor Web Map Service.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Cargar archivo de referencia... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMBIA\_FICHEROS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md)<br>[DEJAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar.md)<br>[FICHERO\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-dibujo.md)<br>[PARAMETROS\_IMPORTACIÓN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)<br>[RECARGAR\_ARCHIVOS\_REFERENCIA\_VISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recargar-archivos-referencia-vista.md) |
| Nombre interno | {133C76FE-F098-4dbc-BFDF-71BD5200D71C} |

