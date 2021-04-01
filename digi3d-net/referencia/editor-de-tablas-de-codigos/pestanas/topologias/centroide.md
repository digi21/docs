# Centroide

Un centroide es un texto dentro de un [polígono topológico](poligonos-topologicos.md).

> Los centroides se utilizan para identificar el tipo de polígono topológico.  
>   
> Por ejemplo: Si la topología representa tipos de terreno de cultivo, el centroide \(texto\) con el valor "Fr" podría representar frutales y el centroide con el texto "Mb" podría representar un monte bajo.

## Huecos

Se puede [configurar ](anadir-topologia.md#centroide-para-huecos)como un parámetro de la topología un texto que representará a centroides que representarán huecos dentro de la topología.

Habitualmente se configura como texto de los centroides que representan huecos un asterisco \(\*\). Si al analizar una topología se localiza un polígono topológico con un centroide cuyo texto es el texto de centroides de huecos, ese polígono topológico no se formará.

## Diccionario de valores

Los centroides pueden tener asociado un diccionario de valores en la [topología](./).

El diccionario de valores está compuesto por una sucesión de pares `clave=valor` como, por ejemplo, podríamos asignar al centroide "Fr" el siguiente diccionario de valores:

```text
tipo=1
descripción=Frutal
```

y al centroide "Er" el siguiente diccionario de valores:

```text
tipo=2
descripción=Erial
```

Este diccionario se puede utilizar para almacenar información en la base de datos a la hora de exportar la topología a un archivo de dibujo mediante la macro de base de datos [%CENTROID\_VALUE=\[valor\]%](../base-de-datos/macros-de-base-de-datos.md).

### Ejemplo:

Si se está exportando la topología a un formato de archivo que tenga una base de datos asociada, se puede configurar en un determinado campo de la tabla de base de datos asociada con el código del polígono que se va a generar como valor por defecto el valor:

```text
%CENTROID_VALUE=descripción%
```

De esta manera, si el polígono que se está exportando tiene como centroide el centroide "Fr", en este el campo de base de datos se almacenará el texto "Frutal", y si el centroide es "Er" se almacenará "Erial".

