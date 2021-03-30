# Copia de seguridad

Esta categoría permite configurar todos los parámetros relacionados con copias de seguridad del archivo de dibujo.

## Destino de copias de seguridad

Configura el nombre del archivo a generar cada vez que se genere una copia de seguridad.

Este campo admite que introduzcamos [macros](../../macros.md), de manera que podemos hacer que cada copia de seguridad se almacene en un archivo distinto si incorporamos por ejemplo en el nombre de la copia de seguridad algún valor que cambie con el tiempo, como por ejemplo la hora.

Por ejemplo: Si queremos que las copias de seguridad se generen en el mismo directorio que el archivo de dibujo, pero con el nombre **Copia de seguridad de \(nombre del archivo\) con fecha \(fecha actual\) a las \(hora actual\).\(extensión del archivo\)**, introduciremos el siguiente valor en este campo:

```text
$(RutaArchivoDibujo)Copia de seguridad de $(NombreArchivoDibujo) con fecha $(FechaSubrayados) a las $(HoraCompletaSubrayados)$(ExtensionArchivoDibujo)
```

## Generar copia de seguridad cada \(minutos\)

Permite configurar si el programa va a generar automáticamente una copia de seguridad cuando transcurran los minutos indicados en este parámetro.

Si se introduce aquí el valor 0, el programa no generará automáticamente ninguna copia de seguridad.

Si se introduce aquí un valor distinto de 0, cada vez que se almacene una geometría se comprobará si se ha superado el número de minutos indicado en este valor. En caso afirmativo, se realizará una copia de seguridad y se pondrá a 0 el contador de minutos.

Si no se almacena ninguna geometría, no se realizará ninguna copia de seguridad. Éstas se realizan únicamente en el momento de almacenar una geometría. De esta manera si dejamos el programa abierto sin interactuar con él, no nos encontraremos al volver que el programa ha hecho copias de seguridad de más.

## Generar copia de seguridad al salir

Permite indicar al programa si debe hacer una copia de seguridad automáticamente al cerrar la ventana de dibujo.

## Generar copia de seguridad al comprimir

Permite indicar al programa si se debe hacer una copia de seguridad automáticamente al ejecutar la orden [COMPRIMIR](../../ventana-de-dibujo/ordenes/c/comprimir.md), antes de comprimir el archivo de dibujo.

## Destino de copias de seguridad al comprimir

Permite configurar el nombre del archivo a generar en caso de que se realice una copia de seguridad automáticamente al ejecutar la orden _COMPRIMIR_.

Este campo, al igual que el campo [**Destino de copias de seguridad**](copia-de-seguridad.md#destino-de-copias-de-seguridad), admite que se introduzcan [macros](../../macros.md).

