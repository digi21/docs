# Destino de copias de seguridad

Configura la ruta y el nombre del archivo que se genera cada vez que se realiza una copia de seguridad.

Este campo admite [macros](../../../macros.md), de manera que puedes hacer que cada copia de seguridad se almacene en un archivo distinto si incorporas en el nombre algún valor que cambie con el tiempo, como la hora.

Por ejemplo, si quieres que las copias de seguridad se generen en el mismo directorio que el archivo de dibujo, con el nombre **Copia de seguridad de (nombre del archivo) con fecha (fecha actual) a las (hora actual).(extensión del archivo)**, introduce este valor:

```
$(RutaArchivoDibujo)Copia de seguridad de $(NombreArchivoDibujo) con fecha $(FechaSubrayados) a las $(HoraCompletaSubrayados)$(ExtensionArchivoDibujo)
```
