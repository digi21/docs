# Variables de tipo texto

Son variables que pueden almacenar textos.

### Parámetros

Las órdenes de tipo variable de texto requieren que pases como parámetro el texto que se asignará a la variable.

### Ejemplos

La variable de tipo texto [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) permite especificar el texto que se almacenará automáticamente cuando ejecutes la orden TEXTO sin parámetros y la variable numérica AUTONUM tenga asignado un valor distinto de 0.

Ejecuta la siguiente secuencia de órdenes para digitalizar automáticamente, por ejemplo, la secuencia de textos _Hoja 1,  Hoja 2, Hoja 3_, etc.:

```text
FORMATO_AUTONUM="Hoja %d"
AUTONUM=1
TEXTO
```



