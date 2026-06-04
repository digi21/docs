# shp

Indica que el archivo de dibujo a abrir en la ventana de dibujo son los archivos _shapefile_ localizados en el directorio especificado.

## Opciones posicionales obligatorias

| Nombre | Descripción                                       |
| ------ | ------------------------------------------------- |
| ruta   | Directorio donde están los _shapefiles_ a cargar. |

## Opciones&#x20;

Estos valores son opcionales, y si se especifican modifican el valor por defecto que tienen asignados.

| Opción                 | Descripción                                                                                            | Valores aceptados                                                                                                                                                                                |
| ---------------------- | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| --decimales            | Decimales de precisión en la exportación                                                               | <p>0 = no redondear coordenadas al exportar.</p><p>1 = redondear a 1 decimal</p><p>...</p><p></p><p>El valor por defecto si no se especifica es 0.</p>                                           |
| --codificación         | Codificación a utilizar en las cadenas de caracteres en los archivos .DBF para los campos de texto.    | <p>El valor por defecto es 255</p><p></p><p>Se puede ver un listado de codificaciones en <a href="http://shapelib.maptools.org/codepage.html">http://shapelib.maptools.org/codepage.html</a></p> |
| --preguntarCapasCargar | Si se especifica esta opción el programa mostrará un cuadro de diálogo solicitando las capas a cargar. |                                                                                                                                                                                                  |

## Ejemplo

Para abrir todos los archivos _.shp_ ubicados en el directorio c:\trabajo con la tabla de códigos c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml shp c:\trabajo
```
