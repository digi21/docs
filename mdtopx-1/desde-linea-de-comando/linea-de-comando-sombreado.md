---
description: Sombreado desde línea de comando
---

# Sombreado

[Sombreado](../como.../como-sombreado.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /SOM [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, en el cual se proyectará la rejilla.

El archivo de salida será el nombre con el que se salve el sombreado. El programa salvará en el formato TIF, BMP o JPEG, en función de la extensión del archivo de salida.

Además de esta secuencia y para configurar el modo de generación del sombreado, en el archivo MDTop.INI debería haber una línea obligatoria con el texto **\[Sombreado\]** y a continuación los campos siguientes:

* **Size** : Tamaño en metros del píxel de la imagen de salida
* **Tipo** : 0 \(iluminación cenital\), 1 \(iluminación oblicua\) o 2 \(iluminación mixta\)
* **Limite** : Nombre del archivo con el límite
* **CheckLimite** : 0 \(sin límite\) o 1 \(con límite\)
* **ColorCenital** : color empleado en la iluminación cenital, representado por sus valores en rojo, verde y azul, separados por comas
* **ColorOblicuo** : color empleado en la iluminación oblicua, representado por sus valores en rojo, verde y azul, separados por comas

```text
[Sombreado]
Size=1
Tipo=2
CheckLimite=0
ColorCenital=255,0,0
ColorOblicuo=0,0,255
```

{% hint style="info" %}
Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

