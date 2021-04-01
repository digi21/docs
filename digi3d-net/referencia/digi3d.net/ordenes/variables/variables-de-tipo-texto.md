# Variables de tipo texto

Son variables que pueden almacenar textos.

## Parámetros

Estas órdenes requieren que les pasemos por parámetro el valor a asignar.

## Ejemplos

La variable de tipo texto [FORMATO\_AUTONUM](../../ventana-de-dibujo/variables/f/formato-autonum.md) permite especificar el texto que se va a almacenar de manera automática al ejecutar la orden TEXTO si se ejecuta sin ningún parámetro pero la variable de tipo numérico AUTONUM tiene asignado un valor.

Si queremos por ejemplo digitalizar automáticamente la secuencia de textos _Hoja 1, Hoja 2, Hoja 3_, etc., ejecutaríamos la siguiente secuencia de comandos

```text
FORMATO_AUTONUM="Hoja %d"
AUTONUM=1
TEXTO
```

