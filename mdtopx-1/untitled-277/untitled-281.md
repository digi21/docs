---
description: Mapa de tintas hipsométricas desde línea de comando
---

# Mapa de tintas hipsométricas

[Mapa de tintas hipsométricas](../como.../untitled-282.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

MDTop \[archivo de entrada\] /HIP \[archivo de salida\]

El archivo de entrada deberá ser un archivo de modelo digital, en el cual se proyectará la rejilla.

El archivo de salida será el nombre con el que se salve el mapa de tintas hipsométricas. El programa salvará en el formato TIF, BMP o JPEG, en función de la extensión del archivo de salida.

Además de esta secuencia y para configurar el modo de generación del sombreado, en el archivo MDTop.INI debería haber una línea obligatoria con el texto \[Hipsometricas\] y a continuación los campos siguientes:

* Size: Tamaño en metros del píxel de la imagen de salida
* Limite: Nombre del archivo con el límite
* CheckLimite: 0 \(sin límite\) o 1 \(con límite\)
* CheckSombreado: color empleado en la iluminación cenital, representado por sus valores en rojo, verde y azul, separados por comas
* Intervalo\[n\]: Secuencia de los intervalos que formarán parte de la gama a utilizar, siendo n un número correlativo empezando por 1. La secuencia será primero la cota en metros y después el color empleado representado por sus valores en rojo, verde y azul, separados por comas

Ejemplo:

> \[Hipsometricas\]  
> Size=1  
> CheckLimite=0  
> CheckSombreado = 0  
> Intervalo1=900,0,255,0  
> Intervalo2=950,255,255,0  
> Intervalo3=1000,255,0,0

Nota: Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)

