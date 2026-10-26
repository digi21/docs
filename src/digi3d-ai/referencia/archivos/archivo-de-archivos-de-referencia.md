# Archivo de archivos de referencia
<!-- id: archivo-de-archivos-de-referencia -->

Digi3D.AI guarda junto a cada archivo de dibujo un archivo con la lista de archivos de referencia del dibujo. El nombre del archivo de referencias se forma con el nombre del archivo de dibujo, incluida la extensión, seguido de `.reference_files.json`: por ejemplo, `plano.bin.reference_files.json` para `plano.bin`. Así, `plano.bin` y `plano.dgn` de la misma carpeta tienen cada uno su propio archivo de referencias.

Para cada archivo de referencia, Digi3D.AI guarda:

* La ruta del archivo.
* El importador con el que se cargó.
* Los parámetros de importación, si el importador permite guardarlos.
* Las transformaciones de coordenadas horizontales y verticales que se eligieron al cargarlo.

Así, la próxima vez que se abra el archivo de dibujo, sus archivos de referencia se cargan sin volver a pedir los parámetros de importación ni las transformaciones.

## Cuándo se modifica

* Al cargar un archivo de referencia en un archivo de dibujo que no es de solo lectura, se añade o se actualiza su entrada.
* Al descargar un archivo de referencia con la orden [DEJAR](../ventana-de-dibujo/ordenes/d/dejar.md), al eliminarlo en el cuadro de diálogo [Selección de archivos de referencia](../cuadros-de-dialogo/seleccion-de-archivos-de-referencia.md) o al no localizarlo y optar por quitarlo, se elimina su entrada.
* Cuando se queda sin entradas, se borra el archivo.

Si al abrir el archivo de dibujo este contiene referencias que no están en el archivo `.reference_files.json`, Digi3D.AI las carga pidiendo los parámetros de importación.

Si el archivo de referencias está dañado, Digi3D.AI trata el archivo como vacío y solicita de nuevo los parámetros de importación de los archivos de referencia para cargarlos.

## Formato

Es un archivo JSON con un único elemento `archivos`, que contiene una entrada por archivo de referencia:

```json
{
  "archivos": [
    {
      "ruta": "C:\\Proyecto\\ortofoto.ecw",
      "importador": "{GUID del importador}",
      "parametros": { "nombre": "valor" },
      "transformaciones": [ { "origen": "...", "destino": "...", "codigo": 1 } ],
      "transformacionesVerticales": [ { "origen": "...", "destino": "...", "wkt": "..." } ]
    }
  ]
}
```
