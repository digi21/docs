# Propiedades del código

Esta categoría permite configurar las propiedades de un código.

## Código

Permite configurar el nombre del código.

El nombre del código identifica al código y no puede haber más de un código en una tabla de códigos con el mismo nombre. Este nombre es el que podremos pasar como parámetros en órdenes como [COD](../../../ventana-de-dibujo/ordenes/c/cod.md).

## Descripción

Permite introducir una descripción del código como por ejemplo _Curva de nivel directora._

## Prioridad

Algunas órdenes de Digi3D.NET como [BINTRAM](../../../ventana-de-dibujo/ordenes/b/bintram.md) permiten agrupar geometrías duplicadas en una única geometría con múltiples códigos. Si los códigos tienen asignado en este campo un valor, el programa ordenará los códigos en la geometría generada con múltiples códigos utilizando como criterio este valor de prioridad.

## Etiquetas

Permite configurar etiquetas asociadas al código.

Las etiquetas son una forma de agrupar códigos que sustituyen los antiguos archivos de _tablas de códigos_ \(que eran un archivo de texto que tenía tantas líneas como códigos\).

Un código puede tener:

* Ninguna etiqueta asociada.
* Una o varias etiquetas.

En caso de que un código tenga más de una etiqueta, las separaremos con una coma.

Ejemplo: si queremos asignar a un determinado código las etiquetas _planimetría_, _viales_ y _carreteras_, introduciremos en este campo el siguiente valor:

```text
planimetría, viales, carreteras
```

Ciertas órdenes permiten trabajar con etiquetas. Podemos indicar a estas órdenes que les estamos pasando una etiqueta si ponemos el carácter almohadilla \(\#\) delante de la etiqueta.

Ejemplo: La orden [OFF](../../../ventana-de-dibujo/ordenes/o/off.md) oculta la visualización de las geometrías que tengan el código pasado por parámetro. Esta orden admite que le pasemos en vez de un código, una etiqueta, de manera que, si queremos dejar de visualizar todas las geometrías que tengan la etiqueta "_viales"_, ejecutaremos la siguiente orden:

```text
off=#viales
```







