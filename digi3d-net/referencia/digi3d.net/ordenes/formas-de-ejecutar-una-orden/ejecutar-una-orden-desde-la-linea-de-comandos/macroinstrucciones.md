# Macroinstrucciones

Las macroinstrucciones son una secuencia de órdenes a las que se les asigna un nombre.

Para ejecutar una macroinstrucción tendremos que introducir en la línea de comandos el nombre de la macroinstrucción con un símbolo de arroba \(@\) delante.

Por ejemplo, para ejecutar la arroba: **curvas** introduciremos el siguiente comando en la [línea de comandos](./) del programa.

```text
@curvas
```

Al analizar la línea de comandos el programa detectará que el comando comienza con el símbolo arroba y automáticamente deducirá que se quiere ejecutar una macroinstrucción.

El programa ejecutará todas las órdenes almacenadas en la macroinstrucción una por una.

## Localización de la macroinstrucción

El programa intentará localizar la macroinstrucción siguiendo el siguiente orden:

* En el [listado de macroinstrucciones](../../../../editor-de-tablas-de-codigos/pestanas/macroinstrucciones.md) que tenga la tabla de códigos activa.
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio actual de Windows.
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio donde está ubicado el archivo de dibujo.
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio de Macroinstrucciones
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio _c:\digi_
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio del programa.

> Si creas un archivo de macroinstrucciones con el bloc de notas, asegúrate después de quitarle la extensión .txt o si no tendrás que ejecutar la macroinstrucción con la extensión como, por ejemplo: @curvas.txt

