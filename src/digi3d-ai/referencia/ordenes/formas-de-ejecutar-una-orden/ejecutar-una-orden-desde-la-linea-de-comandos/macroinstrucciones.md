# Macroinstrucciones
<!-- id: macroinstrucciones -->

Las macroinstrucciones son una secuencia de órdenes a las que se les asigna un nombre.

Introduce el nombre de la macroinstrucción en la línea de comandos con un símbolo de arroba \(@\) delante para ejecutar una macroinstrucción.

Por ejemplo, para ejecutar la macroinstrucción **curvas**, introduce la siguiente orden en la [línea de comandos](./) del programa:

```text
@curvas
```

Al analizar la línea de comandos, el programa reconocerá la arroba inicial como indicación de que debe ejecutar una macroinstrucción.

El programa ejecutará todas las órdenes almacenadas en la macroinstrucción una por una.

## Localización de la macroinstrucción

El programa intentará localizar la macroinstrucción siguiendo el siguiente orden:

* En el [listado de macroinstrucciones](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/macroinstrucciones.md) que tenga la tabla de códigos activa.
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio actual de Windows.
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio donde está ubicado el archivo de dibujo.
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio de Macroinstrucciones
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio _c:\digi_
* En un archivo de texto cuyo nombre sea _@\[nombre de la macroinstrucción\]_ en el directorio del programa.

## Comentarios y descripción

En un archivo de macroinstrucciones, las líneas que empiezan por `//` o por `#` son comentarios: no se ejecutan.

Si la primera línea del archivo es un comentario, su texto es la descripción de la macroinstrucción, y se muestra en la columna **Descripción** de la orden [MACROINSTRUCCIONES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/macroinstrucciones.md). Por ejemplo, el archivo _@fina_:

```text
# Activa las curvas de nivel finas
on 020123
```

se muestra en la lista con la descripción «Activa las curvas de nivel finas».

> Si creas un archivo de macroinstrucciones con el bloc de notas, quita la extensión .txt al guardar el archivo. Si conservas la extensión .txt, tendrás que incluirla al ejecutar la macroinstrucción, por ejemplo: @curvas.txt.

