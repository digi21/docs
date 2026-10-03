# IMPORTAR\_UNIENDO\_POLIGONOS

Importa uno o varios archivos en el archivo de dibujo y une los polígonos importados que sean colindantes con los del archivo de dibujo y que tengan los mismos códigos y atributos de base de datos.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo a importar. Si no se especifica, la orden muestra el cuadro de diálogo de selección de archivos, que admite seleccionar varios | Sí |

## Observaciones

* Las entidades importadas que no son polígonos se añaden al archivo de dibujo sin cambios.
* Para cada polígono importado, la orden agrupa los polígonos importados y los polígonos del archivo de dibujo que tienen los mismos códigos y atributos. Con cada grupo forma una topología y sustituye los polígonos del grupo por los recintos resultantes, con sus huecos.
* Si seleccionas los archivos en el cuadro de diálogo, la orden usa los parámetros de importación elegidos en él. Si indicas el archivo como parámetro, usa los parámetros de importación guardados para el formato del archivo.

## Características de la orden

| Tipo de orden | [Orden inmediata](importar-uniendo-poligonos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Importar uniendo polígonos... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [IMPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md) |
| Nombre interno | {C0011422-669C-442A-B3D8-0BADCAEFD939} |
