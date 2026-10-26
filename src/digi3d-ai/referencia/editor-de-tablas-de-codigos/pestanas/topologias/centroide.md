# Centroide
<!-- id: centroide -->

Un centroide es un texto dentro de un [polígono topológico](poligonos-topologicos.md).

> Los centroides se utilizan para identificar el tipo de polígono topológico.\
> \
> Por ejemplo: Si la topología representa tipos de terreno de cultivo, el centroide (texto) con el valor "Fr" podría representar frutales y el centroide con el texto "Mb" podría representar un monte bajo.

## Huecos

Puedes [configurar](anadir-topologia.md#centroide-para-huecos) un texto en la topología para identificar los centroides que representan huecos.

Habitualmente se configura como texto de los centroides que representan huecos un asterisco (\*). Si al analizar una topología se localiza un polígono topológico con un centroide cuyo texto es el texto de centroides de huecos, ese polígono topológico no se formará.

## Diccionario de valores

Los centroides pueden tener asociado un diccionario de valores en la [topología](./).

El diccionario de valores contiene una sucesión de pares `clave=valor`. Por ejemplo, puedes asignar al centroide "Fr" el siguiente diccionario:

```
tipo=1
descripción=Frutal
```

y al centroide "Er" el siguiente diccionario de valores:

```
tipo=2
descripción=Erial
```

Este diccionario se puede utilizar para almacenar información en la base de datos a la hora de exportar la topología a un archivo de dibujo mediante la macro de base de datos [%CENTROID_VALUE=\[valor\]%](../base-de-datos/macros-de-base-de-datos.md).

### Ejemplo:

Si exportas la topología a un formato de archivo con una base de datos asociada, puedes asignar el siguiente valor por defecto a un campo de la tabla asociada al código del polígono que se va a generar:

```
%CENTROID_VALUE=descripción%
```

Si el centroide del polígono que exportas es "Fr", el campo de base de datos almacenará el texto "Frutal"; si el centroide del polígono es "Er", el campo almacenará "Erial".
