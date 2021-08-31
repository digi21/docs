---
description: Comprobar MDT desde línea de comando
---

# Comprobar MDT

[Comprobar MDT](../como.../como-comprobar-mdt.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /COM
```

El archivo de entrada deberá ser un archivo de modelo digital, del cual se comprobará su altimetría.

Además de esta secuencia y para configurar el modo de comprobación, en el archivo MDTop.INI debería haber una línea obligatoria con el texto **\[Comprobar\]** y a continuación los campos siguientes:

* **CodError**: Código de las marcas de error
* **FicError**: Nombre del archivo de errores generado
* **Equidistancia**: Distancia vertical en metros de las curvas de nivel generadores del modelo digital
* **Size**: Tamaño en metros de la marca de error

```text
[Comprobar]
CodError = ERR
FicError = ERR.bin
Equidistancia = 0.5
Size = 2.5
```

{% hint style="info" %}
Es indiferente que los nombres de los campos están en mayúsculas o en minúsculas
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

