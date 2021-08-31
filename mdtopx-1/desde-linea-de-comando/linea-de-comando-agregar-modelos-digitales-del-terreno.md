---
description: Agregar modelos digitales del terreno desde línea de comando
---

# Agregar modelos digitales del terreno

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /AGREGA [archivo 1 a agregar] [archivo 2 a agregar] o [archivo n a agregar]
```

El archivo de entrada deberá ser un archivo de modelo digital, el cual se procederá a modificar añadiendo el resto de archivos.

Además de esta secuencia y para configurar el modo de exportación, en el archivo MDTop.INI debería haber una línea obligatoria con el texto **\[Preferencias\]** y a continuación los campos siguientes:

* **ModoSuma**: 0 \(no insertar puntos nuevos\), 1 \(borrar los puntos originales\), 2 \(juntar todos los puntos\), 3 \(insertar puntos nuevos con cota proyectada\), 4 \(calcular cota media en puntos nuevos\), 5 \(calcular cota media en todos los puntos\), 6 \(calcular cota según distancia al MDT en puntos nuevos\) o 7 \(calcular cota según distancia al MDT en todos los puntos\).

```text
[Preferencias]
ModoSuma=7
```

{% hint style="info" %}
Es indiferente que los nombres de los campos están en mayúsculas o en minúsculas
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

