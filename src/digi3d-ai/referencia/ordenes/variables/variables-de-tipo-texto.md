# Variables de tipo texto
<!-- id: variables-de-tipo-texto -->

Son variables que pueden almacenar textos.

## Parámetros

Pasa el valor como parámetro de la orden para asignar un valor a estas variables.

## Ejemplos

La variable de tipo texto [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) permite especificar el texto que se va a almacenar de manera automática al ejecutar la orden TEXTO sin parámetros, si la variable numérica AUTONUM tiene asignado un valor.

Ejecuta la siguiente secuencia de órdenes para digitalizar automáticamente la secuencia de textos _Hoja 1, Hoja 2, Hoja 3_, etc.:

```text
FORMATO_AUTONUM="Hoja %d"
AUTONUM=1
TEXTO
```

