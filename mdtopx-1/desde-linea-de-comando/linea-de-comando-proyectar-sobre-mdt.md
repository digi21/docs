---
description: Proyectar sobre MDT desde línea de comando
---

# Proyectar sobre MDT

[Proyectar sobre MDT](../como.../como-proyeccion-sobre-mdt.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /PRO [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, en el cual se proyectará el archivo.

El archivo de salida será el nombre con el que se salve la proyección. El programa salvará en el formato que indique la extensión: BIN \(DIGI\), DXF \(AutoCad\) o DGN \(MicroStation\).

Además de esta secuencia y para configurar el modo de proyección, en el archivo MDTop.INI debería haber una línea obligatoria con el texto **\[Proyecta\]** y a continuación los campos siguientes:

* **Entrada**: Nombre del archivo de dibujo que se proyectará sobre el modelo digital
* **CodError**: Código de las marcas de error
* **ComprobarCota**: 0 \(no comprobar\) o 1 \(comprobar la diferencia entre la cota original y la proyectada\)
* **ComprobarFuera**: 0 \(no comprobar\) o 1 \(comprobar si se sale alguna entidad de los límites del modelo digital\)
* **SizeErrores**: Tamaño en metros de las marcas de error
* **Errores**: Nombre del archivo con las marcas de error
* **Tolerancia**: Tolerancia en metros para marcar un error
* **Tipo\_Cortes**: 0 \(no usar cortes con triángulos\), 1 \(usar sólo los cortes con líneas de rupturas\) o 2 \(usar todos los cortes con triángulos\)
* **Tipo\_Interpola**: 0 \(interpolar la cota de los puntos con los cortes\) o 1 \(proyectar individualmente\)

```text
[Proyecta]
Entrada = linea.bin
CodError = ERR
ComprobarCota = 1
ComprobarFuera = 1
SizeErrores = 2.5
Errores = ERR.bin
Tolerancia = 1
Tipo_Cortes = 2
Tipo_Interpola = 1
```

{% hint style="info" %}
Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

