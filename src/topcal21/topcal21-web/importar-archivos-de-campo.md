# Importar archivos de campo
<!-- id: topcal21-web-importar -->

**Archivo › Importar...** lee un archivo de campo (puntos o visuales de una estación total, de un colector o de otro programa) y añade sus registros a un archivo de puntos o de visuales. La orden funciona como **Importar** de [Topcal21 para Windows](../menus-de-la-aplicacion/menu-archivo.md), con estas condiciones:

* El archivo que se importa debe estar en [Mis archivos](mis-archivos.md). Sube el archivo a «Mis archivos» antes de ejecutar «Archivo › Importar...», sin convertirlo.
* La orden está habilitada cuando el documento activo es un archivo de puntos o de visuales y la cuenta no está suspendida.
* El tipo del documento activo decide qué se importa: con un archivo de puntos activo, la web importa puntos; con un archivo de visuales activo, importa visuales.

## Cuadro «Importar archivo»

1. Elige el **Formato del archivo** en la lista. La web no deduce el formato de la extensión del archivo.
2. Elige la **Opción de sobreescritura**, que decide qué hace la importación con un registro del archivo que ya existe en el documento (un punto con el mismo número o una visual con la misma estación y el mismo visado):
    * **No sobrescribir**: la web no modifica el registro existente.
    * **Sobrescribir**: la web sustituye el registro existente por el del archivo.
    * **Añadir**, solo con visuales: la web añade otro registro si el documento admite visuales duplicadas.
3. Con el formato **ASCII**, marca los **Campos incluidos** que contiene cada línea del archivo. Con el formato **GSI de Leica** de puntos, la casilla **Importar también puntos estación** importa las estaciones como puntos.
4. Elige el **Destino de los datos**: el documento activo, o un documento nuevo con el nombre que escribas en la misma carpeta que el documento activo. Con un proyecto abierto, la casilla **Añadir el documento nuevo al proyecto** añade ese documento al proyecto.
5. Pulsa **Elegir archivo...** y elige el archivo en el selector de «Mis archivos». Con los formatos que tienen una extensión propia, el selector muestra solo los archivos con esa extensión; con los formatos «cualquier extensión», muestra todos los archivos.

Al terminar, la web muestra el número de registros importados y el cuadro «Importación completada» con «Registros leídos del archivo» y «Registros nuevos». La importación en un documento existente es un solo paso de **Deshacer**. En un documento nuevo, los registros importados quedan como cambios sin guardar. En ambos casos, guarda el archivo para conservar los datos.

Si la web no puede importar el archivo, muestra un mensaje y no importa ningún registro. Por ejemplo, un archivo SDR vacío o un archivo de TopCal DOS que contiene menos registros de los que declara.

## Formatos de puntos

* Archivos de puntos de TopCal DOS (`.pto`, `.pts`).
* Archivos ASCII (cualquier extensión).
* Archivos GSI de Leica (`.gsi`).
* Archivos de SDR (`.sdr`).
* Archivos de Nikon (`.pol`).
* Archivos ZAS (`.p05`).
* Archivos PTS Leica HDS (`.pts`).

## Formatos de visuales

* Archivos de visuales de TopCal DOS (`.obs`).
* Archivos ASCII, GeoRed, Kern, GeoDat, Topcon, Pentax, Psion, Psion Sokkisa, Psion GeoDat, Psion Tacor y TCP ET (cualquier extensión).
* Archivos GSI de Leica (`.gsi`).
* Archivos de SDR (`.sdr`).
* Archivos de Nikon (`.pol`).
* Archivos ZAS (`.p01`).

La web no importa archivos DIGI (BIN o ASCII), DXF ni DGN, que Topcal21 para Windows sí importa.

## Fundir vuelta de horizonte

Al importar visuales con la opción **Añadir**, la web muestra el cuadro **Fundir vuelta de horizonte** una vez por cada estación que el archivo de visuales ya tiene. El cuadro funciona como en Windows; ver [Fundir vuelta de horizonte](../otros-comandos/fundir-vuelta-de-horizonte.md).
