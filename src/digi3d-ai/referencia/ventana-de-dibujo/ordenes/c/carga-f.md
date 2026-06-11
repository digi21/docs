# CARGA\_F

Visualiza en pantalla, junto al fichero actual de dibujo, uno o varios ficheros gráficos de referencia.

## Parámetros


| Archivo | Parámetros |
| :--- | :--- |
| Archivo .bin | Precisión; Coordenadas del origen global |
| Archivo ASCII de Kork | No hace falta ningún parámetro |
| Archivo .DGN v8 | Archivo de células; Nº de entidades a saltar; Criterio de códigos; Códigos desconocidos |
| Archivo DXF de AutoCAD | Tabla de traducción; C:\Archivos de programa\Digi21.net\Digi3D2006\Tablas\BINDXF.TAB.XML |


## Observaciones

Los archivos que se pueden cargar pueden ser .bin, .dgn, .dwg, .mdb, xyz ..., dependiendo del tipo de archivo seleccionado vamos a tener unos parámetros u otros.

Los ficheros de referencia se usan en modo lectura, pudiéndose ejecutar sobre ellos cualquier operación de este tipo \(listado de elementos, enganches gráficos,...\). No es posible dibujar nuevas entidades o hacer modificaciones sobre las entidades que pertenecen a estos ficheros, para ello debe ejecutarse la orden [CAMBIA\_FICHEROS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md) para pasar el archivo de referencia a fichero actual de dibujo.

## Características de la orden

| Tipo de orden | [Orden interactiva](carga-f.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Cargar archivo de referencia |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {133C76FE-F098-4dbc-BFDF-71BD5200D71C} |

