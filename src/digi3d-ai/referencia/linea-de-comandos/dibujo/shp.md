# shp
<!-- id: shp-2 -->

La suborden shp indica que se abrirán en la ventana de dibujo los archivos _shapefile_ del directorio especificado.

## Opciones posicionales obligatorias

| Nombre | Descripción                                       |
| ------ | ------------------------------------------------- |
| ruta   | Directorio donde están los _shapefiles_ a cargar. |

Con la interfaz en inglés, esta opción posicional se llama `path`.

## Opciones

Si especificas una de estas opciones, el valor que indiques sustituye al valor por defecto de esa opción.

| Opción con la interfaz en español | Opción con la interfaz en inglés | Descripción | Valores aceptados |
| --- | --- | --- | --- |
| --decimales | --decimals | Decimales de precisión en la exportación | 0 = no redondear coordenadas al exportar.<br>1 = redondear a 1 decimal<br>...<br>12 = redondear a 12 decimales (máximo).<br>Un valor fuera del rango de 0 a 12 es un error de la línea de comandos.<br>El valor por defecto si no se especifica es 0. |
| --codificacion | --encoding | Codificación a utilizar en las cadenas de caracteres en los archivos .DBF para los campos de texto. | El valor por defecto es 255.<br>Se puede ver un listado de codificaciones en [http://shapelib.maptools.org/codepage.html](http://shapelib.maptools.org/codepage.html) |
| --preguntarCapasCargar | --askLayers | Si especificas esta opción, el programa mostrará un cuadro de diálogo para que selecciones las capas que se cargarán. | |
| --cargarRegionInteres | --loadROI | Carga la región de interés (función en fase beta). | |

## Ejemplo

Para abrir todos los archivos _.shp_ ubicados en el directorio c:\trabajo con la tabla de códigos c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml shp c:\trabajo
```
